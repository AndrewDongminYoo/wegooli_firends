# TextEditingController

```dart
// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui hide TextStyle;

import 'package:characters/characters.dart' show CharacterRange, StringCharacters;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'actions.dart';
import 'autofill.dart';
import 'automatic_keep_alive.dart';
import 'basic.dart';
import 'binding.dart';
import 'constants.dart';
import 'context_menu_button_item.dart';
import 'debug.dart';
import 'default_selection_style.dart';
import 'default_text_editing_shortcuts.dart';
import 'focus_manager.dart';
import 'focus_scope.dart';
import 'focus_traversal.dart';
import 'framework.dart';
import 'localizations.dart';
import 'magnifier.dart';
import 'media_query.dart';
import 'scroll_configuration.dart';
import 'scroll_controller.dart';
import 'scroll_physics.dart';
import 'scroll_position.dart';
import 'scrollable.dart';
import 'scrollable_helpers.dart';
import 'shortcuts.dart';
import 'spell_check.dart';
import 'tap_region.dart';
import 'text.dart';
import 'text_editing_intents.dart';
import 'text_selection.dart';
import 'text_selection_toolbar_anchors.dart';
import 'ticker_provider.dart';
import 'undo_history.dart';
import 'view.dart';
import 'widget_span.dart';

export 'package:flutter/services.dart' show KeyboardInsertedContent, SelectionChangedCause, SmartDashesType, SmartQuotesType, TextEditingValue, TextInputType, TextSelection;

// Examples can assume:
// late BuildContext context;
// late WidgetTester tester;

/// 사용자가 선택 항목(커서 위치 포함)을 변경할 때 이를 보고하는 콜백에 대한 서명입니다.
typedef SelectionChangedCallback = void Function(TextSelection selection, SelectionChangedCause? cause);

/// 앱 비공개 명령 결과를 보고하는 콜백에 대한 서명입니다.
typedef AppPrivateCommandCallback = void Function(String, Map<String, dynamic>);

/// 지정된 [EditableTextState]에 대한 컨텍스트 메뉴를 빌드하는 위젯 빌더의 서명입니다.
///
/// 참조:
///
///  * [SelectableRegion]에 대해 동일한 역할을 수행하는 [SelectableRegionContextMenuBuilder] 참조.
typedef EditableTextContextMenuBuilder = Widget Function(
  BuildContext context,
  EditableTextState editableTextState,
);

// Signature for a function that determines the target location of the given
// [TextPosition] after applying the given [TextBoundary].
typedef _ApplyTextBoundary = TextPosition Function(TextPosition, bool, TextBoundary);

// The time it takes for the cursor to fade from fully opaque to fully
// transparent and vice versa. A full cursor blink, from transparent to opaque
// to transparent, is twice this duration.
const Duration _kCursorBlinkHalfPeriod = Duration(milliseconds: 500);

// Number of cursor ticks during which the most recently entered character
// is shown in an obscured text field.
const int _kObscureShowLatestCharCursorTicks = 3;

/// allowedMimeTypes가 제공되지 않을 때 사용할 기본 마임 유형입니다.
///
/// 기본값은 지원되는 모든 형식의 이미지 삽입을 지원합니다.
const List<String> kDefaultContentInsertionMimeTypes = <String>[
  'image/png',
  'image/bmp',
  'image/jpg',
  'image/tiff',
  'image/gif',
  'image/jpeg',
  'image/webp'
];

class _CompositionCallback extends SingleChildRenderObjectWidget {
  const _CompositionCallback({ required this.compositeCallback, required this.enabled, super.child });
  final CompositionCallback compositeCallback;
  final bool enabled;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderCompositionCallback(compositeCallback, enabled);
  }
  @override
  void updateRenderObject(BuildContext context, _RenderCompositionCallback renderObject) {
    super.updateRenderObject(context, renderObject);
    // _EditableTextState always uses the same callback.
    assert(renderObject.compositeCallback == compositeCallback);
    renderObject.enabled = enabled;
  }
}

class _RenderCompositionCallback extends RenderProxyBox {
  _RenderCompositionCallback(this.compositeCallback, this._enabled);

  final CompositionCallback compositeCallback;
  VoidCallback? _cancelCallback;

  bool get enabled => _enabled;
  bool _enabled = false;
  set enabled(bool newValue) {
    _enabled = newValue;
    if (!newValue) {
      _cancelCallback?.call();
      _cancelCallback = null;
    } else if (_cancelCallback == null) {
      markNeedsPaint();
    }
  }

  @override
  void paint(PaintingContext context, ui.Offset offset) {
    if (enabled) {
      _cancelCallback ??= context.addCompositionCallback(compositeCallback);
    }
    super.paint(context, offset);
  }
}

/// 편집 가능한 텍스트 필드를 위한 컨트롤러입니다.
///
/// 사용자가 연결된 [TextEditingController]를 사용하여 텍스트 필드를 수정할 때마다 텍스트 필드가 [value]을 업데이트하고 컨트롤러가 리스너에 알립니다. 그러면 리스너는 [text] 및 [selection] 속성을 읽어 사용자가 입력한 내용을 파악할 수 있습니다.
/// 속성을 읽어 사용자가 입력한 내용이나 선택 항목이 어떻게 업데이트되었는지 확인할 수 있습니다.
///
/// 마찬가지로, [text] 또는 [selection] 속성을 수정하면 텍스트 필드에 알림이 전송되고 적절하게 업데이트됩니다.
///
/// [TextEditingController]를 사용하여 텍스트 필드의 초기 값을 제공할 수도 있습니다. 이미 [text]가 있는 컨트롤러로 텍스트 필드를 작성하면 텍스트 필드는 해당 텍스트를 초기 값으로 사용합니다.
///
/// 이 컨트롤러의 [value](및 [text] 및 [selection])은 이 컨트롤러에 추가된 리스너 내에서 업데이트할 수 있습니다. 리스너 내부에서도 변경 사항을 알 수 있으므로 무한 루프에 주의하세요. 리스너 내에서 작성 영역을 수정하면 일부 입력 메서드와 잘못된 상호 작용이 발생할 수도 있습니다. 예를 들어 Gboard는 텍스트가 프로그래밍 방식으로 수정된 경우 텍스트의 작성 영역을 복원하려고 시도하여 프레임워크와 입력 메서드 간에 무한한 통신 루프를 생성합니다. 입력하는 대로 텍스트를 수정하려면 대신 [TextInputFormatter]를 사용하는 것이 좋습니다.
///
/// [text] 또는 [selection] 속성을 모두 변경해야 하는 경우 컨트롤러의 [value]을 대신 설정하세요.
///
/// 더 이상 필요하지 않은 경우 [TextEditingController]를 [폐기]하는 것을 잊지 마세요. 이렇게 하면 객체가 사용하는 모든 리소스를 폐기할 수 있습니다.
/// {도구 다트패드}
/// 이 예는 입력된 텍스트를 소문자로 강제 변경하고 커서를 입력 끝에 유지하는 변경 리스너가 있는 [TextEditingController]가 있는 [TextField]를 만듭니다.
///
/// ** 예제 코드 참조: examples/api/lib/widgets/editable_text/text_editing_controller.0.dart **
/// {@end-tool}
///
/// 참조:
///
///  * [TextEditingController]로 제어할 수 있는 머티리얼 디자인 텍스트 필드인 [TextField].
///  * [EditableText]: [TextEditingController]로 제어할 수 있는 편집 가능한 텍스트의 원시 영역입니다.
///  * 쿡북 레시피](https://flutter.dev/docs/cookbook/forms/text-field-changes#2-use-a-texteditingcontroller)에서 [TextEditingController] 사용법을 알아보세요.
class TextEditingController extends ValueNotifier<TextEditingValue> {
  /// 편집 가능한 텍스트 필드에 대한 컨트롤러를 생성합니다.
  ///
  /// 이 생성자는 널 [text] 인수를 빈 문자열인 것처럼 처리합니다.
  TextEditingController({ String? text })
    : super(text == null ? TextEditingValue.empty : TextEditingValue(text: text));

  /// 초기 [TextEditingValue]로부터 편집 가능한 텍스트 필드에 대한 컨트롤러를 생성합니다.
  ///
  /// 이 생성자는 널 [value] 인수를 마치 [TextEditingValue.empty]인 것처럼 취급합니다.
  TextEditingController.fromValue(TextEditingValue? value)
    : assert(
        value == null || !value.composing.isValid || value.isComposingRangeValid,
        'New TextEditingValue $value has an invalid non-empty composing range '
        '${value.composing}. It is recommended to use a valid composing range, '
        'even for readonly text fields',
      ),
      super(value ?? TextEditingValue.empty);

  /// 사용자가 편집 중인 현재 문자열입니다.
  String get text => value.text;
  /// 이 값을 설정하면 이 [TextEditingController]의 모든 리스너에게 업데이트가 필요하다는 것을 알립니다([notifyListeners] 호출). 이런 이유로
  /// 이 값은 빌드, 레이아웃 또는 페인트 단계가 아닌 사용자 동작에 대한 응답과 같이 프레임 사이에만 설정해야 합니다.
  ///
  /// 이 속성은 이 [TextEditingController]에 추가된 리스너에서 설정할 수 있지만, 별도의 문에서 [selection]([selection])
  /// 도 설정해서는 안 됩니다. [text]와 [selection]을 모두 변경하려면 다음과 같이 하세요.
  /// 컨트롤러의 [value]을 변경합니다.
  set text(String newText) {
    value = value.copyWith(
      text: newText,
      selection: const TextSelection.collapsed(offset: -1),
      composing: TextRange.empty,
    );
  }

  @override
  set value(TextEditingValue newValue) {
    assert(
      !newValue.composing.isValid || newValue.isComposingRangeValid,
      'New TextEditingValue $newValue has an invalid non-empty composing range '
      '${newValue.composing}. It is recommended to use a valid composing range, '
      'even for readonly text fields',
    );
    super.value = newValue;
  }

  /// 현재 편집 값에서 [TextSpan]을 작성합니다.
  ///
  /// 기본적으로 작성 범위의 텍스트는 밑줄로 표시됩니다. 자손은 이 메서드를 재정의하여 텍스트의 모양을 사용자 지정할 수 있습니다.
  TextSpan buildTextSpan({required BuildContext context, TextStyle? style , required bool withComposing}) {
    assert(!value.composing.isValid || !withComposing || value.isComposingRangeValid);
    // If the composing range is out of range for the current text, ignore it to
    // preserve the tree integrity, otherwise in release mode a RangeError will
    // be thrown and this EditableText will be built with a broken subtree.
    final bool composingRegionOutOfRange = !value.isComposingRangeValid || !withComposing;

    if (composingRegionOutOfRange) {
      return TextSpan(style: style, text: text);
    }

    final TextStyle composingStyle = style?.merge(const TextStyle(decoration: TextDecoration.underline))
        ?? const TextStyle(decoration: TextDecoration.underline);
    return TextSpan(
      style: style,
      children: <TextSpan>[
        TextSpan(text: value.composing.textBefore(value.text)),
        TextSpan(
          style: composingStyle,
          text: value.composing.textInside(value.text),
        ),
        TextSpan(text: value.composing.textAfter(value.text)),
      ],
    );
  }

  /// 현재 선택된 [text]입니다.
  ///
  /// 선택 영역이 축소된 경우 이 속성은 텍스트 내에서 커서의 오프셋을 제공합니다.
  TextSelection get selection => value.selection;
  /// 이 프로퍼티를 설정하면 이 [TextEditingController]의 모든 리스너에게
  /// 의 모든 리스너에게 업데이트가 필요하다는 것을 알립니다([notifyListeners] 호출). 이런 이유로
  /// 이 값은 빌드, 레이아웃 또는 페인트 단계가 아닌 사용자 동작에 대한 응답과 같이 프레임 사이에만 설정해야 합니다.
  ///
  /// 이 속성은 이 [TextEditingController]에 추가된 리스너에서 설정할 수 있지만, 별도의 문에 [text]([text])도 설정해서는 안 됩니다.
  /// 도 설정해서는 안 됩니다. [text]와 [selection]을 모두 변경하려면 다음과 같이 하세요.
  /// 컨트롤러의 [value]을 변경합니다.
  ///
  /// 새 선택 영역의 길이가 0이 아니거나 작성 범위를 벗어나는 경우 작성 범위가 지워집니다.
  set selection(TextSelection newSelection) {
    if (!isSelectionWithinTextBounds(newSelection)) {
      throw FlutterError('invalid text selection: $newSelection');
    }
    final TextRange newComposing =
        newSelection.isCollapsed && _isSelectionWithinComposingRange(newSelection)
            ? value.composing
            : TextRange.empty;
    value = value.copyWith(selection: newSelection, composing: newComposing);
  }

  /// [value]을 비워 두십시오.
  ///
  /// 이 함수를 호출하면 [text]가 빈 문자열이 되고 선택 영역이 0 오프셋으로 접힙니다.
  ///
  /// 이 함수를 호출하면 이 [TextEditingController]의 모든 리스너에게 업데이트가 필요하다는 것을 알립니다([notifyListeners] 호출). 이런 이유로
  /// 이 메서드는 빌드, 레이아웃 또는 페인트 단계가 아닌 사용자 동작에 대한 응답과 같이 프레임 사이에만 호출해야 합니다.
  void clear() {
    value = const TextEditingValue(selection: TextSelection.collapsed(offset: 0));
  }

  /// 작성 영역을 빈 범위로 설정합니다.
  ///
  /// 작성 영역은 아직 작성 중인 텍스트의 범위입니다.
  /// 이 함수를 호출하면 사용자가 해당 영역의 작성이 완료되었음을 나타냅니다.
  ///
  /// 이 함수를 호출하면 이 [TextEditingController]의 모든 리스너에게 업데이트가 필요하다는 것을 알립니다([notifyListeners] 호출). 이런 이유로
  /// 이 메서드는 빌드, 레이아웃 또는 페인트 단계가 아닌 사용자 동작에 대한 응답과 같이 프레임 사이에만 호출해야 합니다.
  void clearComposing() {
    value = value.copyWith(composing: TextRange.empty);
  }

  /// [선택 영역]이 [text] 범위 안에 있는지 확인합니다.
  bool isSelectionWithinTextBounds(TextSelection selection) {
    return selection.start <= text.length && selection.end <= text.length;
  }

  /// [선택 영역]이 작성 범위 내에 있는지 확인합니다.
  bool _isSelectionWithinComposingRange(TextSelection selection) {
    return selection.start >= value.composing.start && selection.end <= value.composing.end;
  }
}

/// [편집 가능한 텍스트]에 대한 도구 모음 구성.
///
/// 도구 모음은 사용자가 [편집 가능한 텍스트]를 마우스 오른쪽 버튼으로 클릭하거나 길게 누르면 표시되는 컨텍스트 메뉴입니다. 여기에는 잘라내기, 복사, 붙여넣기, 모두 선택 등 여러 옵션이 포함됩니다,
/// 및 모두 선택.
///
/// [편집 가능한 텍스트] 및 파생 위젯에는 자체 기본 [도구 모음 옵션]이 있습니다.
/// 도구 모음 옵션을 명시적으로 제어하려면 사용자 지정 [도구 모음 옵션]을 만듭니다.
@Deprecated(
  'Use `contextMenuBuilder` instead. '
  'This feature was deprecated after v3.3.0-0.5.pre.',
)
class ToolbarOptions {
  /// 지정된 옵션으로 도구 모음 구성을 만듭니다.
  ///
  /// 모든 옵션은 명시적으로 설정되지 않으면 기본값이 거짓으로 설정됩니다.
  @Deprecated(
    'Use `contextMenuBuilder` instead. '
    'This feature was deprecated after v3.3.0-0.5.pre.',
  )
  const ToolbarOptions({
    this.copy = false,
    this.cut = false,
    this.paste = false,
    this.selectAll = false,
  });

  /// 옵션이 활성화되지 않은 [ToolbarOptions]의 인스턴스입니다.
  static const ToolbarOptions empty = ToolbarOptions();

  /// 도구 모음에 복사 옵션을 표시할지 여부입니다.
  ///
  /// 기본값은 거짓입니다. null이 아니어야 합니다.
  final bool copy;

  /// 도구 모음에 잘라내기 옵션을 표시할지 여부입니다.
  ///
  /// [EditableText.readOnly]가 true로 설정되어 있으면 잘라내기가 비활성화됩니다.
  ///
  /// 기본값은 거짓입니다. null이 아니어야 합니다.
  final bool cut;

  /// 도구 모음에 붙여넣기 옵션을 표시할지 여부입니다.
  ///
  /// [EditableText.readOnly]가 true로 설정되어 있으면 붙여넣기가 비활성화됩니다.
  ///
  /// 기본값은 거짓입니다. null이 아니어야 합니다.
  final bool paste;

  /// 도구 모음에 모두 선택 옵션을 표시할지 여부입니다.
  ///
  /// 기본값은 false입니다. null이 아니어야 합니다.
  final bool selectAll;
}

/// 소프트 키보드를 통해 미디어 콘텐츠를 삽입하는 기능을 구성합니다.
///
/// 이 구성은 시스템 입력 방법을 통해 삽입된 모든 리치 콘텐츠에 대한 핸들러를 제공하며, 삽입된 콘텐츠의 마임 유형을 제한하는 기능도 제공합니다.
///
/// 참고 항목
///
/// * [EditableText.contentInsertionConfiguration]
class ContentInsertionConfiguration {
  /// 지정된 옵션으로 콘텐츠 삽입 구성을 생성합니다.
  ///
  /// 삽입된 콘텐츠에 대한 핸들러는 [onContentInserted] 형식으로 제공되어야 합니다.
  ///
  /// 삽입된 콘텐츠의 허용되는 마임 유형은 [allowedMimeTypes]를 통해 제공될 수도 있으며, 이 경우 빈 목록일 수 없습니다.
  ContentInsertionConfiguration({
    required this.onContentInserted,
    this.allowedMimeTypes = kDefaultContentInsertionMimeTypes,
  }) : assert(allowedMimeTypes.isNotEmpty);

  /// 사용자가 가상/온스크린 키보드를 통해 콘텐츠를 삽입할 때 호출됩니다,
  /// 현재 안드로이드에서만 사용됩니다.
  ///
  /// [키보드 삽입 콘텐츠]는 삽입된 콘텐츠를 나타내는 데이터를 보유합니다.
  ///
  /// {@tool 다트패드}
  ///
  /// 이 예제는 `TextField`에 삽입된 콘텐츠의 데이터에 접근하는 방법을 보여줍니다.
  ///
  /// ** 예제 코드 참조: examples/api/lib/widgets/editable_text/editable_text.on_content_inserted.0.dart **
  /// {@end-tool}
  ///
  /// 참조하세요:
  ///
  ///  * <https://developer.android.com/guide/topics/text/image-keyboard>
  final ValueChanged<KeyboardInsertedContent> onContentInserted;

  /// {@template flutter.widgets.contentInsertionConfiguration.allowedMimeTypes}
  /// 사용자가 디바이스 키보드를 통해 이미지 기반 콘텐츠를 삽입할 때 사용됩니다,
  /// 현재 안드로이드에서만 사용됩니다.
  ///
  /// 전달된 문자열 목록에 따라 디바이스 키보드를 통해 삽입할 수 있는 MIME 유형이 결정됩니다.
  ///
  /// 기본 밈 유형은 [kDefaultContentInsertionMimeTypes]에 의해 제공됩니다.
  /// 이는 키보드로 처리하고 삽입할 수 있는 모든 마임 유형입니다.
  ///
  /// 이 필드는 빈 목록일 수 없습니다.
  ///
  /// {@도구 다트패드}
  /// 이 예는 이미지 삽입을 특정 파일 유형으로 제한하는 방법을 보여줍니다.
  ///
  /// ** examples/api/lib/widgets/editable_text/editable_text.on_content_inserted.0.dart의 코드를 참조하세요 **.
  /// {@end-tool}
  ///
  /// 참조하세요:
  ///
  ///  * <https://developer.android.com/guide/topics/text/image-keyboard>
  /// {@endtemplate}
  final List<String> allowedMimeTypes;
}

// A time-value pair that represents a key frame in an animation.
class _KeyFrame {
  const _KeyFrame(this.time, this.value);
  // Values extracted from iOS 15.4 UIKit.
  static const List<_KeyFrame> iOSBlinkingCaretKeyFrames = <_KeyFrame>[
    _KeyFrame(0,       1),     // 0
    _KeyFrame(0.5,     1),     // 1
    _KeyFrame(0.5375,  0.75),  // 2
    _KeyFrame(0.575,   0.5),   // 3
    _KeyFrame(0.6125,  0.25),  // 4
    _KeyFrame(0.65,    0),     // 5
    _KeyFrame(0.85,    0),     // 6
    _KeyFrame(0.8875,  0.25),  // 7
    _KeyFrame(0.925,   0.5),   // 8
    _KeyFrame(0.9625,  0.75),  // 9
    _KeyFrame(1,       1),     // 10
  ];

  // The timing, in seconds, of the specified animation `value`.
  final double time;
  final double value;
}

class _DiscreteKeyFrameSimulation extends Simulation {
  _DiscreteKeyFrameSimulation.iOSBlinkingCaret() : this._(_KeyFrame.iOSBlinkingCaretKeyFrames, 1);
  _DiscreteKeyFrameSimulation._(this._keyFrames, this.maxDuration)
    : assert(_keyFrames.isNotEmpty),
      assert(_keyFrames.last.time <= maxDuration),
      assert(() {
        for (int i = 0; i < _keyFrames.length -1; i += 1) {
          if (_keyFrames[i].time > _keyFrames[i + 1].time) {
            return false;
          }
        }
        return true;
      }(), 'The key frame sequence must be sorted by time.');

  final double maxDuration;

  final List<_KeyFrame> _keyFrames;

  @override
  double dx(double time) => 0;

  @override
  bool isDone(double time) => time >= maxDuration;

  // The index of the KeyFrame corresponds to the most recent input `time`.
  int _lastKeyFrameIndex = 0;

  @override
  double x(double time) {
    final int length = _keyFrames.length;

    // Perform a linear search in the sorted key frame list, starting from the
    // last key frame found, since the input `time` usually monotonically
    // increases by a small amount.
    int searchIndex;
    final int endIndex;
    if (_keyFrames[_lastKeyFrameIndex].time > time) {
      // The simulation may have restarted. Search within the index range
      // [0, _lastKeyFrameIndex).
      searchIndex = 0;
      endIndex = _lastKeyFrameIndex;
    } else {
      searchIndex = _lastKeyFrameIndex;
      endIndex = length;
    }

    // Find the target key frame. Don't have to check (endIndex - 1): if
    // (endIndex - 2) doesn't work we'll have to pick (endIndex - 1) anyways.
    while (searchIndex < endIndex - 1) {
      assert(_keyFrames[searchIndex].time <= time);
      final _KeyFrame next = _keyFrames[searchIndex + 1];
      if (time < next.time) {
        break;
      }
      searchIndex += 1;
    }

    _lastKeyFrameIndex = searchIndex;
    return _keyFrames[_lastKeyFrameIndex].value;
  }
}

/// 기본 텍스트 입력 필드입니다.
///
/// 이 위젯은 [TextInput] 서비스와 상호 작용하여 사용자가 포함된 텍스트를 편집할 수 있도록 합니다. 또한 스크롤, 선택 및 커서 이동도 제공합니다. 이 위젯은 포커스 관리 기능을 제공하지 않습니다(예:
/// 탭하여 초점 맞추기) 기능을 제공하지 않습니다.
///
/// ## 사용자 입력 처리
///
/// 현재 사용자는 키보드 또는 텍스트 선택 메뉴를 통해 이 위젯에 포함된 텍스트를 변경할 수 있습니다. 사용자가 텍스트를 삽입하거나 삭제하면 변경 알림이 표시되고 새 텍스트 값을 수정할 수 있는 기회가 주어집니다:
///
/// * 입력 포맷터]가 먼저 사용자 입력에 적용됩니다.
///
/// * 컨트롤러]의 [TextEditingController.value]가 형식이 지정된 결과로 업데이트되고 [컨트롤러]의 리스너에게 알림이 전송됩니다.
///
/// * 지정한 경우 [onChanged] 콜백이 마지막으로 호출됩니다.
///
/// 입력 액션 ##
///
/// 안드로이드 및 iOS용 소프트 키보드의 액션 버튼 모양을 커스터마이징하기 위해 [TextInputAction]을 제공할 수 있습니다. 기본 동작은 [TextInputAction.done]입니다.
///
/// 많은 [TextInputAction]이 안드로이드와 iOS에서 공통적으로 사용됩니다. 그러나 디버그 모드에서 현재 플랫폼에서 지원되지 않는 [textInputAction]이 제공되면 해당 플랫폼의
/// EditableText가 포커스를 받을 때 오류가 발생합니다. 예를 들어 안드로이드 기기에서 실행할 때 iOS의 "emergencyCall"
/// 액션을 제공하면 디버그 모드에서 오류가 발생합니다. 릴리스 모드에서 호환되지 않는 [TextInputAction]은 Android에서는 "지정되지 않음"으로, iOS에서는 "기본값"으로 대체됩니다. 현재 플랫폼을 확인한 다음 적절한 액션을 선택하면 적절한 [textInputAction]을 선택할 수 있습니다.
///
/// {@template flutter.widgets.EditableText.lifeCycle}
/// ## 라이프사이클
///
/// 편집이 완료되면 키보드의 "완료" 버튼을 누르는 것과 같이,
/// 두 가지 작업이 수행됩니다:
///
///   첫째: 편집이 완료됩니다. 이 단계의 기본 동작에는 [onChanged] 호출이 포함됩니다. 이 기본 동작은 재정의할 수 있습니다.
///   자세한 내용은 [onEditingComplete]를 참조하세요.
///
///   2차: 사용자의 입력 값으로 [onSubmitted]가 호출됩니다.
///
/// 사용자가 현재 초점이 맞춰진 입력 위젯을 완료하면 [onSubmitted]를 사용하여 수동으로 다른 입력 위젯으로 포커스를 이동할 수 있습니다.
///
/// 위젯에 포커스가 있으면 선택 항목이 손실되지 않도록 [AutomaticKeepAliveClientMixin.wantKeepAlive]를 통해 위젯이 스스로 처분되지 않도록 합니다. 포커스를 제거하면 위젯이 폐기될 수 있습니다.
/// {@endtemplate}
///
/// 이 위젯을 직접 사용하는 대신 플레이스홀더 텍스트가 있는 전체 기능의 머티리얼 디자인 텍스트 입력 필드인 [TextField]를 사용하는 것이 좋습니다,
/// 레이블 및 [양식] 통합 기능이 있는 [텍스트 필드]를 사용하는 것이 좋습니다.
///
/// 텍스트 편집 [인텐트] 및 기본 [액션] ##
///
/// 이 위젯은 텍스트 필드에서 삭제, 복사 및 붙여넣기와 같은 일반적인 텍스트 편집 [인텐트]를 처리하기 위한 기본 [액션]을 제공합니다. 이러한 [액션]은 [Actions.invoke] 또는 [Actions.maybeInvoke] 메서드를 사용하여 직접 호출할 수 있습니다. 기본 텍스트 편집 키보드 [바로가기]
/// 또한 이러한 [Intent]와 [Action]을 사용하여 바인딩된 텍스트 편집 작업을 수행합니다.
///
/// 이 위젯 위에 [액션] 위젯을 배치하여 특정 [인텐트]의 기본 처리를 재정의할 수 있습니다. 미리 정의된 재정의 가능한 [Action]을 재정의하는 방법에 대한 자세한 내용은 [Action] 클래스 및 [Action.overridable] 생성자를 참조하세요.
///
/// 텍스트 삭제 인텐트 및 기본 동작 ###
///
/// | **인텐트 클래스** | **선택된 텍스트가 있을 때의 기본 동작** | **[캐럿](https://en.wikipedia.org/wiki/Caret_navigation)이 있을 때의 기본 동작 (선택 항목은 [TextSelection.collapsed])** |
/// | :------------------------------- | :--------------------------------------------------- | :----------------------------------------------------------------------- |
/// | [DeleteCharacterIntent] | 선택된 텍스트를 삭제합니다 | 캐럿 위치 앞 또는 뒤에 사용자가 인식한 문자를 삭제합니다. |
/// | [DeleteToNextWordBoundaryIntent] | 선택된 텍스트와 선택 영역의 [TextSelection.extent] 위치 앞/뒤의 단어를 삭제합니다 | 캐럿 위치에서 이전 또는 다음 단어 경계까지 삭제합니다 |
/// | [DeleteToLineBreakIntent] | 선택된 텍스트를 삭제하고 선택 영역의 [TextSelection.extent] 위치에서 줄의 시작/끝으로 삭제합니다 | 캐럿 위치에서 현재 줄의 논리적 시작 또는 끝으로 삭제합니다.
///
/// ### [캐럿] 이동 인텐트(https://en.wikipedia.org/wiki/Caret_navigation)
///
/// | **인텐트 클래스** | **선택된 텍스트가 있을 때의 기본 동작** | **캐럿([TextSelection.collapsed])이 있을 때의 기본 동작 ** |
/// | :----------------------------------------------------------------------------------- | :--------------------------------------------------------------- | :---------------------------------------------------------------------- |
/// | [ExtendSelectionByCharacterIntent](`collapseSelection: true`) | 선택 영역을 선택 영역의 논리적 시작/끝으로 축소합니다 | 캐럿을 현재 캐럿 위치 앞뒤로 사용자가 인식한 문자를 지나서 이동합니다. |
/// | [ExtendSelectionToNextWordBoundaryIntent](`collapseSelection: true`) | 선택 영역의 [TextSelection.extent] 위치 앞/뒤의 단어 경계로 선택 영역을 축소합니다 | 캐럿을 이전/다음 단어 경계로 이동합니다. |
/// | [ExtendSelectionToNextWordBoundaryOrCaretLocationIntent](`collapseSelection: true`) | 선택 영역의 [TextSelection.extent] 위치 앞/뒤의 단어 경계 또는 지정된 방향에서 가장 가까운 [TextSelection.base] 위치로 선택 영역을 축소합니다 | 캐럿을 이전/다음 단어 경계로 이동합니다. |
/// | [ExtendSelectionToLineBreakIntent](`collapseSelection: true`) | 선택 영역의 [TextSelection.extent] 위치에서 줄의 시작/끝으로 선택 영역을 축소합니다 | 캐럿을 현재 줄의 시작/끝으로 이동합니다 .|
/// | [ExtendSelectionVerticallyToAdjacentLineIntent](`collapseSelection: true`) | 선택 영역을 이전/다음 인접 줄에서 선택 영역의 [TextSelection.extent]에 가장 가까운 위치로 축소합니다 | 캐럿을 이전/다음 인접 줄에서 가장 가까운 위치로 이동합니다. |
/// | [ExtendSelectionVerticallyToAdjacentPageIntent](`collapseSelection: true`) | 선택 영역을 이전/다음 인접 페이지에서 선택 영역의 [TextSelection.extent]에 가장 가까운 위치로 축소 | 캐럿을 이전/다음 인접 페이지에서 가장 가까운 위치로 이동합니다. |
/// | [ExtendSelectionToDocumentBoundaryIntent](`collapseSelection: true`) | 선택 영역을 문서의 시작/끝으로 축소 | 캐럿을 문서의 시작/끝으로 이동합니다. |
///
/// #### 선택 영역 확장을 위한 인텐트
///
/// | **인텐트 클래스** | **선택된 텍스트가 있을 때의 기본 동작** | **캐럿이 있을 때의 기본 동작 ([TextSelection.collapsed])** |
/// | :----------------------------------------------------------------------------------- | :--------------------------------------------------------------- | :---------------------------------------------------------------------- |
/// | [ExtendSectionByCharacterIntent](`collapseSelection: false`) | 사용자가 인식한 문자 앞/뒤로 선택 영역의 [TextSelection.extent]를 이동합니다 |
/// | [ExtendSelectionToNextWordBoundaryIntent](`collapseSelection: false`) | 선택 영역의 [TextSelection.extent]를 이전/다음 단어 경계로 이동 |
/// | [ExtendSelectionToNextWordBoundaryOrCaretLocationIntent](`collapseSelection: false`) | 선택 영역의 [TextSection.extent]를 이전/다음 단어 경계 또는 주어진 방향에서 가장 가까운 [TextSection.base]로 이동합니다 | 선택 영역의 [TextSection.extent]를 이전/다음 단어 경계로 이동합니다. |
/// | [ExtendSelectionToLineBreakIntent](`collapseSelection: false`) | 선택 영역의 [TextSelection.extent]를 줄의 시작/끝으로 이동합니다.
/// | [ExtendSectionVerticallyToAdjacentLineIntent](`collapseSelection: false`) | 선택 영역의 [TextSelection.extent]를 이전/다음 인접한 줄에서 가장 가까운 위치로 이동합니다.
/// | [ExtendSelectionVerticallyToAdjacentPageIntent](`collapseSelection: false`) | 선택 영역의 [TextSelection.extent]를 이전/다음 인접한 페이지에서 가장 가까운 위치로 이동합니다.
/// | [ExtendSelectionToDocumentBoundaryIntent](`collapseSelection: false`) | 선택 영역의 [TextSelection.extent]를 문서의 시작/끝으로 이동 |
/// | [SelectAllTextIntent] | 전체 문서를 선택합니다 |
///
/// ### 기타 인텐트
///
/// **인텐트 클래스** | **기본 동작** |
/// | :-------------------------------------- | :--------------------------------------------------- |
/// | [DoNothingAndStopPropagationTextIntent] | 입력 필드에서 아무것도 하지 않고, 키 이벤트가 위젯 트리에서 더 이상 전파되지 않도록 합니다. |
/// | [ReplaceTextIntent] | 입력 필드의 [TextEditingController]에서 현재 [TextEditingValue]를 바꾸고 모든 관련 사용자 콜백 및 [TextInputFormatter]를 트리거합니다. |
/// | [업데이트 선택 의도] | 입력 필드의 [TextEditingController]에서 현재 선택을 업데이트하고 [onSelectionChanged] 콜백을 트리거합니다. |
/// | [CopySelectionTextIntent] | 선택된 텍스트를 클립보드에 복사하거나 잘라냅니다.
/// | [PasteTextIntent] | 클립보드의 캐럿 위치 뒤에 현재 텍스트를 삽입하거나 선택 영역이 축소되지 않은 경우 선택한 텍스트를 바꿉니다. |
///
/// ## 제스처 이벤트 처리
///
/// 이 위젯은 [rendererIgnoresPointer]가 거짓(기본적으로 거짓)일 때 탭, 길게 누르기, 스크롤과 같은 사용자 동작에 대해 플랫폼에 구애받지 않는 기초적인 제스처 처리를 제공합니다. 텍스트 필드의 입력 제스처와 관련하여 플랫폼 동작을 엄격하게 준수하려면 [TextField] 또는 [CupertinoTextField]를 사용하십시오. 사용자 지정 선택 동작의 경우 [RenderEditable.selectPosition]과 같은 메서드를 호출합니다,
/// [RenderEditable.selectWord] 등의 메서드를 프로그래밍 방식으로 호출합니다.
///
/// {@template flutter.widgets.editableText.showCaretOnScreen}
/// ## 초점이 맞춰졌을 때 캐럿을 계속 표시
///
/// 이 위젯은 초점이 맞춰지면 텍스트 영역과 해당 캐럿([showCursor]가 `false`인 경우에도)을 계속 표시하려고 시도합니다:
///
///  * 사용자가 이 텍스트 필드에 초점을 맞췄지만 [읽기 전용]이 아닌 경우.
///  * 사용자가 텍스트 필드의 선택을 변경하거나 텍스트 필드가 [읽기 전용]이 아닐 때 텍스트를 변경하는 경우.
///  * 가상 키보드가 팝업되는 경우.
/// {@endtemplate}
///
/// {@template flutter.widgets.editableText.accessibility}
/// ## 일반적인 접근성 문제 해결하기
///
/// ### 사용자 입력 접근성 알림 사용자 지정하기
///
/// 텍스트 변경에 의해 트리거되는 사용자 입력 접근성 알림을 사용자 지정하려면 [SemanticsService.announce]를 사용하여 원하는 접근성 알림을 만듭니다.
///
/// iOS에서 [TextInputFormatter]가 통화 값 텍스트 필드에 천 단위 구분 기호를 삽입하면 화면 키보드가 가장 최근 입력을 잘못 발표할 수 있습니다. 다음 예제는 텍스트 필드의 내용을 항상 미국 통화 값으로 알려서 기본 접근성 알림을 억제하는 방법을 보여줍니다(`\$`는 달러 기호를 삽입하고 `$newText` 변수를 보간함):
///
/// ```dart onChanged: (String newText) {
///   if (newText.isNotEmpty) {
///     SemanticsService.announce('\$$newText', Directionality.of(context));
///   }
/// }
/// ```
///
/// {@endtemplate}
///
/// 참조:
///
///  * 플레이스홀더 텍스트, 레이블 및 [양식] 통합 기능을 갖춘 모든 기능을 갖춘 머티리얼 디자인 텍스트 입력 필드인 [텍스트필드].
class EditableText extends StatefulWidget {
  /// 기본 텍스트 입력 컨트롤을 만듭니다.
  ///
  /// [maxLines] 속성을 null로 설정하여 줄 수 제한을 제거할 수 있습니다. 기본적으로 이 속성은 1이며, 이는 한 줄 텍스트 필드임을 의미합니다. [maxLines]는 null이거나 0보다 커야 합니다.
  ///
  /// [키보드 유형]이 설정되어 있지 않거나 널인 경우, [자동 채우기 힌트]가 비어 있지 않은 경우 [자동 채우기 힌트]에서 해당 값을 유추합니다. 그렇지 않으면 기본값은 [maxLines]가 정확히 1이면 [TextInputType.text]로, [maxLines]가 null이거나 1보다 크면 [TextInputType.multiline]으로 설정됩니다.
  ///
  /// [showCursor]가 거짓이거나 [showCursor][기본값]이 null인 경우 텍스트 커서가 표시되지 않습니다.
  /// 가 널(기본값)이고 [readOnly]가 참이면 텍스트 커서가 표시되지 않습니다.
  ///
  /// [컨트롤러], [포커스 노드], [모호한 텍스트], [자동 수정], [자동 초점],
  /// [쇼셀렉션 핸들], [활성화대화형선택], [포스라인],
  /// [스타일], [커서 색상], [커서 투명도 애니메이션], [배경 커서 색상],
  /// [enableSuggestions], [페인트 커서 위에 텍스트], [선택 높이 스타일],
  /// [선택 폭 스타일], [텍스트 정렬], [드래그 시작 동작], [스크롤 패딩],
  /// [드래그 시작 동작], [툴바 옵션], [렌더러 무시 포인터],
  /// [읽기 전용], [enableIMEPersonalizedLearning] 인수는 null이 아니어야 합니다.
  EditableText({
    super.key,
    required this.controller,
    required this.focusNode,
    this.readOnly = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    this.enableSuggestions = true,
    required this.style,
    StrutStyle? strutStyle,
    required this.cursorColor,
    required this.backgroundCursorColor,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.locale,
    this.textScaleFactor,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.forceLine = true,
    this.textHeightBehavior,
    this.textWidthBasis = TextWidthBasis.parent,
    this.autofocus = false,
    bool? showCursor,
    this.showSelectionHandles = false,
    this.selectionColor,
    this.selectionControls,
    TextInputType? keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.onSelectionChanged,
    this.onSelectionHandleTapped,
    this.onTapOutside,
    List<TextInputFormatter>? inputFormatters,
    this.mouseCursor,
    this.rendererIgnoresPointer = false,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates = false,
    this.cursorOffset,
    this.paintCursorAboveText = false,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.keyboardAppearance = Brightness.light,
    this.dragStartBehavior = DragStartBehavior.start,
    bool? enableInteractiveSelection,
    this.scrollController,
    this.scrollPhysics,
    this.autocorrectionTextRectColor,
    @Deprecated(
      'Use `contextMenuBuilder` instead. '
      'This feature was deprecated after v3.3.0-0.5.pre.',
    )
    ToolbarOptions? toolbarOptions,
    this.autofillHints = const <String>[],
    this.autofillClient,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scrollBehavior,
    this.scribbleEnabled = true,
    this.enableIMEPersonalizedLearning = true,
    this.contentInsertionConfiguration,
    this.contextMenuBuilder,
    this.spellCheckConfiguration,
    this.magnifierConfiguration = TextMagnifierConfiguration.disabled,
    this.undoController,
  }) : assert(obscuringCharacter.length == 1),
       smartDashesType = smartDashesType ?? (obscureText ? SmartDashesType.disabled : SmartDashesType.enabled),
       smartQuotesType = smartQuotesType ?? (obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled),
       assert(minLines == null || minLines > 0),
       assert(
         (maxLines == null) || (minLines == null) || (maxLines >= minLines),
         "minLines can't be greater than maxLines",
       ),
       assert(
         !expands || (maxLines == null && minLines == null),
         'minLines and maxLines must be null when expands is true.',
       ),
       assert(!obscureText || maxLines == 1, 'Obscured fields cannot be multiline.'),
       enableInteractiveSelection = enableInteractiveSelection ?? (!readOnly || !obscureText),
       toolbarOptions = selectionControls is TextSelectionHandleControls && toolbarOptions == null ? ToolbarOptions.empty : toolbarOptions ??
           (obscureText
               ? (readOnly
                   // No point in even offering "Select All" in a read-only obscured
                   // field.
                   ? ToolbarOptions.empty
                   // Writable, but obscured.
                   : const ToolbarOptions(
                       selectAll: true,
                       paste: true,
                     ))
               : (readOnly
                   // Read-only, not obscured.
                   ? const ToolbarOptions(
                       selectAll: true,
                       copy: true,
                     )
                   // Writable, not obscured.
                   : const ToolbarOptions(
                       copy: true,
                       cut: true,
                       selectAll: true,
                       paste: true,
                     ))),
       assert(
          spellCheckConfiguration == null ||
          spellCheckConfiguration == const SpellCheckConfiguration.disabled() ||
          spellCheckConfiguration.misspelledTextStyle != null,
          'spellCheckConfiguration must specify a misspelledTextStyle if spell check behavior is desired',
       ),
       _strutStyle = strutStyle,
       keyboardType = keyboardType ?? _inferKeyboardType(autofillHints: autofillHints, maxLines: maxLines),
       inputFormatters = maxLines == 1
           ? <TextInputFormatter>[
               FilteringTextInputFormatter.singleLineFormatter,
               ...inputFormatters ?? const Iterable<TextInputFormatter>.empty(),
             ]
           : inputFormatters,
       showCursor = showCursor ?? !readOnly;

  /// 편집 중인 텍스트를 제어합니다.
  final TextEditingController controller;

  /// 이 위젯에 키보드 포커스가 있는지 여부를 제어합니다.
  final FocusNode focusNode;

  /// {@template flutter.widgets.editableText.obscuringCharacter}
  /// [obscureText]가 참일 경우 텍스트를 가리는 데 사용되는 문자입니다.
  ///
  /// 한 글자만 사용해야 합니다.
  ///
  /// 기본값은 U+2022 BULLET(-) 문자입니다.
  /// {@endtemplate}
  final String obscuringCharacter;

  /// {@template flutter.widgets.editableText.obscureText}
  /// 편집 중인 텍스트를 숨길지 여부(예: 비밀번호).
  ///
  /// 이 값을 true로 설정하면 텍스트 필드의 모든 문자가 [obscuringCharacter]로 대체되며, 필드의 텍스트는 복사 또는 잘라내기로 복사할 수 없습니다. [읽기 전용]도 참이면 텍스트를 선택할 수 없습니다.
  ///
  /// 기본값은 거짓입니다. null일 수 없습니다.
  /// {@endtemplate}
  final bool obscureText;

  /// {@macro dart.ui.textHeightBehavior}
  final TextHeightBehavior? textHeightBehavior;

  /// {@macro flutter.painting.textPainter.textWidthBasis}
  final TextWidthBasis textWidthBasis;

  /// {@template flutter.widgets.editableText.readOnly}
  /// 텍스트를 변경할 수 있는지 여부.
  ///
  /// 이 값을 true로 설정하면 단축키나 키보드 조작으로 텍스트를 수정할 수 없습니다. 텍스트는 계속 선택할 수 있습니다.
  ///
  /// 기본값은 false입니다. null이 아니어야 합니다.
  /// {@END템플릿}
  final bool readOnly;

  /// 텍스트 너비에 관계없이 텍스트가 전체 너비를 사용할지 여부입니다.
  ///
  /// 이 값을 false로 설정하면 너비는 텍스트 너비를 기준으로 하며, [textWidthBasis]의 영향도 받습니다.
  ///
  /// 기본값은 참입니다. null이 아니어야 합니다.
  ///
  /// 참조
  ///
  ///  * 텍스트 너비 계산을 제어하는 [textWidthBasis] 참조.
  final bool forceLine;

  /// 도구 모음 옵션 구성.
  ///
  /// 기본적으로 모든 옵션이 활성화됩니다. [읽기 전용]이 참이면 붙여넣기 및 잘라내기와 관계없이 비활성화됩니다. [obscureText]가 참이면 잘라내기 및 복사 기능이 비활성화됩니다. [읽기 전용]과 [obscureText]가 모두 참이면,
  /// 모두 선택도 비활성화됩니다.
  final ToolbarOptions toolbarOptions;

  /// 선택 핸들을 표시할지 여부입니다.
  ///
  /// 선택 영역이 활성화되면 경계 양쪽에 두 개의 핸들이 표시되고, 선택 영역이 축소된 경우 핸들이 하나 표시됩니다. 핸들을 드래그하여 선택 영역을 조정할 수 있습니다.
  ///
  /// 참조
  ///
  ///  * 커서의 가시성을 제어하는 [showCursor] 참조.
  final bool showSelectionHandles;

  /// {@template flutter.widgets.editableText.showCursor}
  /// 커서를 표시할지 여부입니다.
  ///
  /// 커서는 [편집 가능한 텍스트]에 초점이 맞춰졌을 때 깜박이는 캐럿을 나타냅니다.
  /// {@endtemplate}
  ///
  /// 참조
  ///
  ///  * 선택 핸들의 표시 여부를 제어하는 [showSelectionHandles].
  final bool showCursor;

  /// {@template flutter.widgets.editableText.autocorrect}
  /// 자동 수정 활성화 여부.
  ///
  /// 기본값은 true입니다. null일 수 없습니다.
  /// {@endtemplate}
  final bool autocorrect;

  /// {@macro flutter.services.TextInputConfiguration.smartDashesType}
  final SmartDashesType smartDashesType;

  /// {@macro flutter.services.TextInputConfiguration.smartQuotesType}
  final SmartQuotesType smartQuotesType;

  /// {@macro flutter.services.TextInputConfiguration.enableSuggestions}
  final bool enableSuggestions;

  /// 편집 가능한 텍스트에 사용할 텍스트 스타일입니다.
  final TextStyle style;

  /// 현재 편집 가능한 텍스트의 실행 취소 상태를 제어합니다.
  ///
  /// null이면 이 위젯은 자체 [UndoHistoryController]를 생성합니다.
  final UndoHistoryController? undoController;

  /// {@template flutter.widgets.editableText.strutStyle}
  /// 세로 레이아웃에 사용되는 스트럿 스타일입니다.
  ///
  /// [StrutStyle]은 예측 가능한 세로 레이아웃을 설정하는 데 사용됩니다.
  /// 글꼴은 사용자 입력 및 글꼴 대체에 따라 달라질 수 있으므로 [StrutStyle.forceStrutHeight]는 기본적으로 활성화되어 모든 줄을 [style]에서 제공하는 기본 [TextStyle]의 높이로 고정합니다. 이렇게 하면 입력한 텍스트가 할당된 공간에 맞도록 보장합니다.
  ///
  /// null인 경우 사용되는 스트럿은 [스타일]의 값을 상속하고 [StrutStyle.forceStrutHeight]가 true로 설정됩니다. [스타일]이 전달되지 않으면 테마의 [텍스트 스타일]을 사용하여 [strutStyle] 대신
  /// 을 생성합니다.
  ///
  /// 스트럿 기반 세로 정렬을 비활성화하고 입력한 글리프에 따라 동적 세로 레이아웃을 허용하려면 [StrutStyle.disabled]를 사용합니다.
  ///
  /// Flutter의 스트럿은 [조판 스트럿](https://en.wikipedia.org/wiki/Strut_(typesetting))
  /// 및 CSS의 [line-height](https://www.w3.org/TR/CSS2/visudet.html#line-height)를 기반으로 합니다.
  /// {@endtemplate}
  ///
  /// 편집 가능한 텍스트 및 텍스트 필드 내에서 [StrutStyle]은 독립형 기본값을 사용하지 않고 대신 [TextStyle]에서 생략되거나 null인 속성을 상속합니다. [텍스트 스타일에서 상속받기]를 참조하십시오.
  StrutStyle get strutStyle {
    if (_strutStyle == null) {
      return StrutStyle.fromTextStyle(style, forceStrutHeight: true);
    }
    return _strutStyle!.inheritFromTextStyle(style);
  }
  final StrutStyle? _strutStyle;

  /// {@template flutter.widgets.editableText.textAlign}
  /// 텍스트를 가로로 정렬하는 방법.
  ///
  /// 기본값은 [TextAlign.start]이며 null일 수 없습니다.
  /// {@endtemplate}
  final TextAlign textAlign;

  /// {@template flutter.widgets.editableText.textDirection}
  /// 텍스트의 방향성.
  ///
  /// 이것은 [TextAlign.start] 및 [TextAlign.end]와 같은 [textAlign] 값이 해석되는 방식을 결정합니다.
  ///
  /// 또한 양방향 텍스트를 렌더링하는 방법을 명확히 하기 위해 사용됩니다. 예를 들어, 텍스트가 영어 구문 뒤에 히브리어 구문인 경우,
  /// [TextDirection.ltr] 컨텍스트에서는 영어 구문이 왼쪽에, 히브리어 구문이 오른쪽에 배치되고, [TextDirection.rtl] 컨텍스트에서는 영어 구문이 오른쪽에 배치됩니다.
  /// 컨텍스트에서는 영어 구문이 오른쪽에, 히브리어 구문이 왼쪽에 표시됩니다.
  ///
  /// 기본값은 주변 [방향성]이 있는 경우 해당 방향성을 사용합니다.
  /// {@endtemplate}
  final TextDirection? textDirection;

  /// {@template flutter.widgets.editableText.textCapitalization}
  /// 플랫폼 키보드에서 대문자 또는 소문자 키보드를 선택하는 방법을 구성합니다.
  ///
  /// 텍스트 키보드만 지원하며, 다른 키보드 유형은 이 구성을 무시합니다. 대문자는 로캘을 인식합니다.
  ///
  /// 기본값은 [TextCapitalization.none]입니다. null이 아니어야 합니다.
  ///
  /// 참조
  ///
  ///  * 각 대문자 동작에 대한 설명은 [TextCapitalization]을 참조하세요.
  ///
  /// {@endtemplate}
  final TextCapitalization textCapitalization;

  /// 로캘에 따라 동일한 유니코드 문자가 다르게 렌더링될 수 있는 경우 글꼴을 선택하는 데 사용됩니다.
  ///
  /// 이 속성을 설정할 필요는 거의 없습니다. 기본적으로 이 값은 `Localizations.localeOf(context)`로 둘러싸는 앱에서 상속됩니다.
  ///
  /// 자세한 내용은 [RenderEditable.locale]을 참조하십시오.
  final Locale? locale;

  /// {@template flutter.widgets.editableText.textScaleFactor}
  /// 각 논리적 픽셀에 대한 글꼴 픽셀 수입니다.
  ///
  /// 예를 들어 텍스트 배율이 1.5인 경우 텍스트는 지정된 글꼴 크기보다 50% 더 커집니다.
  ///
  /// 기본값은 주변 [MediaQuery]에서 가져온 [MediaQueryData.textScaleFactor]이며, 범위 내에 [MediaQuery]가 없는 경우 1.0입니다.
  /// {@endtemplate}
  final double? textScaleFactor;

  /// 커서를 칠할 때 사용할 색상입니다.
  ///
  /// 널일 수 없습니다.
  final Color cursorColor;

  /// 자동 수정 직사각형을 칠할 때 사용할 색상입니다.
  ///
  /// [CupertinoTextField]의 경우 이 값은 불투명도가 20%인 주변 [CupertinoThemeData.primaryColor]로 설정됩니다. [TextField]의 경우 iOS 이외의 플랫폼에서는 값이 null이며, iOS에서는 [CupertinoTextField](
  /// 에 사용된 색상과 동일합니다.
  ///
  /// 현재 자동 보정 사각형은 iOS에서만 나타납니다.
  ///
  /// 기본값은 null로, 자동 보정 사각형 페인팅을 비활성화합니다.
  final Color? autocorrectionTextRectColor;

  /// 플로팅 커서를 렌더링하는 동안 텍스트와 정렬된 배경 커서를 칠할 때 사용할 색상입니다.
  ///
  /// null일 수 없습니다. 기본적으로 비활성화된 회색 색상은
  /// CupertinoColors.
  final Color backgroundCursorColor;

  /// {@template flutter.widgets.editableText.maxLines}
  /// 한 번에 표시할 최대 줄 수(필요한 경우 줄 바꿈 포함)입니다.
  ///
  /// 이 값은 필드 자체의 높이에 영향을 주며 필드에 입력할 수 있는 줄 수를 제한하지 않습니다.
  ///
  /// 이 값이 1(기본값)이면 텍스트가 줄 바꿈되지 않고 대신 가로로 스크롤됩니다.
  ///
  /// 이 값이 null이면 줄 수에 제한이 없으며 텍스트 컨테이너는 한 줄을 위한 충분한 세로 공간으로 시작하여 추가 줄이 입력될 때 제약 조건 높이까지 자동으로 확장됩니다.
  ///
  /// 이 값이 null이 아닌 경우 0보다 커야 하며, 입력이 지정된 줄 수로 고정되고 해당 줄 수를 수용하기에 충분한 가로 공간을 차지합니다. [minLines]도 설정하면 입력이 지정된 범위 사이에서 커지거나 줄어들 수 있습니다.
  ///
  /// [minLines] 및 [maxLines]로 가능한 전체 동작 세트는 다음과 같습니다. 이 예제는 [TextField], [TextFormField]에도 동일하게 적용됩니다,
  /// [CupertinoTextField] 및 [EditableText]에도 동일하게 적용됩니다.
  ///
  /// 한 줄을 차지하고 필요에 따라 가로로 스크롤되는 입력입니다.
  /// ```다트 const TextField()
  /// ```
  ///
  /// 입력한 텍스트의 높이가 한 줄에서 필요한 만큼 한 줄까지 늘어나는 입력입니다. 부모에 의해 높이 제한이 설정된 경우 높이가 제한에 도달하면 세로로 스크롤됩니다.
  /// ```dart const TextField(maxLines: null)
  /// ```
  ///
  /// 입력의 높이가 주어진 줄 수만큼 충분히 큽니다. 추가로 줄을 입력하면 입력이 세로로 스크롤됩니다.
  /// ```dart const TextField(maxLines: 2)
  /// ```
  ///
  /// 최소와 최대 사이의 내용에 따라 높이가 커지는 입력입니다. maxLines: null`을 사용하면 무한한 최대값이 가능합니다.
  /// ```dart const TextField(minLines: 2, maxLines: 4)
  /// ```
  ///
  /// 참조:
  ///
  ///  * 표시되는 최소 줄 수를 설정하는 [minLines] 참조.
  /// {@endtemplate}
  ///  * [expands], 필드가 부모의 높이를 채울지 여부를 결정합니다.
  final int? maxLines;

  /// {@template flutter.widgets.editableText.minLines}
  /// 콘텐츠가 더 적은 줄에 걸쳐 있을 때 차지할 최소 줄 수입니다.
  ///
  /// 이는 필드 자체의 높이에 영향을 주며 필드에 입력할 수 있는 줄 수를 제한하지 않습니다.
  ///
  /// 이 값이 null(기본값)이면 텍스트 컨테이너는 한 줄을 위한 충분한 세로 공간으로 시작하여 입력할 때 추가 줄을 수용할 수 있도록 커집니다.
  ///
  /// 이 값은 다양한 동작을 위해 [maxLines]와 함께 사용할 수 있습니다.
  ///
  /// 값을 설정하는 경우 0보다 커야 합니다. 값이 1보다 크면 [maxLines]도 이 값보다 크거나 널로 설정해야 합니다.
  ///
  /// [maxLines]도 설정하면 높이가 지정된 선 범위 사이에서 커집니다. [maxLines]가 null이면 필요한 만큼 높이가 증가합니다,
  /// [minLines]에서 시작하여 필요한 만큼 커집니다.
  ///
  /// [minLines] 및 [maxLines]로 가능한 동작의 몇 가지 예는 다음과 같습니다.
  /// 이는 [TextField], [TextFormField], [CupertinoTextField],
  /// 및 [EditableText]에도 동일하게 적용됩니다.
  ///
  /// 항상 2줄 이상을 차지하고 최대 길이가 무한대인 입력입니다.
  /// 필요에 따라 세로로 확장됩니다.
  /// ```다트
  /// TextField(minLines: 2)
  /// ```
  ///
  /// 높이가 2줄에서 시작하여 높이 제한에 도달하는 지점에서 최대 4줄까지 늘어나는 입력입니다. 추가로 줄을 입력하면 세로로 스크롤됩니다.
  /// ```dart const TextField(minLines:2, maxLines: 4)
  /// ```
  ///
  /// 기본값은 null입니다.
  ///
  /// 참조:
  ///
  ///  * 표시되는 최대 줄 수를 설정하는 [maxLines], minLines와 maxLines가 상호 작용하여 다양한 동작을 생성하는 방법에 대한 몇 가지 예가 있습니다.
  /// {@endtemplate}
  ///  * [expands]는 필드가 부모의 높이를 채울지 여부를 결정합니다.
  final int? minLines;

  /// {@template flutter.widgets.editableText.expands}
  /// 이 위젯의 높이가 부모를 채우도록 크기를 조정할지 여부입니다.
  ///
  /// true로 설정하고 [Expanded] 또는 [SizedBox]와 같은 부모 위젯으로 래핑하면 입력이 부모를 채우도록 확장됩니다.
  ///
  /// [maxLines] 및 [minLines]는 참으로 설정할 때 모두 null이어야 합니다,
  /// 그렇지 않으면 오류가 발생합니다.
  ///
  /// 기본값은 거짓입니다.
  ///
  /// [maxLines]의 전체 작동 방식은 [maxLines]의 예시를 참조하세요,
  /// [minLines], [expands]가 어떻게 상호 작용하여 다양한 동작을 생성하는지에 대한 전체 내용은 [maxLines]의 예시를 참조하세요.
  ///
  /// 부모의 높이와 일치하는 입력:
  /// ```dart const Expanded(
  ///   child: TextField(maxLines: null, expands: true),
  /// )
  /// ```
  /// {@endtemplate}
  final bool expands;

  /// {@template flutter.widgets.editableText.autofocus}
  /// 이미 초점이 맞춰진 다른 항목이 없을 때 이 텍스트 필드 자체에 초점을 맞출지 여부입니다.
  ///
  /// true이면 이 텍스트 필드가 포커스를 받자마자 키보드가 열립니다.
  /// 그렇지 않으면 사용자가 텍스트 필드를 탭한 후에만 키보드가 표시됩니다.
  ///
  /// 기본값은 거짓입니다. null일 수 없습니다.
  /// {@END템플릿}
  // See https://github.com/flutter/flutter/issues/7035 for the rationale for this
  // keyboard behavior.
  final bool autofocus;

  /// 선택 영역을 칠할 때 사용할 색상입니다.
  ///
  /// 이 속성이 null인 경우 이 위젯은 [DefaultSelectionStyle]에서 선택 색을 가져옵니다.
  ///
  /// [CupertinoTextField]의 경우 이 값은 불투명도가 20%인 주변 [CupertinoThemeData.primaryColor]로 설정됩니다. [TextField]의 경우 값은 앰비언트 [TextSelectionThemeData.selectionColor]로 설정됩니다.
  final Color? selectionColor;

  /// {@template flutter.widgets.editableText.selectionControls}
  /// 텍스트 선택 핸들 및 도구 모음을 빌드하기 위한 선택적 델리게이트입니다.
  ///
  /// 자체적으로 사용되는 [EditableText] 위젯은 자체적으로 선택 도구 모음의 표시를 트리거하지 않습니다. 도구 모음은 적절한 사용자 이벤트에 대한 응답으로 [EditableTextState.showToolbar]를 호출하여 표시됩니다.
  ///
  /// 참고 항목
  ///
  ///  * [EditableText]를 래핑하고 iOS 플랫폼에서 적절한 사용자 이벤트에 따라 선택 도구 모음을 표시하는 [CupertinoTextField]는
  ///    플랫폼에 적합한 사용자 이벤트 시 선택 도구 모음을 표시합니다.
  ///  * [ThemeData.platform]에 설정된 사용자 플랫폼에 따라 적절한 사용자 이벤트 시 선택 도구 모음을 표시하는 [EditableText]의 머티리얼 디자인 테마 래퍼인 [TextField].
  /// {@endtemplate}
  final TextSelectionControls? selectionControls;

  /// {@template flutter.widgets.editableText.keyboardType}
  /// 텍스트 편집에 사용할 키보드 유형입니다.
  ///
  /// [maxLines]가 1이면 기본값은 [TextInputType.text]이고, 그렇지 않으면 [TextInputType.multiline]입니다.
  /// {@endtemplate}
  final TextInputType keyboardType;

  /// 소프트 키보드와 함께 사용할 동작 버튼 유형입니다.
  final TextInputAction? textInputAction;

  /// {@template flutter.widgets.editableText.onChanged}
  /// 사용자가 텍스트 필드 값을 변경하기 시작할 때, 즉 텍스트를 삽입하거나 삭제했을 때 호출됩니다.
  ///
  /// 이 콜백은 텍스트 필드의 [컨트롤러]를 통해 프로그래밍 방식으로 텍스트 필드의 텍스트가 변경될 때는 실행되지 않습니다. 일반적으로 이러한 변경은 앱 자체에서 시작되므로 알림을 받을 필요가 없습니다.
  ///
  /// 텍스트 필드의 텍스트, 커서,
  /// 및 선택 항목에 대한 모든 변경 사항을 알림 받으려면 [TextEditingController.addListener]를 사용하여 [컨트롤러]에 리스너를 추가하면 됩니다.
  ///
  /// 키보드의 "완료" 버튼을 누르는 등 사용자가 편집 완료를 표시할 때 [onChanged]가 [onSubmitted] 이전에 호출됩니다. 이 기본 동작은 재정의할 수 있습니다. 자세한 내용은 [onEditingComplete]를 참조하세요.
  ///
  /// {도구 다트패드}
  /// 이 예는 사용자가 문자를 삽입하거나 삭제할 때마다 TextField의 현재 값을 확인하는 데 onChanged를 사용하는 방법을 보여줍니다.
  ///
  /// ** 예제 코드 참조: examples/api/lib/widgets/editable_text/editable_text.on_changed.0.dart **
  /// {@end-tool}
  /// {@end-template}
  ///
  /// ## 이모티콘 및 기타 복잡한 문자 처리 {@template flutter.widgets.EditableText.onChanged}
  /// 복잡한 문자가 포함될 수 있는 사용자 입력 텍스트를 처리할 때는 항상 [characters](https://pub.dev/packages/characters)를 사용하는 것이 중요합니다. 이렇게 하면 확장된 그래프 클러스터와 대리 쌍이 사용자에게 표시될 때 단일 문자로 취급됩니다.
  ///
  /// 예를 들어 일부 사용자 입력의 길이를 찾을 때는 `string.characters.length`를 사용합니다. 문자열.길이` 또는 `string.runes.length`를 사용하지 마세요. 복잡한 문자 "👨‍👩‍👦"의 경우 사용자에게 단일 문자로 표시되며, `string.characters.length`는
  /// 는 직관적으로 1을 반환합니다. 반면에 `string.length`는 8을 반환하고 `string.runes.length`는 5를 반환합니다!
  /// {@endtemplate}
  ///
  /// 참조
  ///
  ///  * [onChanged] 실행 전에 호출되는 [입력 포맷터], 유효성을 검사하고 변경할 수 있습니다.
  ///    가 실행되기 전에 호출되어 입력 값의 유효성을 검사하고 변경("포맷")할 수 있습니다.
  ///  * [onEditingComplete], [onSubmitted], [onSelectionChanged]:
  ///    보다 전문화된 입력 변경 알림입니다.
  ///  * Listenable] 인터페이스를 구현하고 리스너에게 [TextEditingValue] 변경 사항을 알리는 [TextEditingController].
  final ValueChanged<String>? onChanged;

  /// {@template flutter.widgets.editableText.onEditingComplete}
  /// 사용자가 편집 가능한 콘텐츠를 제출할 때 호출됩니다(예: 사용자가 키보드의 "완료"
  /// 버튼을 눌렀을 때) 호출됩니다.
  ///
  /// [onEditingComplete]의 기본 구현은 상황에 따라 두 가지 동작을 실행합니다:
  ///
  ///  - "완료", "이동", "보내기" 또는 "검색"과 같은 완료 동작을 누르면 사용자의 콘텐츠가 [컨트롤러]에 제출된 다음 포커스를 포기합니다.
  ///
  ///  - "다음" 또는 "이전"과 같이 완료되지 않은 동작을 누르면,
  ///    사용자의 콘텐츠가 [컨트롤러]에 제출되지만 개발자가 [onSubmitted] 내의 다른 입력 위젯으로 즉시 포커스를 이동하고 싶을 수 있으므로 포커스는 포기되지 않습니다.
  ///
  /// [onEditingComplete]를 제공하면 앞서 언급한 기본 동작을 방지할 수 있습니다.
  /// {@endtemplate}
  final VoidCallback? onEditingComplete;

  /// {@template flutter.widgets.editableText.onSubmitted}
  /// 사용자가 필드에서 텍스트 편집을 완료했음을 표시할 때 호출됩니다.
  ///
  /// 기본적으로 [onSubmitted]는 사용자가 편집을 완료했을 때 또는 기본 동작이 재정의된 경우 [onChanged] 이후에 호출됩니다,
  /// [onEditingComplete] 이후에 호출됩니다. 자세한 내용은 [onEditingComplete]를 참조하세요.
  ///
  /// ## 테스트
  /// 다음은 테스트에서 [onSubmitted]를 트리거하는 권장 방법입니다:
  ///
  /// ```dart await tester.testTextInput.receiveAction(TextInputAction.done);
  /// ```
  ///
  /// tester.sendKeyEvent`를 통해 `LogicalKeyboardKey.enter`를 보내면 [onSubmitted]가 트리거되지 않습니다. 실제 기기에서는 엔진이 입력 키를 완료된 동작으로 변환하지만 `tester.sendKeyEvent`는 프레임워크에만 키를 보내기 때문입니다.
  /// {@endtemplate}
  final ValueChanged<String>? onSubmitted;

  /// {@template flutter.widgets.editableText.onAppPrivateCommand}
  /// 입력 메서드에서 비공개 명령을 수신하는 데 사용됩니다.
  ///
  /// [TextInputClient.performPrivateCommand]의 결과가 수신될 때 호출됩니다.
  ///
  /// 특정 입력 메서드와 해당 클라이언트 사이에서만 알려진 도메인별 기능을 제공하는 데 사용할 수 있습니다.
  ///
  /// 참조
  ///   * [performPrivateCommand](https://developer.android.com/reference/android/view/inputmethod/InputConnection#performPrivateCommand\(java.lang.String,%20android.os.Bundle\)),
  ///     는 입력 메서드에서 명령을 전송하는 데 사용되는 performPrivateCommand에 대한 Android 문서입니다.
  ///   * [sendAppPrivateCommand](https://developer.android.com/reference/android/view/inputmethod/InputMethodManager#sendAppPrivateCommand),
  ///     는 입력 메서드에 명령을 전송하는 데 사용되는 sendAppPrivateCommand에 대한 안드로이드 문서입니다.
  /// {@endtemplate}
  final AppPrivateCommandCallback? onAppPrivateCommand;

  /// {@template flutter.widgets.editableText.onSelectionChanged}
  /// 사용자가 텍스트 선택(커서 위치 포함)을 변경할 때 호출됩니다.
  /// {@endtemplate}
  final SelectionChangedCallback? onSelectionChanged;

  /// {@macro flutter.widgets.SelectionOverlay.onSelectionHandleTapped}
  final VoidCallback? onSelectionHandleTapped;

  /// {@template flutter.widgets.editableText.onTapOutside}
  /// 텍스트 필드에 포커스가 맞춰졌을 때 [TextFieldTapRegion] 그룹 외부에서 발생하는 각 탭에 대해 호출됩니다.
  ///
  /// 이것이 null인 경우, UI의 다른 부분에서 [PointerDownEvent]가 수신되면 이 텍스트 필드의 [focusNode]에서 [FocusNode.unfocus]가 호출됩니다. 그러나 플랫폼 규칙을 준수하기 위해 모바일 애플리케이션 터치 이벤트(마우스 클릭은 포함되지 않음)의 결과로 포커스를 해제하지 않습니다. 이 동작을 변경하려면 기본값과 다르게 작동하는 콜백을 여기에 설정할 수 있습니다.
  ///
  /// 텍스트 필드에 추가 컨트롤(예: 스피너, 선택한 텍스트를 복사하거나 서식을 수정하는 버튼)을 추가할 때 해당 컨트롤을 탭해도 텍스트 필드의 초점이 해제되지 않는다면 유용합니다. 필드의 "외부"를 탭할 때 외부 위젯이 텍스트 필드의 일부로 간주되도록 하려면 컨트롤을 [TextFieldTapRegion]으로 감싸십시오.
  ///
  /// 함수에 전달된 [PointerDownEvent]는 알림을 발생시킨 이벤트입니다. 이벤트가 텍스트 필드에 의해 정의된 경계 상자 외부에서 발생할 수 있지만, [TextFieldTapRegion] 멤버의 경계 상자 내에 있을 수 있습니다.
  /// {@endtemplate}
  ///
  /// {@tool dartpad}
  /// 이 예는 `TextFieldTapRegion`을 사용하여 텍스트 필드의 값을 증가 및 감소시키는 "스피너" 버튼 집합을 래핑하는 방법을 보여줍니다.
  /// 텍스트 필드의 키보드 포커스를 잃지 않고 값을 늘리거나 줄이는 "스피너" 버튼 세트를 래핑하는 방법을 설명합니다.
  ///
  /// 이 예시에는 여러분의 프로젝트에 복사하여 커스터마이징할 수 있는 일반 `SpinnerField<T>` 클래스가 포함되어 있습니다.
  ///
  /// ** 예제 코드 참조: examples/api/lib/widgets/tap_region/text_field_tap_region.0.dart **
  /// {@end-tool}
  ///
  /// 참조:
  ///
  ///  * 지역 그룹이 결정되는 방법은 [TapRegion] 참조.
  final TapRegionCallback? onTapOutside;

  /// {@template flutter.widgets.editableText.inputFormatters}
  /// 선택적 입력 유효성 검사 및 서식 오버라이드.
  ///
  /// 포맷터는 사용자가 이 위젯에 포함된 텍스트를 변경할 때 제공된 순서대로 실행됩니다. 이 매개변수가 변경되면 사용자가 다음에 텍스트를 삽입하거나 삭제할 때까지 새 포맷터가 적용되지 않습니다.
  /// [onChanged] 콜백과 마찬가지로, [controller]를 통해 프로그래밍 방식으로 텍스트를 변경할 때는 포맷터가 실행되지 않습니다.
  ///
  /// 참조
  ///
  ///  * 리스너블] 인터페이스를 구현하고 리스너에게 [텍스트 편집 값] 변경 사항을 알리는 [TextEditingController].
  /// {@endtemplate}
  final List<TextInputFormatter>? inputFormatters;

  /// 마우스 포인터가 위젯에 들어가거나 위젯 위에 있을 때 마우스 포인터의 커서입니다.
  ///
  /// 이 속성이 null이면 [SystemMouseCursors.text]가 사용됩니다.
  ///
  /// [마우스 커서]는 마우스 포인터의 모양을 제어하는 [EditableText]의 유일한 속성입니다. "커서"와 관련된 다른 모든 속성
  /// 는 텍스트 커서를 나타내며, 일반적으로 편집 위치에서 깜박이는 수직선입니다.
  final MouseCursor? mouseCursor;

  /// true이면 이 위젯에 의해 생성된 [RenderEditable]은 포인터 이벤트를 처리하지 않습니다([RenderEditable] 및 [RenderEditable.ignorePointer] 참조).
  ///
  /// 이 속성은 기본적으로 거짓입니다.
  final bool rendererIgnoresPointer;

  /// {@template flutter.widgets.editableText.cursorWidth}
  /// 커서의 두께입니다.
  ///
  /// 기본값은 2.0입니다.
  ///
  /// 커서가 텍스트 아래에 그려집니다. 커서 너비는 왼쪽에서 오른쪽 텍스트의 경우 문자 간 경계선의 오른쪽으로, 오른쪽에서 왼쪽 텍스트의 경우 왼쪽으로 확장됩니다. 이는 선택한 위치를 기준으로 아래쪽으로 확장되는 것에 해당합니다. 음수 값을 사용하면 이 동작을 반전시킬 수 있습니다.
  /// {@endtemplate}
  final double cursorWidth;

  /// {@template flutter.widgets.editableText.cursorHeight}
  /// 커서의 높이입니다.
  ///
  /// 이 프로퍼티가 null이면 [RenderEditable.preferredLineHeight]가 사용됩니다.
  /// {@endtemplate}
  final double? cursorHeight;

  /// {@template flutter.widgets.editableText.cursorRadius}
  /// 커서 모서리를 얼마나 둥글게 처리할지 설정합니다.
  ///
  /// 기본적으로 커서에는 반경이 없습니다.
  /// {@endtemplate}
  final Radius? cursorRadius;

  /// {@template flutter.widgets.editableText.cursorOpacityAnimates}
  /// 커서가 깜박일 때마다 커서가 완전 투명에서 완전 불투명까지 애니메이션을 적용할지 여부입니다.
  ///
  /// 기본적으로 커서 불투명도는 iOS 플랫폼에서 애니메이션이 적용되며 Android 플랫폼에서는 애니메이션이 적용되지 않습니다.
  /// {@endtemplate}
  final bool cursorOpacityAnimates;

  ///{@macro flutter.rendering.RenderEditable.cursorOffset}
  final Offset? cursorOffset;

  ///{@macro flutter.rendering.RenderEditable.paintCursorAboveText}
  final bool paintCursorAboveText;

  /// 선택 강조 상자의 높이가 계산되는 높이를 제어합니다.
  ///
  /// 사용 가능한 스타일에 대한 자세한 내용은 [ui.BoxHeightStyle]을 참조하십시오.
  final ui.BoxHeightStyle selectionHeightStyle;

  /// 선택 강조 표시 상자의 너비를 계산할지 여부를 제어합니다.
  ///
  /// 사용 가능한 스타일에 대한 자세한 내용은 [ui.BoxWidthStyle]을 참조하십시오.
  final ui.BoxWidthStyle selectionWidthStyle;

  /// 키보드 모양.
  ///
  /// 이 설정은 iOS 장치에서만 적용됩니다.
  ///
  /// 기본값은 [밝기.밝기]입니다.
  final Brightness keyboardAppearance;

  /// {@template flutter.widgets.editableText.scrollPadding}
  /// 텍스트 필드가 뷰로 스크롤될 때 [스크롤 가능]을 둘러싼 가장자리에 패딩을 구성합니다.
  ///
  /// 이 위젯이 포커스를 받고 완전히 보이지 않는 경우(예: 화면에서 부분적으로 스크롤되었거나 키보드에 의해 겹쳐진 경우)
  /// 이면 주변에 [스크롤 가능]이 있는 경우 스크롤하여 표시하려고 시도합니다.
  /// 이 값은 스크롤 후 텍스트 필드가 [스크롤 가능]의 가장자리에서 얼마나 멀리 위치할지를 제어합니다.
  ///
  /// 기본값은 EdgeInsets.all(20.0)입니다.
  /// {@endtemplate}
  final EdgeInsets scrollPadding;

  /// {@template flutter.widgets.editableText.enableInteractiveSelection}
  /// 텍스트 선택 변경을 위한 사용자 인터페이스 어포던스 활성화 여부입니다.
  ///
  /// 예를 들어 이 값을 true로 설정하면 텍스트 필드를 길게 눌러 텍스트를 선택하고 잘라내기/복사/붙여넣기 메뉴를 표시하거나 탭하여 텍스트 캐럿을 이동하는 등의 기능이 활성화됩니다.
  ///
  /// 이 옵션을 false로 설정하면 사용자가 텍스트 선택을 조정할 수 없고, 텍스트를 복사할 수 없으며, 클립보드에서 텍스트 필드에 붙여넣을 수 없습니다.
  ///
  /// 기본값은 참입니다.
  /// {@END템플릿}
  final bool enableInteractiveSelection;

  /// 이 속성을 true로 설정하면 커서가 포커스에 표시된 후 커서가 깜박이거나 페이드온 및 페이드오프되지 않습니다. 이 속성은 테스트 목적으로 유용합니다.
  ///
  /// 애초에 커서가 나타나기 위해 편집 가능한 텍스트에 초점을 맞출 필요성에는 영향을 주지 않습니다.
  ///
  /// 기본값은 거짓으로 설정되어 일반적인 커서가 깜박입니다.
  static bool debugDeterministicCursor = false;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// {@template flutter.widgets.editableText.scrollController}
  /// 입력을 세로로 스크롤할 때 사용할 [스크롤 컨트롤러]입니다.
  ///
  /// null이면 새 ScrollController를 인스턴스화합니다.
  ///
  /// [Scrollable.controller]를 참조하세요.
  /// {@endtemplate}
  final ScrollController? scrollController;

  /// {@template flutter.widgets.editableText.scrollPhysics}
  /// 입력을 세로로 스크롤할 때 사용할 [스크롤 물리]입니다.
  ///
  /// 지정하지 않으면 현재 플랫폼에 따라 동작합니다.
  ///
  /// [Scrollable.physics]를 참조하세요.
  /// {@endtemplate}
  ///
  /// [스크롤비헤이비어]에 명시적인 [스크롤비헤이비어]가 제공되면, 해당 비헤이비어가 제공하는 [스크롤피직스]가 [스크롤피직스] 다음에 우선합니다.
  final ScrollPhysics? scrollPhysics;

  /// {@template flutter.widgets.editableText.scribbleEnabled}
  /// 이 위젯에 iOS 14 스크리블 기능을 활성화할지 여부입니다.
  ///
  /// iPad에서만 사용할 수 있습니다.
  ///
  /// 기본값은 true입니다.
  /// {@endtemplate}
  final bool scribbleEnabled;

  /// {@template flutter.widgets.editableText.selectionEnabled}
  /// [enableInteractiveSelection]과 동일합니다.
  ///
  /// 이 게터는 주로 [RenderEditable.selectionEnabled]와의 일관성을 위해 존재합니다.
  /// {@endtemplate}
  bool get selectionEnabled => enableInteractiveSelection;

  /// {@template flutter.widgets.editableText.autofillHints}
  /// 자동 완성 서비스가 이 텍스트 입력의 유형을 식별하는 데 도움이 되는 문자열 목록입니다.
  ///
  /// null로 설정하면 이 텍스트 입력은 자동 완성 정보를 플랫폼에 전송하지 않으므로 동일한 [AutofillScope]에 있더라도 다른 [AutofillClient]에 의해 트리거된 자동 완성에는 참여하지 못합니다. 또한 Android 및 웹에서 이 값을 null로 설정하면 이 텍스트 필드에 대한 자동 채우기가 비활성화됩니다.
  ///
  /// 자동 완성 기능을 지원하는 최소 플랫폼 SDK 버전은 Android의 경우 API 레벨 26
  /// 이고, iOS의 경우 iOS 10.0입니다.
  ///
  /// 기본값은 빈 목록입니다.
  ///
  /// ### iOS 자동 완성 설정하기:
  ///
  /// 최상의 사용자 경험을 제공하고 앱이 iOS에서 비밀번호 자동 완성 기능을 완벽하게 지원하도록 하려면 다음 단계를 따르세요:
  ///
  /// * iOS 앱의 [연결된 도메인](https://developer.apple.com/documentation/safariservices/supporting_associated_domains_in_your_app)을 설정합니다.
  /// * 일부 자동 완성 힌트는 특정 [키보드 유형]에서만 작동합니다. 예
  ///   [자동 완성 힌트 이름]은 [텍스트 입력 유형 이름] 및 [자동 완성 힌트 이메일]이 필요합니다.
  ///   은 [TextInputType.emailAddress]에서만 작동합니다. 입력 필드에 호환되는 [키보드 유형]이 있는지 확인하세요. 경험적으로 [TextInputType.name]은 iOS에 미리 정의된 많은 자동 완성 힌트에서 잘 작동합니다.
  ///
  /// ### 자동 완성 문제 해결
  ///
  /// 자동 완성 서비스 제공업체는 [autofillHints]에 크게 의존합니다. [자동 완성 힌트]의 항목이 현재 사용 중인 자동 완성 서비스에서 지원되는지 확인하세요(서비스 이름은 일반적으로 모바일 디바이스의 시스템 설정에서 찾을 수 있습니다).
  ///
  /// #### 텍스트 입력란을 탭해도 자동 완성 UI가 표시되지 않습니다.
  ///
  /// 디바이스의 시스템 설정을 확인하고 자동 완성 기능이 켜져 있는지 확인하세요,
  /// 자동 완성 서비스에 사용 가능한 자격 증명이 저장되어 있는지 확인하세요.
  ///
  /// * iOS 비밀번호 자동 완성: 설정-> 비밀번호로 이동하여 "비밀번호 자동 완성"을 켜고 오른쪽 상단의 "+" 버튼을 눌러 테스트용 새 비밀번호를 추가합니다. 앱에 연결된 도메인이 설정되어 있지 않은 경우 임의의 "웹사이트"를 사용하세요. 비밀번호가 하나 이상 저장되어 있으면 소프트웨어 키보드의 빠른 입력 표시줄에 비밀번호 관련 필드에 초점이 맞춰지면 키 모양의 아이콘이 표시됩니다.
  ///
  /// * iOS 연락처 정보 자동 입력: iOS는 현재 디바이스와 연결된 Apple ID에서 연락처 정보를 가져오는 것 같습니다. 설정 ->
  ///   Apple ID(일반적으로 첫 번째 항목, 또는 장치에 설정하지 않은 경우 "iPhone에 로그인")로 이동하여 관련 필드를 채웁니다. 더 많은 연락처 정보 유형을 테스트하려면 연락처 -> 내 카드에서 추가해 보세요.
  ///   내 카드에서 추가해 보세요.
  ///
  /// * Android 자동 완성: 설정-> 시스템-> 언어 및 입력->
  ///   자동 완성 서비스로 이동합니다. 원하는 자동 완성 서비스를 활성화하고 앱과 연결된 사용 가능한 자격 증명이 있는지 확인합니다.
  ///
  /// #### `TextInput.finishAutofillContext`를 호출했지만 자동 완성 저장 프롬프트가 표시되지 않습니다.
  ///
  /// * iOS: iOS에서는 사용자 비밀번호를 저장할 때 프롬프트나 기타 시각적 표시가 표시되지 않을 수 있습니다. 설정-> 비밀번호로 이동하여 새 비밀번호가 저장되었는지 확인하세요. 앱에서 연결된 도메인을 올바르게 설정하지 않으면 비밀번호 저장이나 강력한 비밀번호 자동 생성이 모두 작동하지 않습니다. 연결 도메인을 설정하려면 <https://developer.apple.com/documentation/safariservices/supporting_associated_domains_in_your_app>의 지침을 따르세요.
  ///
  /// {@endtemplate}
  /// {@macro flutter.services.AutofillConfiguration.autofillHints}
  final Iterable<String>? autofillHints;

  /// 이 입력 필드의 자동 채우기 동작을 제어하는 [AutofillClient]입니다.
  ///
  /// null인 경우, 이 위젯의 [EditableTextState]가 [AutofillClient]로 사용됩니다. 이 프로퍼티는 [autofillHints]를 재정의할 수 있습니다.
  final AutofillClient? autofillClient;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// 기본값은 [Clip.hardEdge]입니다.
  final Clip clipBehavior;

  /// 복원 ID - [편집 가능한 텍스트]의 스크롤 오프셋을 저장하고 복원할 복원 ID입니다.
  ///
  /// 복원 ID가 제공되면 [편집가능 텍스트]는 현재 스크롤 오프셋을 유지하고 상태 복원 중에 복원합니다.
  ///
  /// 스크롤 오프셋은 제공된 복원 ID를 사용하여 주변 [복원 범위]에서 클레임된 [복원 버킷]에 유지됩니다.
  ///
  /// [편집 가능한 텍스트]의 내용을 유지하고 복원하는 것은 [컨트롤러] 소유자의 책임이며, [컨트롤러]는 해당 목적으로 [복원 가능한 TextEditingController]를 사용할 수 있습니다.
  ///
  /// 참조:
  ///
  ///  * Flutter에서 상태 복원이 어떻게 작동하는지 설명하는 [RestorationManager] 참조.
  final String? restorationId;

  /// {@template flutter.widgets.shadow.scrollBehavior}
  /// 이 위젯에 개별적으로 적용될 [스크롤 비헤이비어]입니다.
  ///
  /// 기본값은 null이며, 상속된 [ScrollBehavior]를 복사 및 수정하여 [스크롤바]와 같은 뷰포트 장식을 변경합니다.
  /// {@endtemplate}
  ///
  /// [스크롤비헤이비어]는 [스크롤피직스]도 제공합니다. [스크롤 물리학]에 명시적인 [스크롤 물리학]이 제공되면, [스크롤 물리학]이 우선합니다,
  /// [스크롤 비헤이비어], 그 다음 상속된 조상 [스크롤 비헤이비어]가 우선합니다.
  ///
  /// 상속된 [ScrollConfiguration]의 [ScrollBehavior]는 기본적으로 [maxLines]가 1보다 큰 경우에만 [스크롤바]를 적용하도록 수정됩니다.
  final ScrollBehavior? scrollBehavior;

  /// {@macro flutter.services.TextInputConfiguration.enableIMEPersonalizedLearning}
  final bool enableIMEPersonalizedLearning;

  /// {@template flutter.widgets.editableText.contentInsertionConfiguration}
  /// 시스템 입력 메서드를 통해 삽입된 미디어 콘텐츠에 대한 핸들러 구성입니다.
  ///
  /// 기본값은 null이며, 이 경우 미디어 콘텐츠 삽입이 비활성화됩니다,
  /// 로 설정하면 시스템에서 텍스트 필드가 미디어 콘텐츠 삽입을 지원하지 않는다는 메시지를 사용자에게 표시합니다.
  ///
  /// 핸들러를 제공하려면 [ContentInsertionConfiguration.onContentInserted]를 설정합니다.
  /// 또한 [ContentInsertionConfiguration.allowedMimeTypes]
  /// 을 설정하여 삽입된 콘텐츠에 허용되는 마임 유형을 제한합니다.
  ///
  /// {도구 다트패드}
  ///
  /// 이 예는 '텍스트 필드'에 삽입된 콘텐츠의 데이터에 액세스하는 방법을 보여줍니다.
  ///
  /// ** 예제 코드 참조: examples/api/lib/widgets/editable_text/editable_text.on_content_inserted.0.dart **
  /// {@end-tool}
  ///
  /// [contentInsertionConfiguration]을 제공하지 않으면 기본적으로 빈 마임 유형 목록이 Flutter 엔진으로 전송됩니다.
  /// 삽입된 콘텐츠에 허용되는 마임 유형을 사용자 지정하려면 핸들러 함수를 제공해야 합니다.
  ///
  /// 핸들러 없이 리치 콘텐츠가 삽입되면 시스템은 현재 텍스트 입력이 리치 콘텐츠 삽입을 지원하지 않는다는 메시지를 사용자에게 표시합니다.
  /// {@endtemplate}
  final ContentInsertionConfiguration? contentInsertionConfiguration;

  /// {@template flutter.widgets.EditableText.contextMenuBuilder}
  /// 사용자가 요청할 때 텍스트 선택 툴바를 빌드합니다.
  ///
  /// primaryAnchor`는 컨텍스트 메뉴의 원하는 앵커 위치이고, `secondaryAnchor`는 메뉴가 맞지 않을 경우 대체 위치입니다.
  ///
  /// buttonItems`는 이 위젯에 대해 기본적으로 빌드되는 버튼을 나타냅니다.
  ///
  /// {@tool 다트패드}
  /// 이 예는 플랫폼의 기본 버튼은 유지하되 모양을 수정하여 메뉴를 사용자 정의하는 방법을 보여줍니다.
  ///
  /// ** examples/api/lib/material/context_menu/editable_text_toolbar_builder.0.dart의 코드를 참조하세요 **.
  /// {@end-tool}
  ///
  /// {@tool 다트패드}
  /// 이 예는 이메일 주소가 현재 선택되어 있을 때만 사용자 지정 버튼을 표시하는 방법을 보여줍니다.
  ///
  /// ** examples/api/lib/material/context_menu/editable_text_toolbar_builder.1.dart의 코드를 참조하세요.
  /// {@end-tool}
  ///
  /// 참조하세요:
  ///   * 현재 플랫폼에 대한 기본 텍스트 선택 도구 모음을 빌드하지만 버튼을 사용자 지정할 수 있는 [AdaptiveTextSelectionToolbar].
  ///   * [ContextMenuButtonItem]이 주어지면 현재 플랫폼에 맞는 버튼 위젯을 빌드하는 [AdaptiveTextSelectionToolbar.getAdaptiveButtons].
  ///   * 웹에서 브라우저의 컨텍스트 메뉴를 비활성화하고 Flutter 렌더링 컨텍스트 메뉴를 표시할 수 있는 [BrowserContextMenu].
  /// {@endtemplate}
  ///
  /// 제공하지 않으면 컨텍스트 메뉴가 표시되지 않습니다.
  final EditableTextContextMenuBuilder? contextMenuBuilder;

  /// {@template flutter.widgets.EditableText.spellCheckConfiguration}
  /// 맞춤법 검사 수행 방법을 자세히 설명하는 구성입니다.
  ///
  /// 텍스트 입력의 맞춤법 검사에 사용되는 [맞춤법 검사 서비스]와 맞춤법이 틀린 단어의 텍스트 스타일에 사용되는 [텍스트 스타일]을 지정합니다.
  ///
  /// [맞춤법 검사 서비스]를 비워두면 [DefaultSpellCheckService]가 지원되지 않는 한 맞춤법 검사가 기본적으로 비활성화됩니다(이 경우 이 서비스가 사용됨). 현재 Android 및 iOS에서만 지원됩니다.
  ///
  /// 이 구성을 null로 남겨두면 맞춤법 검사가 기본적으로 비활성화됩니다.
  /// {@endtemplate}
  final SpellCheckConfiguration? spellCheckConfiguration;

  /// {@macro flutter.widgets.magnifier.TextMagnifierConfiguration.intro}
  ///
  /// {@macro flutter.widgets.magnifier.intro}
  ///
  /// {@macro flutter.widgets.magnifier.TextMagnifierConfiguration.details}
  final TextMagnifierConfiguration magnifierConfiguration;

  bool get _userSelectionEnabled => enableInteractiveSelection && (!readOnly || !obscureText);

  /// 편집 가능한 필드에 대한 이 플랫폼의 기본 선택 메뉴에 있는 버튼을 나타내는 [ContextMenuButtonItem]을 반환합니다.
  ///
  /// 예를 들어, [EditableText]는 이를 사용하여 컨텍스트 메뉴의 기본 버튼을 생성합니다.
  ///
  /// 참조
  ///
  /// * 특정 편집 가능한 텍스트에 대한 [컨텍스트 메뉴 버튼 항목]을 제공하는 [EditableTextState.contextMenuButtonItems].
  /// * 비슷한 역할을 수행하지만 선택 가능하지만 편집할 수 없는 콘텐츠에 대해 [SelectableRegion.getSelectableButtonItems]를 제공합니다.
  /// * 도구 모음 자체를 빌드하고 [AdaptiveTextSelectionToolbar]와 함께 [ContextMenuButtonItem]의 목록을 가져올 수 있는 [AdaptiveTextSelectionToolbar.buttonItems].
  /// * [AdaptiveTextSelectionToolbar.getAdaptiveButtons]는 [ContextMenuButtonItem]이 주어진 현재 플랫폼에 대한 버튼 위젯을 빌드합니다.
  static List<ContextMenuButtonItem> getEditableButtonItems({
    required final ClipboardStatus? clipboardStatus,
    required final VoidCallback? onCopy,
    required final VoidCallback? onCut,
    required final VoidCallback? onPaste,
    required final VoidCallback? onSelectAll,
    required final VoidCallback? onLiveTextInput,
  }) {
    final List<ContextMenuButtonItem> resultButtonItem = <ContextMenuButtonItem>[];

    // Configure button items with clipboard.
    if (onPaste == null || clipboardStatus != ClipboardStatus.unknown) {
      // If the paste button is enabled, don't render anything until the state
      // of the clipboard is known, since it's used to determine if paste is
      // shown.
      resultButtonItem.addAll(<ContextMenuButtonItem>[
        if (onCut != null)
          ContextMenuButtonItem(
            onPressed: onCut,
            type: ContextMenuButtonType.cut,
          ),
        if (onCopy != null)
          ContextMenuButtonItem(
            onPressed: onCopy,
            type: ContextMenuButtonType.copy,
          ),
        if (onPaste != null)
          ContextMenuButtonItem(
            onPressed: onPaste,
            type: ContextMenuButtonType.paste,
          ),
        if (onSelectAll != null)
          ContextMenuButtonItem(
            onPressed: onSelectAll,
            type: ContextMenuButtonType.selectAll,
          ),
      ]);
    }

    // Config button items with Live Text.
    if (onLiveTextInput != null) {
      resultButtonItem.add(ContextMenuButtonItem(
        onPressed: onLiveTextInput,
        type: ContextMenuButtonType.liveTextInput,
      ));
    }

    return resultButtonItem;
  }

  // Infer the keyboard type of an `EditableText` if it's not specified.
  static TextInputType _inferKeyboardType({
    required Iterable<String>? autofillHints,
    required int? maxLines,
  }) {
    if (autofillHints == null || autofillHints.isEmpty) {
      return maxLines == 1 ? TextInputType.text : TextInputType.multiline;
    }

    final String effectiveHint = autofillHints.first;

    // On iOS oftentimes specifying a text content type is not enough to qualify
    // the input field for autofill. The keyboard type also needs to be compatible
    // with the content type. To get autofill to work by default on EditableText,
    // the keyboard type inference on iOS is done differently from other platforms.
    //
    // The entries with "autofill not working" comments are the iOS text content
    // types that should work with the specified keyboard type but won't trigger
    // (even within a native app). Tested on iOS 13.5.
    if (!kIsWeb) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
        case TargetPlatform.macOS:
          const Map<String, TextInputType> iOSKeyboardType = <String, TextInputType> {
            AutofillHints.addressCity : TextInputType.name,
            AutofillHints.addressCityAndState : TextInputType.name, // Autofill not working.
            AutofillHints.addressState : TextInputType.name,
            AutofillHints.countryName : TextInputType.name,
            AutofillHints.creditCardNumber : TextInputType.number,  // Couldn't test.
            AutofillHints.email : TextInputType.emailAddress,
            AutofillHints.familyName : TextInputType.name,
            AutofillHints.fullStreetAddress : TextInputType.name,
            AutofillHints.givenName : TextInputType.name,
            AutofillHints.jobTitle : TextInputType.name,            // Autofill not working.
            AutofillHints.location : TextInputType.name,            // Autofill not working.
            AutofillHints.middleName : TextInputType.name,          // Autofill not working.
            AutofillHints.name : TextInputType.name,
            AutofillHints.namePrefix : TextInputType.name,          // Autofill not working.
            AutofillHints.nameSuffix : TextInputType.name,          // Autofill not working.
            AutofillHints.newPassword : TextInputType.text,
            AutofillHints.newUsername : TextInputType.text,
            AutofillHints.nickname : TextInputType.name,            // Autofill not working.
            AutofillHints.oneTimeCode : TextInputType.number,
            AutofillHints.organizationName : TextInputType.text,    // Autofill not working.
            AutofillHints.password : TextInputType.text,
            AutofillHints.postalCode : TextInputType.name,
            AutofillHints.streetAddressLine1 : TextInputType.name,
            AutofillHints.streetAddressLine2 : TextInputType.name,  // Autofill not working.
            AutofillHints.sublocality : TextInputType.name,         // Autofill not working.
            AutofillHints.telephoneNumber : TextInputType.name,
            AutofillHints.url : TextInputType.url,                  // Autofill not working.
            AutofillHints.username : TextInputType.text,
          };

          final TextInputType? keyboardType = iOSKeyboardType[effectiveHint];
          if (keyboardType != null) {
            return keyboardType;
          }
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          break;
      }
    }

    if (maxLines != 1) {
      return TextInputType.multiline;
    }

    const Map<String, TextInputType> inferKeyboardType = <String, TextInputType> {
      AutofillHints.addressCity : TextInputType.streetAddress,
      AutofillHints.addressCityAndState : TextInputType.streetAddress,
      AutofillHints.addressState : TextInputType.streetAddress,
      AutofillHints.birthday : TextInputType.datetime,
      AutofillHints.birthdayDay : TextInputType.datetime,
      AutofillHints.birthdayMonth : TextInputType.datetime,
      AutofillHints.birthdayYear : TextInputType.datetime,
      AutofillHints.countryCode : TextInputType.number,
      AutofillHints.countryName : TextInputType.text,
      AutofillHints.creditCardExpirationDate : TextInputType.datetime,
      AutofillHints.creditCardExpirationDay : TextInputType.datetime,
      AutofillHints.creditCardExpirationMonth : TextInputType.datetime,
      AutofillHints.creditCardExpirationYear : TextInputType.datetime,
      AutofillHints.creditCardFamilyName : TextInputType.name,
      AutofillHints.creditCardGivenName : TextInputType.name,
      AutofillHints.creditCardMiddleName : TextInputType.name,
      AutofillHints.creditCardName : TextInputType.name,
      AutofillHints.creditCardNumber : TextInputType.number,
      AutofillHints.creditCardSecurityCode : TextInputType.number,
      AutofillHints.creditCardType : TextInputType.text,
      AutofillHints.email : TextInputType.emailAddress,
      AutofillHints.familyName : TextInputType.name,
      AutofillHints.fullStreetAddress : TextInputType.streetAddress,
      AutofillHints.gender : TextInputType.text,
      AutofillHints.givenName : TextInputType.name,
      AutofillHints.impp : TextInputType.url,
      AutofillHints.jobTitle : TextInputType.text,
      AutofillHints.language : TextInputType.text,
      AutofillHints.location : TextInputType.streetAddress,
      AutofillHints.middleInitial : TextInputType.name,
      AutofillHints.middleName : TextInputType.name,
      AutofillHints.name : TextInputType.name,
      AutofillHints.namePrefix : TextInputType.name,
      AutofillHints.nameSuffix : TextInputType.name,
      AutofillHints.newPassword : TextInputType.text,
      AutofillHints.newUsername : TextInputType.text,
      AutofillHints.nickname : TextInputType.text,
      AutofillHints.oneTimeCode : TextInputType.text,
      AutofillHints.organizationName : TextInputType.text,
      AutofillHints.password : TextInputType.text,
      AutofillHints.photo : TextInputType.text,
      AutofillHints.postalAddress : TextInputType.streetAddress,
      AutofillHints.postalAddressExtended : TextInputType.streetAddress,
      AutofillHints.postalAddressExtendedPostalCode : TextInputType.number,
      AutofillHints.postalCode : TextInputType.number,
      AutofillHints.streetAddressLevel1 : TextInputType.streetAddress,
      AutofillHints.streetAddressLevel2 : TextInputType.streetAddress,
      AutofillHints.streetAddressLevel3 : TextInputType.streetAddress,
      AutofillHints.streetAddressLevel4 : TextInputType.streetAddress,
      AutofillHints.streetAddressLine1 : TextInputType.streetAddress,
      AutofillHints.streetAddressLine2 : TextInputType.streetAddress,
      AutofillHints.streetAddressLine3 : TextInputType.streetAddress,
      AutofillHints.sublocality : TextInputType.streetAddress,
      AutofillHints.telephoneNumber : TextInputType.phone,
      AutofillHints.telephoneNumberAreaCode : TextInputType.phone,
      AutofillHints.telephoneNumberCountryCode : TextInputType.phone,
      AutofillHints.telephoneNumberDevice : TextInputType.phone,
      AutofillHints.telephoneNumberExtension : TextInputType.phone,
      AutofillHints.telephoneNumberLocal : TextInputType.phone,
      AutofillHints.telephoneNumberLocalPrefix : TextInputType.phone,
      AutofillHints.telephoneNumberLocalSuffix : TextInputType.phone,
      AutofillHints.telephoneNumberNational : TextInputType.phone,
      AutofillHints.transactionAmount : TextInputType.numberWithOptions(decimal: true),
      AutofillHints.transactionCurrency : TextInputType.text,
      AutofillHints.url : TextInputType.url,
      AutofillHints.username : TextInputType.text,
    };

    return inferKeyboardType[effectiveHint] ?? TextInputType.text;
  }

  @override
  EditableTextState createState() => EditableTextState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>('controller', controller));
    properties.add(DiagnosticsProperty<FocusNode>('focusNode', focusNode));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText, defaultValue: false));
    properties.add(DiagnosticsProperty<bool>('readOnly', readOnly, defaultValue: false));
    properties.add(DiagnosticsProperty<bool>('autocorrect', autocorrect, defaultValue: true));
    properties.add(EnumProperty<SmartDashesType>('smartDashesType', smartDashesType, defaultValue: obscureText ? SmartDashesType.disabled : SmartDashesType.enabled));
    properties.add(EnumProperty<SmartQuotesType>('smartQuotesType', smartQuotesType, defaultValue: obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled));
    properties.add(DiagnosticsProperty<bool>('enableSuggestions', enableSuggestions, defaultValue: true));
    style.debugFillProperties(properties);
    properties.add(EnumProperty<TextAlign>('textAlign', textAlign, defaultValue: null));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection, defaultValue: null));
    properties.add(DiagnosticsProperty<Locale>('locale', locale, defaultValue: null));
    properties.add(DoubleProperty('textScaleFactor', textScaleFactor, defaultValue: null));
    properties.add(IntProperty('maxLines', maxLines, defaultValue: 1));
    properties.add(IntProperty('minLines', minLines, defaultValue: null));
    properties.add(DiagnosticsProperty<bool>('expands', expands, defaultValue: false));
    properties.add(DiagnosticsProperty<bool>('autofocus', autofocus, defaultValue: false));
    properties.add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType, defaultValue: null));
    properties.add(DiagnosticsProperty<ScrollController>('scrollController', scrollController, defaultValue: null));
    properties.add(DiagnosticsProperty<ScrollPhysics>('scrollPhysics', scrollPhysics, defaultValue: null));
    properties.add(DiagnosticsProperty<Iterable<String>>('autofillHints', autofillHints, defaultValue: null));
    properties.add(DiagnosticsProperty<TextHeightBehavior>('textHeightBehavior', textHeightBehavior, defaultValue: null));
    properties.add(DiagnosticsProperty<bool>('scribbleEnabled', scribbleEnabled, defaultValue: true));
    properties.add(DiagnosticsProperty<bool>('enableIMEPersonalizedLearning', enableIMEPersonalizedLearning, defaultValue: true));
    properties.add(DiagnosticsProperty<bool>('enableInteractiveSelection', enableInteractiveSelection, defaultValue: true));
    properties.add(DiagnosticsProperty<UndoHistoryController>('undoController', undoController, defaultValue: null));
    properties.add(DiagnosticsProperty<SpellCheckConfiguration>('spellCheckConfiguration', spellCheckConfiguration, defaultValue: null));
    properties.add(DiagnosticsProperty<List<String>>('contentCommitMimeTypes', contentInsertionConfiguration?.allowedMimeTypes ?? const <String>[], defaultValue: contentInsertionConfiguration == null ? const <String>[] : kDefaultContentInsertionMimeTypes));
  }
}

/// [편집 가능한 텍스트]에 대한 상태입니다.
class EditableTextState extends State<EditableText> with AutomaticKeepAliveClientMixin<EditableText>, WidgetsBindingObserver, TickerProviderStateMixin<EditableText>, TextSelectionDelegate, TextInputClient implements AutofillClient {
  Timer? _cursorTimer;
  AnimationController get _cursorBlinkOpacityController {
    return _backingCursorBlinkOpacityController ??= AnimationController(
      vsync: this,
    )..addListener(_onCursorColorTick);
  }
  AnimationController? _backingCursorBlinkOpacityController;
  late final Simulation _iosBlinkCursorSimulation = _DiscreteKeyFrameSimulation.iOSBlinkingCaret();

  final ValueNotifier<bool> _cursorVisibilityNotifier = ValueNotifier<bool>(true);
  final GlobalKey _editableKey = GlobalKey();

  /// 클립보드에 붙여넣기가 가능한지 여부를 감지합니다.
  final ClipboardStatusNotifier clipboardStatus = ClipboardStatusNotifier();

  /// 라이브 텍스트 입력이 활성화되었는지 여부를 감지합니다.
  ///
  /// 참조:
  ///  * 라이브 텍스트 입력의 사용 가능성을 얻을 수 있는 [LiveText].
  final LiveTextInputStatusNotifier? _liveTextInputStatus =
      kIsWeb ? null : LiveTextInputStatusNotifier();

  TextInputConnection? _textInputConnection;
  bool get _hasInputConnection => _textInputConnection?.attached ?? false;

  TextSelectionOverlay? _selectionOverlay;

  final GlobalKey _scrollableKey = GlobalKey();
  ScrollController? _internalScrollController;
  ScrollController get _scrollController => widget.scrollController ?? (_internalScrollController ??= ScrollController());

  final LayerLink _toolbarLayerLink = LayerLink();
  final LayerLink _startHandleLayerLink = LayerLink();
  final LayerLink _endHandleLayerLink = LayerLink();

  bool _didAutoFocus = false;

  AutofillGroupState? _currentAutofillScope;
  @override
  AutofillScope? get currentAutofillScope => _currentAutofillScope;

  AutofillClient get _effectiveAutofillClient => widget.autofillClient ?? this;

  late SpellCheckConfiguration _spellCheckConfiguration;
  late TextStyle _style;

  /// 맞춤법 검사 수행 방법을 결정하는 구성입니다.
  ///
  /// 이 구성에는 달리 지정되지 않은 경우 [맞춤법 검사 서비스]에 대한 기본값이 포함됩니다.
  ///
  /// 또한 참조하세요:
  ///  * 기본적으로 사용되는 맞춤법 검사 서비스인 [DefaultSpellCheckService] 참조.
  @visibleForTesting
  SpellCheckConfiguration get spellCheckConfiguration => _spellCheckConfiguration;

  /// 맞춤법 검사 활성화 여부.
  ///
  /// 위젯에 [맞춤법 검사 구성]이 지정되어 있으면 맞춤법 검사가 활성화됩니다.
  bool get spellCheckEnabled => _spellCheckConfiguration.spellCheckEnabled;

  /// 텍스트 입력에 대한 가장 최신 맞춤법 검사 결과입니다.
  ///
  /// 이 결과는 [맞춤법 검사 서비스]를 통한 맞춤법 검사 호출을 통해 업데이트되며, 이 위젯에서 텍스트 입력에 대한 [텍스트 스팬] 트리와 철자가 틀린 단어의 대체 제안 메뉴를 구축하는 데 사용됩니다.
  SpellCheckResults? spellCheckResults;

  bool get _spellCheckResultsReceived => spellCheckEnabled && spellCheckResults != null && spellCheckResults!.suggestionSpans.isNotEmpty;

  /// 텍스트 편집을 위해 플랫폼과 입력 연결을 만들지 여부입니다.
  ///
  /// 읽기 전용 입력 필드는 텍스트 편집 기능(예: 가상 키보드)이 필요하지 않으므로 플랫폼과 연결할 필요가 없습니다.
  ///
  /// 웹에서는 읽기 전용 입력 필드에서 다음과 같은 일부 브라우저 기능이 계속 작동하기를 원하기 때문에 항상 연결이 필요합니다:
  ///
  /// - 관련 컨텍스트 메뉴.
  /// - 복사하려면 cmd/ctrl+c 단축키를 누르세요.
  /// - 모두 선택하려면 cmd/ctrl+a를 누르세요.
  /// - 물리적 키보드를 사용하여 선택 내용 변경하기.
  bool get _shouldCreateInputConnection => kIsWeb || !widget.readOnly;

  // The time it takes for the floating cursor to snap to the text aligned
  // cursor position after the user has finished placing it.
  static const Duration _floatingCursorResetTime = Duration(milliseconds: 125);

  AnimationController? _floatingCursorResetController;

  Orientation? _lastOrientation;

  @override
  bool get wantKeepAlive => widget.focusNode.hasFocus;

  Color get _cursorColor => widget.cursorColor.withOpacity(_cursorBlinkOpacityController.value);

  @override
  bool get cutEnabled {
    if (widget.selectionControls is! TextSelectionHandleControls) {
      return widget.toolbarOptions.cut && !widget.readOnly && !widget.obscureText;
    }
    return !widget.readOnly
        && !widget.obscureText
        && !textEditingValue.selection.isCollapsed;
  }

  @override
  bool get copyEnabled {
    if (widget.selectionControls is! TextSelectionHandleControls) {
      return widget.toolbarOptions.copy && !widget.obscureText;
    }
    return !widget.obscureText
        && !textEditingValue.selection.isCollapsed;
  }

  @override
  bool get pasteEnabled {
    if (widget.selectionControls is! TextSelectionHandleControls) {
      return widget.toolbarOptions.paste && !widget.readOnly;
    }
    return !widget.readOnly
        && (clipboardStatus.value == ClipboardStatus.pasteable);
  }

  @override
  bool get selectAllEnabled {
    if (widget.selectionControls is! TextSelectionHandleControls) {
      return widget.toolbarOptions.selectAll && (!widget.readOnly || !widget.obscureText) && widget.enableInteractiveSelection;
    }

    if (!widget.enableInteractiveSelection
        || (widget.readOnly
            && widget.obscureText)) {
      return false;
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return false;
      case TargetPlatform.iOS:
        return textEditingValue.text.isNotEmpty
            && textEditingValue.selection.isCollapsed;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return textEditingValue.text.isNotEmpty
           && !(textEditingValue.selection.start == 0
               && textEditingValue.selection.end == textEditingValue.text.length);
    }
  }

  @override
  bool get liveTextInputEnabled {
    return _liveTextInputStatus?.value == LiveTextInputStatus.enabled &&
        !widget.obscureText &&
        !widget.readOnly &&
        textEditingValue.selection.isCollapsed;
  }

  void _onChangedClipboardStatus() {
    setState(() {
      // Inform the widget that the value of clipboardStatus has changed.
    });
  }

  void _onChangedLiveTextInputStatus() {
    setState(() {
      // Inform the widget that the value of liveTextInputStatus has changed.
    });
  }

  TextEditingValue get _textEditingValueforTextLayoutMetrics {
    final Widget? editableWidget =_editableKey.currentContext?.widget;
    if (editableWidget is! _Editable) {
      throw StateError('_Editable must be mounted.');
    }
    return editableWidget.value;
  }

  /// 현재 선택 항목을 [클립보드]로 복사합니다.
  @override
  void copySelection(SelectionChangedCause cause) {
    final TextSelection selection = textEditingValue.selection;
    if (selection.isCollapsed || widget.obscureText) {
      return;
    }
    final String text = textEditingValue.text;
    Clipboard.setData(ClipboardData(text: selection.textInside(text)));
    if (cause == SelectionChangedCause.toolbar) {
      bringIntoView(textEditingValue.selection.extent);
      hideToolbar(false);

      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
        case TargetPlatform.macOS:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          break;
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          // Collapse the selection and hide the toolbar and handles.
          userUpdateTextEditingValue(
            TextEditingValue(
              text: textEditingValue.text,
              selection: TextSelection.collapsed(offset: textEditingValue.selection.end),
            ),
            SelectionChangedCause.toolbar,
          );
      }
    }
    clipboardStatus.update();
  }

  /// 현재 선택 내용을 [클립보드]로 잘라내기.
  @override
  void cutSelection(SelectionChangedCause cause) {
    if (widget.readOnly || widget.obscureText) {
      return;
    }
    final TextSelection selection = textEditingValue.selection;
    final String text = textEditingValue.text;
    if (selection.isCollapsed) {
      return;
    }
    Clipboard.setData(ClipboardData(text: selection.textInside(text)));
    _replaceText(ReplaceTextIntent(textEditingValue, '', selection, cause));
    if (cause == SelectionChangedCause.toolbar) {
      // Schedule a call to bringIntoView() after renderEditable updates.
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          bringIntoView(textEditingValue.selection.extent);
        }
      });
      hideToolbar();
    }
    clipboardStatus.update();
  }

  /// [클립보드]에서 텍스트 붙여넣기.
  @override
  Future<void> pasteText(SelectionChangedCause cause) async {
    if (widget.readOnly) {
      return;
    }
    final TextSelection selection = textEditingValue.selection;
    if (!selection.isValid) {
      return;
    }
    // Snapshot the input before using `await`.
    // See https://github.com/flutter/flutter/issues/11427
    final ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data == null) {
      return;
    }

    // After the paste, the cursor should be collapsed and located after the
    // pasted content.
    final int lastSelectionIndex = math.max(selection.baseOffset, selection.extentOffset);
    final TextEditingValue collapsedTextEditingValue = textEditingValue.copyWith(
      selection: TextSelection.collapsed(offset: lastSelectionIndex),
    );

    userUpdateTextEditingValue(
      collapsedTextEditingValue.replaced(selection, data.text!),
      cause,
    );
    if (cause == SelectionChangedCause.toolbar) {
      // Schedule a call to bringIntoView() after renderEditable updates.
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          bringIntoView(textEditingValue.selection.extent);
        }
      });
      hideToolbar();
    }
  }

  /// 전체 텍스트 값을 선택합니다.
  @override
  void selectAll(SelectionChangedCause cause) {
    if (widget.readOnly && widget.obscureText) {
      // If we can't modify it, and we can't copy it, there's no point in
      // selecting it.
      return;
    }
    userUpdateTextEditingValue(
      textEditingValue.copyWith(
        selection: TextSelection(baseOffset: 0, extentOffset: textEditingValue.text.length),
      ),
      cause,
    );

    if (cause == SelectionChangedCause.toolbar) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
        case TargetPlatform.iOS:
        case TargetPlatform.fuchsia:
          break;
        case TargetPlatform.macOS:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          hideToolbar();
      }
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.windows:
          bringIntoView(textEditingValue.selection.extent);
        case TargetPlatform.macOS:
        case TargetPlatform.iOS:
          break;
      }
    }
  }

  void _startLiveTextInput(SelectionChangedCause cause) {
    if (!liveTextInputEnabled) {
      return;
    }
    if (_hasInputConnection) {
      LiveText.startLiveTextInput();
    }
    if (cause == SelectionChangedCause.toolbar) {
      hideToolbar();
    }
  }

  /// 이진 검색을 사용하여 제공된 인덱스와 일치하는 지정된 [제안 범위]를 찾습니다.
  ///
  /// 또한 참조하세요:
  ///
  ///  * 이 메서드를 사용하여 철자가 틀린 단어에 대해 도구 모음에 올바른 제안을 렌더링하는 머티리얼 스타일 맞춤법 검사 제안 도구 모음인 [SpellCheckSuggestionsToolbar].
  SuggestionSpan? findSuggestionSpanAtCursorIndex(int cursorIndex) {
    if (!_spellCheckResultsReceived
        || spellCheckResults!.suggestionSpans.last.range.end < cursorIndex) {
      // No spell check results have been received or the cursor index is out
      // of range that suggestionSpans covers.
      return null;
    }

    final List<SuggestionSpan> suggestionSpans = spellCheckResults!.suggestionSpans;
    int leftIndex = 0;
    int rightIndex = suggestionSpans.length - 1;
    int midIndex = 0;

    while (leftIndex <= rightIndex) {
      midIndex = ((leftIndex + rightIndex) / 2).floor();
      final int currentSpanStart = suggestionSpans[midIndex].range.start;
      final int currentSpanEnd = suggestionSpans[midIndex].range.end;

      if (cursorIndex <= currentSpanEnd && cursorIndex >= currentSpanStart) {
        return suggestionSpans[midIndex];
      }
      else if (cursorIndex <= currentSpanStart) {
        rightIndex = midIndex - 1;
      }
      else {
        leftIndex = midIndex + 1;
      }
    }
    return null;
  }

  /// 맞춤법 검사를 수행하는 데 사용되는 [맞춤법 검사 구성]을 유추합니다.
  ///
  /// 맞춤법 검사가 활성화된 경우, 지정하지 않은 경우 [맞춤법 검사 서비스]의 값을 유추하려고 시도합니다.
  static SpellCheckConfiguration _inferSpellCheckConfiguration(SpellCheckConfiguration? configuration) {
    final SpellCheckService? spellCheckService = configuration?.spellCheckService;
    final bool spellCheckAutomaticallyDisabled = configuration == null || configuration == const SpellCheckConfiguration.disabled();
    final bool spellCheckServiceIsConfigured = spellCheckService != null || spellCheckService == null && WidgetsBinding.instance.platformDispatcher.nativeSpellCheckServiceDefined;
    if (spellCheckAutomaticallyDisabled || !spellCheckServiceIsConfigured) {
      // Only enable spell check if a non-disabled configuration is provided
      // and if that configuration does not specify a spell check service,
      // a native spell checker must be supported.
      assert(() {
        if (!spellCheckAutomaticallyDisabled && !spellCheckServiceIsConfigured) {
          FlutterError.reportError(
            FlutterErrorDetails(
              exception: FlutterError(
                'Spell check was enabled with spellCheckConfiguration, but the '
                'current platform does not have a supported spell check '
                'service, and none was provided. Consider disabling spell '
                'check for this platform or passing a SpellCheckConfiguration '
                'with a specified spell check service.',
              ),
              library: 'widget library',
              stack: StackTrace.current,
            ),
          );
        }
        return true;
      }());
      return const SpellCheckConfiguration.disabled();
    }

    return configuration.copyWith(spellCheckService: spellCheckService ?? DefaultSpellCheckService());
  }

  /// 주어진 [툴바 옵션]에 대한 [ContextMenuButtonItem]을 반환합니다.
  @Deprecated(
    'Use `contextMenuBuilder` instead of `toolbarOptions`. '
    'This feature was deprecated after v3.3.0-0.5.pre.',
  )
  List<ContextMenuButtonItem>? buttonItemsForToolbarOptions([TargetPlatform? targetPlatform]) {
    final ToolbarOptions toolbarOptions = widget.toolbarOptions;
    if (toolbarOptions == ToolbarOptions.empty) {
      return null;
    }
    return <ContextMenuButtonItem>[
      if (toolbarOptions.cut && cutEnabled)
        ContextMenuButtonItem(
          onPressed: () {
            cutSelection(SelectionChangedCause.toolbar);
          },
          type: ContextMenuButtonType.cut,
        ),
      if (toolbarOptions.copy && copyEnabled)
        ContextMenuButtonItem(
          onPressed: () {
            copySelection(SelectionChangedCause.toolbar);
          },
          type: ContextMenuButtonType.copy,
        ),
      if (toolbarOptions.paste && pasteEnabled)
        ContextMenuButtonItem(
          onPressed: () {
            pasteText(SelectionChangedCause.toolbar);
          },
          type: ContextMenuButtonType.paste,
        ),
      if (toolbarOptions.selectAll && selectAllEnabled)
        ContextMenuButtonItem(
          onPressed: () {
            selectAll(SelectionChangedCause.toolbar);
          },
          type: ContextMenuButtonType.selectAll,
        ),
    ];
  }

  /// 지정된 [EditableTextState]에 대한 선택 영역의 시작과 끝의 줄 높이를 가져옵니다.
  _GlyphHeights _getGlyphHeights() {
    final TextSelection selection = textEditingValue.selection;

    // Only calculate handle rects if the text in the previous frame
    // is the same as the text in the current frame. This is done because
    // widget.renderObject contains the renderEditable from the previous frame.
    // If the text changed between the current and previous frames then
    // widget.renderObject.getRectForComposingRange might fail. In cases where
    // the current frame is different from the previous we fall back to
    // renderObject.preferredLineHeight.
    final InlineSpan span = renderEditable.text!;
    final String prevText = span.toPlainText();
    final String currText = textEditingValue.text;
    if (prevText != currText || !selection.isValid || selection.isCollapsed) {
      return _GlyphHeights(
        start: renderEditable.preferredLineHeight,
        end: renderEditable.preferredLineHeight,
      );
    }

    final String selectedGraphemes = selection.textInside(currText);
    final int firstSelectedGraphemeExtent = selectedGraphemes.characters.first.length;
    final Rect? startCharacterRect = renderEditable.getRectForComposingRange(TextRange(
      start: selection.start,
      end: selection.start + firstSelectedGraphemeExtent,
    ));
    final int lastSelectedGraphemeExtent = selectedGraphemes.characters.last.length;
    final Rect? endCharacterRect = renderEditable.getRectForComposingRange(TextRange(
      start: selection.end - lastSelectedGraphemeExtent,
      end: selection.end,
    ));
    return _GlyphHeights(
      start: startCharacterRect?.height ?? renderEditable.preferredLineHeight,
      end: endCharacterRect?.height ?? renderEditable.preferredLineHeight,
    );
  }

  /// {@template flutter.widgets.EditableText.getAnchors}
  /// 기본 컨텍스트 메뉴의 앵커 포인트를 반환합니다.
  /// {@endtemplate}
  ///
  /// 참조
  ///
  ///  * 기본 컨텍스트 메뉴 버튼에 대한 [ContextMenuButtonItems]를 제공하는 [contextMenuButtonItems].
  TextSelectionToolbarAnchors get contextMenuAnchors {
    if (renderEditable.lastSecondaryTapDownPosition != null) {
      return TextSelectionToolbarAnchors(
        primaryAnchor: renderEditable.lastSecondaryTapDownPosition!,
      );
    }

    final _GlyphHeights glyphHeights = _getGlyphHeights();
    final TextSelection selection = textEditingValue.selection;
    final List<TextSelectionPoint> points =
        renderEditable.getEndpointsForSelection(selection);
    return TextSelectionToolbarAnchors.fromSelection(
      renderBox: renderEditable,
      startGlyphHeight: glyphHeights.start,
      endGlyphHeight: glyphHeights.end,
      selectionEndpoints: points,
    );
  }

  /// 이 플랫폼의 [EditableText]에 대한 기본 선택 메뉴에 있는 버튼을 나타내는 [ContextMenuButtonItem]을 반환합니다.
  ///
  /// 참조
  ///
  /// * 비슷한 역할을 수행하는 [EditableText.getEditableButtonItems] 참조,
  ///   하지만 편집 가능한 모든 필드에 적용되며, 특히 EditableText에만 적용되지 않습니다.
  /// * 비슷한 역할을 수행하지만 선택 가능하지만 편집할 수 없는 콘텐츠에 대해 [SelectableRegionState.contextMenuButtonItems]가 있습니다.
  /// * 기본 컨텍스트 메뉴의 앵커 포인트를 제공하는 [contextMenuAnchors].
  /// * 도구 모음 자체를 빌드하고 [AdaptiveTextSelectionToolbar]와 함께 [ContextMenuButtonItem]의 목록을 가져올 수 있는 [AdaptiveTextSelectionToolbar.buttonItems].
  /// * [AdaptiveTextSelectionToolbar.getAdaptiveButtons]는 [ContextMenuButtonItem]이 주어지면 현재 플랫폼에 맞는 버튼 위젯을 빌드합니다.
  List<ContextMenuButtonItem> get contextMenuButtonItems {
    return buttonItemsForToolbarOptions() ?? EditableText.getEditableButtonItems(
      clipboardStatus: clipboardStatus.value,
      onCopy: copyEnabled
          ? () => copySelection(SelectionChangedCause.toolbar)
          : null,
      onCut: cutEnabled
          ? () => cutSelection(SelectionChangedCause.toolbar)
          : null,
      onPaste: pasteEnabled
          ? () => pasteText(SelectionChangedCause.toolbar)
          : null,
      onSelectAll: selectAllEnabled
          ? () => selectAll(SelectionChangedCause.toolbar)
          : null,
      onLiveTextInput: liveTextInputEnabled
          ? () => _startLiveTextInput(SelectionChangedCause.toolbar)
          : null,
    );
  }

  // State lifecycle:

  @override
  void initState() {
    super.initState();
    _liveTextInputStatus?.addListener(_onChangedLiveTextInputStatus);
    clipboardStatus.addListener(_onChangedClipboardStatus);
    widget.controller.addListener(_didChangeTextEditingValue);
    widget.focusNode.addListener(_handleFocusChanged);
    _scrollController.addListener(_onEditableScroll);
    _cursorVisibilityNotifier.value = widget.showCursor;
    _spellCheckConfiguration = _inferSpellCheckConfiguration(widget.spellCheckConfiguration);
  }

  // Whether `TickerMode.of(context)` is true and animations (like blinking the
  // cursor) are supposed to run.
  bool _tickersEnabled = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _style = MediaQuery.boldTextOf(context)
        ? widget.style.merge(const TextStyle(fontWeight: FontWeight.bold))
        : widget.style;

    final AutofillGroupState? newAutofillGroup = AutofillGroup.maybeOf(context);
    if (currentAutofillScope != newAutofillGroup) {
      _currentAutofillScope?.unregister(autofillId);
      _currentAutofillScope = newAutofillGroup;
      _currentAutofillScope?.register(_effectiveAutofillClient);
    }

    if (!_didAutoFocus && widget.autofocus) {
      _didAutoFocus = true;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (mounted && renderEditable.hasSize) {
          _flagInternalFocus();
          FocusScope.of(context).autofocus(widget.focusNode);
        }
      });
    }

    // Restart or stop the blinking cursor when TickerMode changes.
    final bool newTickerEnabled = TickerMode.of(context);
    if (_tickersEnabled != newTickerEnabled) {
      _tickersEnabled = newTickerEnabled;
      if (_showBlinkingCursor) {
        _startCursorBlink();
      } else if (!_tickersEnabled && _cursorTimer != null) {
        _stopCursorBlink();
      }
    }

    if (defaultTargetPlatform != TargetPlatform.iOS && defaultTargetPlatform != TargetPlatform.android) {
      return;
    }

    // Hide the text selection toolbar on mobile when orientation changes.
    final Orientation orientation = MediaQuery.orientationOf(context);
    if (_lastOrientation == null) {
      _lastOrientation = orientation;
      return;
    }
    if (orientation != _lastOrientation) {
      _lastOrientation = orientation;
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        hideToolbar(false);
      }
      if (defaultTargetPlatform == TargetPlatform.android) {
        hideToolbar();
      }
    }
  }

  @override
  void didUpdateWidget(EditableText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller.removeListener(_didChangeTextEditingValue);
      widget.controller.addListener(_didChangeTextEditingValue);
      _updateRemoteEditingValueIfNeeded();
    }
    if (widget.controller.selection != oldWidget.controller.selection) {
      _selectionOverlay?.update(_value);
    }
    _selectionOverlay?.handlesVisible = widget.showSelectionHandles;

    if (widget.autofillClient != oldWidget.autofillClient) {
      _currentAutofillScope?.unregister(oldWidget.autofillClient?.autofillId ?? autofillId);
      _currentAutofillScope?.register(_effectiveAutofillClient);
    }

    if (widget.focusNode != oldWidget.focusNode) {
      oldWidget.focusNode.removeListener(_handleFocusChanged);
      widget.focusNode.addListener(_handleFocusChanged);
      updateKeepAlive();
    }

    if (widget.scrollController != oldWidget.scrollController) {
      (oldWidget.scrollController ?? _internalScrollController)?.removeListener(_onEditableScroll);
      _scrollController.addListener(_onEditableScroll);
    }

    if (!_shouldCreateInputConnection) {
      _closeInputConnectionIfNeeded();
    } else if (oldWidget.readOnly && _hasFocus) {
      // _openInputConnection must be called after layout information is available.
      // See https://github.com/flutter/flutter/issues/126312
      SchedulerBinding.instance.addPostFrameCallback((Duration _) {
        _openInputConnection();
      });
    }

    if (kIsWeb && _hasInputConnection) {
      if (oldWidget.readOnly != widget.readOnly) {
        _textInputConnection!.updateConfig(_effectiveAutofillClient.textInputConfiguration);
      }
    }

    if (_hasInputConnection) {
      if (oldWidget.obscureText != widget.obscureText) {
        _textInputConnection!.updateConfig(_effectiveAutofillClient.textInputConfiguration);
      }
    }

    if (widget.style != oldWidget.style) {
      // The _textInputConnection will pick up the new style when it attaches in
      // _openInputConnection.
      _style = MediaQuery.boldTextOf(context)
          ? widget.style.merge(const TextStyle(fontWeight: FontWeight.bold))
          : widget.style;
      if (_hasInputConnection) {
        _textInputConnection!.setStyle(
          fontFamily: _style.fontFamily,
          fontSize: _style.fontSize,
          fontWeight: _style.fontWeight,
          textDirection: _textDirection,
          textAlign: widget.textAlign,
        );
      }
    }

    if (widget.showCursor != oldWidget.showCursor) {
      _startOrStopCursorTimerIfNeeded();
    }
    final bool canPaste = widget.selectionControls is TextSelectionHandleControls
        ? pasteEnabled
        : widget.selectionControls?.canPaste(this) ?? false;
    if (widget.selectionEnabled && pasteEnabled && canPaste) {
      clipboardStatus.update();
    }
  }

  @override
  void dispose() {
    _internalScrollController?.dispose();
    _currentAutofillScope?.unregister(autofillId);
    widget.controller.removeListener(_didChangeTextEditingValue);
    _floatingCursorResetController?.dispose();
    _floatingCursorResetController = null;
    _closeInputConnectionIfNeeded();
    assert(!_hasInputConnection);
    _cursorTimer?.cancel();
    _cursorTimer = null;
    _backingCursorBlinkOpacityController?.dispose();
    _backingCursorBlinkOpacityController = null;
    _selectionOverlay?.dispose();
    _selectionOverlay = null;
    widget.focusNode.removeListener(_handleFocusChanged);
    WidgetsBinding.instance.removeObserver(this);
    _liveTextInputStatus?.removeListener(_onChangedLiveTextInputStatus);
    _liveTextInputStatus?.dispose();
    clipboardStatus.removeListener(_onChangedClipboardStatus);
    clipboardStatus.dispose();
    _cursorVisibilityNotifier.dispose();
    FocusManager.instance.removeListener(_unflagInternalFocus);
    super.dispose();
    assert(_batchEditDepth <= 0, 'unfinished batch edits: $_batchEditDepth');
  }

  // TextInputClient implementation:

  /// 플랫폼 텍스트 입력 플러그인의 마지막으로 알려진 [TextEditingValue].
  ///
  /// 이 값은 플랫폼 텍스트 입력 플러그인이 [updateEditingValue]를 통해 새 업데이트를 보내거나, [EditableText]가 [TextInputConnection.setEditingState]를 호출하여 플랫폼 텍스트 입력 플러그인의 [TextEditingValue]를 덮어쓸 때 업데이트됩니다.
  ///
  /// 원격 값이 오래되어 업데이트가 필요한지 여부를 결정하기 위해 [_updateRemoteEditingValueIfNeeded]에서 사용됩니다.
  TextEditingValue? _lastKnownRemoteTextEditingValue;

  @override
  TextEditingValue get currentTextEditingValue => _value;

  @override
  void updateEditingValue(TextEditingValue value) {
    // This method handles text editing state updates from the platform text
    // input plugin. The [EditableText] may not have the focus or an open input
    // connection, as autofill can update a disconnected [EditableText].

    // Since we still have to support keyboard select, this is the best place
    // to disable text updating.
    if (!_shouldCreateInputConnection) {
      return;
    }

    if (_checkNeedsAdjustAffinity(value)) {
      value = value.copyWith(selection: value.selection.copyWith(affinity: _value.selection.affinity));
    }

    if (widget.readOnly) {
      // In the read-only case, we only care about selection changes, and reject
      // everything else.
      value = _value.copyWith(selection: value.selection);
    }
    _lastKnownRemoteTextEditingValue = value;

    if (value == _value) {
      // This is possible, for example, when the numeric keyboard is input,
      // the engine will notify twice for the same value.
      // Track at https://github.com/flutter/flutter/issues/65811
      return;
    }

    if (value.text == _value.text && value.composing == _value.composing) {
      // `selection` is the only change.
      SelectionChangedCause cause;
      if (_textInputConnection?.scribbleInProgress ?? false) {
        cause = SelectionChangedCause.scribble;
      } else if (_pointOffsetOrigin != null) {
        // For floating cursor selection when force pressing the space bar.
        cause = SelectionChangedCause.forcePress;
      } else {
        cause = SelectionChangedCause.keyboard;
      }
      _handleSelectionChanged(value.selection, cause);
    } else {
      if (value.text != _value.text) {
        // Hide the toolbar if the text was changed, but only hide the toolbar
        // overlay; the selection handle's visibility will be handled
        // by `_handleSelectionChanged`. https://github.com/flutter/flutter/issues/108673
        hideToolbar(false);
      }
      _currentPromptRectRange = null;

      final bool revealObscuredInput = _hasInputConnection
                                    && widget.obscureText
                                    && WidgetsBinding.instance.platformDispatcher.brieflyShowPassword
                                    && value.text.length == _value.text.length + 1;

      _obscureShowCharTicksPending = revealObscuredInput ? _kObscureShowLatestCharCursorTicks : 0;
      _obscureLatestCharIndex = revealObscuredInput ? _value.selection.baseOffset : null;
      _formatAndSetValue(value, SelectionChangedCause.keyboard);
    }

    if (_showBlinkingCursor && _cursorTimer != null) {
      // To keep the cursor from blinking while typing, restart the timer here.
      _stopCursorBlink(resetCharTicks: false);
      _startCursorBlink();
    }

    // Wherever the value is changed by the user, schedule a showCaretOnScreen
    // to make sure the user can see the changes they just made. Programmatic
    // changes to `textEditingValue` do not trigger the behavior even if the
    // text field is focused.
    _scheduleShowCaretOnScreen(withAnimation: true);
  }

  bool _checkNeedsAdjustAffinity(TextEditingValue value) {
    // Trust the engine affinity if the text changes or selection changes.
    return value.text == _value.text &&
      value.selection.isCollapsed == _value.selection.isCollapsed &&
      value.selection.start == _value.selection.start &&
      value.selection.affinity != _value.selection.affinity;
  }

  @override
  void performAction(TextInputAction action) {
    switch (action) {
      case TextInputAction.newline:
        // If this is a multiline EditableText, do nothing for a "newline"
        // action; The newline is already inserted. Otherwise, finalize
        // editing.
        if (!_isMultiline) {
          _finalizeEditing(action, shouldUnfocus: true);
        }
      case TextInputAction.done:
      case TextInputAction.go:
      case TextInputAction.next:
      case TextInputAction.previous:
      case TextInputAction.search:
      case TextInputAction.send:
        _finalizeEditing(action, shouldUnfocus: true);
      case TextInputAction.continueAction:
      case TextInputAction.emergencyCall:
      case TextInputAction.join:
      case TextInputAction.none:
      case TextInputAction.route:
      case TextInputAction.unspecified:
        // Finalize editing, but don't give up focus because this keyboard
        // action does not imply the user is done inputting information.
        _finalizeEditing(action, shouldUnfocus: false);
    }
  }

  @override
  void performPrivateCommand(String action, Map<String, dynamic> data) {
    widget.onAppPrivateCommand?.call(action, data);
  }

  @override
  void insertContent(KeyboardInsertedContent content) {
    assert(widget.contentInsertionConfiguration?.allowedMimeTypes.contains(content.mimeType) ?? false);
    widget.contentInsertionConfiguration?.onContentInserted.call(content);
  }

  // The original position of the caret on FloatingCursorDragState.start.
  Rect? _startCaretRect;

  // The most recent text position as determined by the location of the floating
  // cursor.
  TextPosition? _lastTextPosition;

  // The offset of the floating cursor as determined from the start call.
  Offset? _pointOffsetOrigin;

  // The most recent position of the floating cursor.
  Offset? _lastBoundedOffset;

  // Because the center of the cursor is preferredLineHeight / 2 below the touch
  // origin, but the touch origin is used to determine which line the cursor is
  // on, we need this offset to correctly render and move the cursor.
  Offset get _floatingCursorOffset => Offset(0, renderEditable.preferredLineHeight / 2);

  @override
  void updateFloatingCursor(RawFloatingCursorPoint point) {
    _floatingCursorResetController ??= AnimationController(
      vsync: this,
    )..addListener(_onFloatingCursorResetTick);
    switch (point.state) {
      case FloatingCursorDragState.Start:
        if (_floatingCursorResetController!.isAnimating) {
          _floatingCursorResetController!.stop();
          _onFloatingCursorResetTick();
        }
        // Stop cursor blinking and making it visible.
        _stopCursorBlink(resetCharTicks: false);
        _cursorBlinkOpacityController.value = 1.0;
        // We want to send in points that are centered around a (0,0) origin, so
        // we cache the position.
        _pointOffsetOrigin = point.offset;

        final TextPosition currentTextPosition = TextPosition(offset: renderEditable.selection!.baseOffset, affinity: renderEditable.selection!.affinity);
        _startCaretRect = renderEditable.getLocalRectForCaret(currentTextPosition);

        _lastBoundedOffset = _startCaretRect!.center - _floatingCursorOffset;
        _lastTextPosition = currentTextPosition;
        renderEditable.setFloatingCursor(point.state, _lastBoundedOffset!, _lastTextPosition!);
      case FloatingCursorDragState.Update:
        final Offset centeredPoint = point.offset! - _pointOffsetOrigin!;
        final Offset rawCursorOffset = _startCaretRect!.center + centeredPoint - _floatingCursorOffset;

        _lastBoundedOffset = renderEditable.calculateBoundedFloatingCursorOffset(rawCursorOffset);
        _lastTextPosition = renderEditable.getPositionForPoint(renderEditable.localToGlobal(_lastBoundedOffset! + _floatingCursorOffset));
        renderEditable.setFloatingCursor(point.state, _lastBoundedOffset!, _lastTextPosition!);
      case FloatingCursorDragState.End:
        // Resume cursor blinking.
        _startCursorBlink();
        // We skip animation if no update has happened.
        if (_lastTextPosition != null && _lastBoundedOffset != null) {
          _floatingCursorResetController!.value = 0.0;
          _floatingCursorResetController!.animateTo(1.0, duration: _floatingCursorResetTime, curve: Curves.decelerate);
        }
    }
  }

  void _onFloatingCursorResetTick() {
    final Offset finalPosition = renderEditable.getLocalRectForCaret(_lastTextPosition!).centerLeft - _floatingCursorOffset;
    if (_floatingCursorResetController!.isCompleted) {
      renderEditable.setFloatingCursor(FloatingCursorDragState.End, finalPosition, _lastTextPosition!);
      // During a floating cursor's move gesture (1 finger), a cursor is
      // animated only visually, without actually updating the selection.
      // Only after move gesture is complete, this function will be called
      // to actually update the selection to the new cursor location with
      // zero selection length.

      // However, During a floating cursor's selection gesture (2 fingers), the
      // selection is constantly updated by the engine throughout the gesture.
      // Thus when the gesture is complete, we should not update the selection
      // to the cursor location with zero selection length, because that would
      // overwrite the selection made by floating cursor selection.

      // Here we use `isCollapsed` to distinguish between floating cursor's
      // move gesture (1 finger) vs selection gesture (2 fingers), as
      // the engine does not provide information other than notifying a
      // new selection during with selection gesture (2 fingers).
      if (renderEditable.selection!.isCollapsed) {
        // The cause is technically the force cursor, but the cause is listed as tap as the desired functionality is the same.
        _handleSelectionChanged(TextSelection.fromPosition(_lastTextPosition!), SelectionChangedCause.forcePress);
      }
      _startCaretRect = null;
      _lastTextPosition = null;
      _pointOffsetOrigin = null;
      _lastBoundedOffset = null;
    } else {
      final double lerpValue = _floatingCursorResetController!.value;
      final double lerpX = ui.lerpDouble(_lastBoundedOffset!.dx, finalPosition.dx, lerpValue)!;
      final double lerpY = ui.lerpDouble(_lastBoundedOffset!.dy, finalPosition.dy, lerpValue)!;

      renderEditable.setFloatingCursor(FloatingCursorDragState.Update, Offset(lerpX, lerpY), _lastTextPosition!, resetLerpValue: lerpValue);
    }
  }

  @pragma('vm:notify-debugger-on-exception')
  void _finalizeEditing(TextInputAction action, {required bool shouldUnfocus}) {
    // Take any actions necessary now that the user has completed editing.
    if (widget.onEditingComplete != null) {
      try {
        widget.onEditingComplete!();
      } catch (exception, stack) {
        FlutterError.reportError(FlutterErrorDetails(
          exception: exception,
          stack: stack,
          library: 'widgets',
          context: ErrorDescription('while calling onEditingComplete for $action'),
        ));
      }
    } else {
      // Default behavior if the developer did not provide an
      // onEditingComplete callback: Finalize editing and remove focus, or move
      // it to the next/previous field, depending on the action.
      widget.controller.clearComposing();
      if (shouldUnfocus) {
        switch (action) {
          case TextInputAction.none:
          case TextInputAction.unspecified:
          case TextInputAction.done:
          case TextInputAction.go:
          case TextInputAction.search:
          case TextInputAction.send:
          case TextInputAction.continueAction:
          case TextInputAction.join:
          case TextInputAction.route:
          case TextInputAction.emergencyCall:
          case TextInputAction.newline:
            widget.focusNode.unfocus();
          case TextInputAction.next:
            widget.focusNode.nextFocus();
          case TextInputAction.previous:
            widget.focusNode.previousFocus();
        }
      }
    }

    final ValueChanged<String>? onSubmitted = widget.onSubmitted;
    if (onSubmitted == null) {
      return;
    }

    // Invoke optional callback with the user's submitted content.
    try {
      onSubmitted(_value.text);
    } catch (exception, stack) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: 'widgets',
        context: ErrorDescription('while calling onSubmitted for $action'),
      ));
    }

    // If `shouldUnfocus` is true, the text field should no longer be focused
    // after the microtask queue is drained. But in case the developer cancelled
    // the focus change in the `onSubmitted` callback by focusing this input
    // field again, reset the soft keyboard.
    // See https://github.com/flutter/flutter/issues/84240.
    //
    // `_restartConnectionIfNeeded` creates a new TextInputConnection to replace
    // the current one. This on iOS switches to a new input view and on Android
    // restarts the input method, and in both cases the soft keyboard will be
    // reset.
    if (shouldUnfocus) {
      _scheduleRestartConnection();
    }
  }

  int _batchEditDepth = 0;

  /// 텍스트 편집 값에 대한 새로운 업데이트가 플랫폼 텍스트 입력 플러그인으로 전송되지 않는 새 일괄 편집을 시작합니다.
  ///
  /// 배치 편집 중첩. 가장 바깥쪽 일괄 편집이 끝나면 [endBatchEdit]
  /// 는 텍스트 입력 플러그인이 변경 사항을 감지하면 [currentTextEditingValue]를 텍스트 입력 플러그인으로 보내려고 시도합니다.
  void beginBatchEdit() {
    _batchEditDepth += 1;
  }

  /// 마지막 [beginBatchEdit] 호출로 시작된 현재 일괄 편집을 종료합니다,
  /// 그리고 필요한 경우 텍스트 입력 플러그인에 [currentTextEditingValue]를 전송합니다.
  ///
  /// 이 [EditableText]가 일괄 편집 중이 아닌 경우 디버그 모드에서 오류를 던집니다.
  void endBatchEdit() {
    _batchEditDepth -= 1;
    assert(
      _batchEditDepth >= 0,
      'Unbalanced call to endBatchEdit: beginBatchEdit must be called first.',
    );
    _updateRemoteEditingValueIfNeeded();
  }

  void _updateRemoteEditingValueIfNeeded() {
    if (_batchEditDepth > 0 || !_hasInputConnection) {
      return;
    }
    final TextEditingValue localValue = _value;
    if (localValue == _lastKnownRemoteTextEditingValue) {
      return;
    }
    _textInputConnection!.setEditingState(localValue);
    _lastKnownRemoteTextEditingValue = localValue;
  }

  TextEditingValue get _value => widget.controller.value;
  set _value(TextEditingValue value) {
    widget.controller.value = value;
  }

  bool get _hasFocus => widget.focusNode.hasFocus;
  bool get _isMultiline => widget.maxLines != 1;

  // Finds the closest scroll offset to the current scroll offset that fully
  // reveals the given caret rect. If the given rect's main axis extent is too
  // large to be fully revealed in `renderEditable`, it will be centered along
  // the main axis.
  //
  // If this is a multiline EditableText (which means the Editable can only
  // scroll vertically), the given rect's height will first be extended to match
  // `renderEditable.preferredLineHeight`, before the target scroll offset is
  // calculated.
  RevealedOffset _getOffsetToRevealCaret(Rect rect) {
    if (!_scrollController.position.allowImplicitScrolling) {
      return RevealedOffset(offset: _scrollController.offset, rect: rect);
    }

    final Size editableSize = renderEditable.size;
    final double additionalOffset;
    final Offset unitOffset;

    if (!_isMultiline) {
      additionalOffset = rect.width >= editableSize.width
        // Center `rect` if it's oversized.
        ? editableSize.width / 2 - rect.center.dx
        // Valid additional offsets range from (rect.right - size.width)
        // to (rect.left). Pick the closest one if out of range.
        : clampDouble(0.0, rect.right - editableSize.width, rect.left);
      unitOffset = const Offset(1, 0);
    } else {
      // The caret is vertically centered within the line. Expand the caret's
      // height so that it spans the line because we're going to ensure that the
      // entire expanded caret is scrolled into view.
      final Rect expandedRect = Rect.fromCenter(
        center: rect.center,
        width: rect.width,
        height: math.max(rect.height, renderEditable.preferredLineHeight),
      );

      additionalOffset = expandedRect.height >= editableSize.height
        ? editableSize.height / 2 - expandedRect.center.dy
        : clampDouble(0.0, expandedRect.bottom - editableSize.height, expandedRect.top);
      unitOffset = const Offset(0, 1);
    }

    // No overscrolling when encountering tall fonts/scripts that extend past
    // the ascent.
    final double targetOffset = clampDouble(
      additionalOffset + _scrollController.offset,
      _scrollController.position.minScrollExtent,
      _scrollController.position.maxScrollExtent,
    );

    final double offsetDelta = _scrollController.offset - targetOffset;
    return RevealedOffset(rect: rect.shift(unitOffset * offsetDelta), offset: targetOffset);
  }

  /// 자동 완성 서비스에 자동 완성 정보를 전송할지 여부입니다. 기본값은 참입니다.
  bool get _needsAutofill => _effectiveAutofillClient.textInputConfiguration.autofillConfiguration.enabled;

  // Must be called after layout.
  // See https://github.com/flutter/flutter/issues/126312
  void _openInputConnection() {
    if (!_shouldCreateInputConnection) {
      return;
    }
    if (!_hasInputConnection) {
      final TextEditingValue localValue = _value;

      // When _needsAutofill == true && currentAutofillScope == null, autofill
      // is allowed but saving the user input from the text field is
      // discouraged.
      //
      // In case the autofillScope changes from a non-null value to null, or
      // _needsAutofill changes to false from true, the platform needs to be
      // notified to exclude this field from the autofill context. So we need to
      // provide the autofillId.
      _textInputConnection = _needsAutofill && currentAutofillScope != null
        ? currentAutofillScope!.attach(this, _effectiveAutofillClient.textInputConfiguration)
        : TextInput.attach(this, _effectiveAutofillClient.textInputConfiguration);
      _updateSizeAndTransform();
      _schedulePeriodicPostFrameCallbacks();
      _textInputConnection!
        ..setStyle(
          fontFamily: _style.fontFamily,
          fontSize: _style.fontSize,
          fontWeight: _style.fontWeight,
          textDirection: _textDirection,
          textAlign: widget.textAlign,
        )
        ..setEditingState(localValue)
        ..show();
      if (_needsAutofill) {
        // Request autofill AFTER the size and the transform have been sent to
        // the platform text input plugin.
        _textInputConnection!.requestAutofill();
      }
      _lastKnownRemoteTextEditingValue = localValue;
    } else {
      _textInputConnection!.show();
    }
  }

  void _closeInputConnectionIfNeeded() {
    if (_hasInputConnection) {
      _textInputConnection!.close();
      _textInputConnection = null;
      _lastKnownRemoteTextEditingValue = null;
      _scribbleCacheKey = null;
      removeTextPlaceholder();
    }
  }

  void _openOrCloseInputConnectionIfNeeded() {
    if (_hasFocus && widget.focusNode.consumeKeyboardToken()) {
      _openInputConnection();
    } else if (!_hasFocus) {
      _closeInputConnectionIfNeeded();
      widget.controller.clearComposing();
    }
  }

  bool _restartConnectionScheduled = false;
  void _scheduleRestartConnection() {
    if (_restartConnectionScheduled) {
      return;
    }
    _restartConnectionScheduled = true;
    scheduleMicrotask(_restartConnectionIfNeeded);
  }
  // Discards the current [TextInputConnection] and establishes a new one.
  //
  // This method is rarely needed. This is currently used to reset the input
  // type when the "submit" text input action is triggered and the developer
  // puts the focus back to this input field..
  void _restartConnectionIfNeeded() {
    _restartConnectionScheduled = false;
    if (!_hasInputConnection || !_shouldCreateInputConnection) {
      return;
    }
    _textInputConnection!.close();
    _textInputConnection = null;
    _lastKnownRemoteTextEditingValue = null;

    final AutofillScope? currentAutofillScope = _needsAutofill ? this.currentAutofillScope : null;
    final TextInputConnection newConnection = currentAutofillScope?.attach(this, textInputConfiguration)
      ?? TextInput.attach(this, _effectiveAutofillClient.textInputConfiguration);
    _textInputConnection = newConnection;

    newConnection
      ..show()
      ..setStyle(
        fontFamily: _style.fontFamily,
        fontSize: _style.fontSize,
        fontWeight: _style.fontWeight,
        textDirection: _textDirection,
        textAlign: widget.textAlign,
      )
      ..setEditingState(_value);
    _lastKnownRemoteTextEditingValue = _value;
  }


  @override
  void didChangeInputControl(TextInputControl? oldControl, TextInputControl? newControl) {
    if (_hasFocus && _hasInputConnection) {
      oldControl?.hide();
      newControl?.show();
    }
  }

  @override
  void connectionClosed() {
    if (_hasInputConnection) {
      _textInputConnection!.connectionClosedReceived();
      _textInputConnection = null;
      _lastKnownRemoteTextEditingValue = null;
      if (kIsWeb) {
        _finalizeEditing(TextInputAction.done, shouldUnfocus: true);
      } else {
        widget.focusNode.unfocus();
      }
    }
  }

  // Indicates that a call to _handleFocusChanged originated within
  // EditableText, allowing it to distinguish between internal and external
  // focus changes.
  bool _nextFocusChangeIsInternal = false;

  // Sets _nextFocusChangeIsInternal to true only until any subsequent focus
  // change happens.
  void _flagInternalFocus() {
    _nextFocusChangeIsInternal = true;
    FocusManager.instance.addListener(_unflagInternalFocus);
  }

  void _unflagInternalFocus() {
    _nextFocusChangeIsInternal = false;
    FocusManager.instance.removeListener(_unflagInternalFocus);
  }

  /// 키보드와의 상호 작용에 대한 관심 표현.
  ///
  /// 이 컨트롤이 키보드에 이미 연결되어 있는 경우 이 함수는 키보드를 표시하도록 요청합니다. 그렇지 않으면 이 함수는 포커스 시스템에 포커스를 요청합니다. 포커스 획득에 성공하면 컨트롤이 키보드에 부착되고 키보드가 표시되도록 요청합니다.
  void requestKeyboard() {
    if (_hasFocus) {
      _openInputConnection();
    } else {
      _flagInternalFocus();
      widget.focusNode.requestFocus(); // This eventually calls _openInputConnection also, see _handleFocusChanged.
    }
  }

  void _updateOrDisposeSelectionOverlayIfNeeded() {
    if (_selectionOverlay != null) {
      if (_hasFocus) {
        _selectionOverlay!.update(_value);
      } else {
        _selectionOverlay!.dispose();
        _selectionOverlay = null;
      }
    }
  }

  void _onEditableScroll() {
    _selectionOverlay?.updateForScroll();
    _scribbleCacheKey = null;
  }

  TextSelectionOverlay _createSelectionOverlay() {
    final EditableTextContextMenuBuilder? contextMenuBuilder = widget.contextMenuBuilder;
    final TextSelectionOverlay selectionOverlay = TextSelectionOverlay(
      clipboardStatus: clipboardStatus,
      context: context,
      value: _value,
      debugRequiredFor: widget,
      toolbarLayerLink: _toolbarLayerLink,
      startHandleLayerLink: _startHandleLayerLink,
      endHandleLayerLink: _endHandleLayerLink,
      renderObject: renderEditable,
      selectionControls: widget.selectionControls,
      selectionDelegate: this,
      dragStartBehavior: widget.dragStartBehavior,
      onSelectionHandleTapped: widget.onSelectionHandleTapped,
      contextMenuBuilder: contextMenuBuilder == null
        ? null
        : (BuildContext context) {
          return contextMenuBuilder(
            context,
            this,
          );
        },
      magnifierConfiguration: widget.magnifierConfiguration,
    );

    return selectionOverlay;
  }

  @pragma('vm:notify-debugger-on-exception')
  void _handleSelectionChanged(TextSelection selection, SelectionChangedCause? cause) {
    // We return early if the selection is not valid. This can happen when the
    // text of [EditableText] is updated at the same time as the selection is
    // changed by a gesture event.
    if (!widget.controller.isSelectionWithinTextBounds(selection)) {
      return;
    }

    widget.controller.selection = selection;

    // This will show the keyboard for all selection changes on the
    // EditableText except for those triggered by a keyboard input.
    // Typically EditableText shouldn't take user keyboard input if
    // it's not focused already. If the EditableText is being
    // autofilled it shouldn't request focus.
    switch (cause) {
      case null:
      case SelectionChangedCause.doubleTap:
      case SelectionChangedCause.drag:
      case SelectionChangedCause.forcePress:
      case SelectionChangedCause.longPress:
      case SelectionChangedCause.scribble:
      case SelectionChangedCause.tap:
      case SelectionChangedCause.toolbar:
        requestKeyboard();
      case SelectionChangedCause.keyboard:
        if (_hasFocus) {
          requestKeyboard();
        }
    }
    if (widget.selectionControls == null && widget.contextMenuBuilder == null) {
      _selectionOverlay?.dispose();
      _selectionOverlay = null;
    } else {
      if (_selectionOverlay == null) {
        _selectionOverlay = _createSelectionOverlay();
      } else {
        _selectionOverlay!.update(_value);
      }
      _selectionOverlay!.handlesVisible = widget.showSelectionHandles;
      _selectionOverlay!.showHandles();
    }
    // TODO(chunhtai): we should make sure selection actually changed before
    // we call the onSelectionChanged.
    // https://github.com/flutter/flutter/issues/76349.
    try {
      widget.onSelectionChanged?.call(selection, cause);
    } catch (exception, stack) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: 'widgets',
        context: ErrorDescription('while calling onSelectionChanged for $cause'),
      ));
    }

    // To keep the cursor from blinking while it moves, restart the timer here.
    if (_showBlinkingCursor && _cursorTimer != null) {
      _stopCursorBlink(resetCharTicks: false);
      _startCursorBlink();
    }
  }

  // Animation configuration for scrolling the caret back on screen.
  static const Duration _caretAnimationDuration = Duration(milliseconds: 100);
  static const Curve _caretAnimationCurve = Curves.fastOutSlowIn;

  bool _showCaretOnScreenScheduled = false;

  void _scheduleShowCaretOnScreen({required bool withAnimation}) {
    if (_showCaretOnScreenScheduled) {
      return;
    }
    _showCaretOnScreenScheduled = true;
    SchedulerBinding.instance.addPostFrameCallback((Duration _) {
      _showCaretOnScreenScheduled = false;
      // Since we are in a post frame callback, check currentContext in case
      // RenderEditable has been disposed (in which case it will be null).
      final RenderEditable? renderEditable =
          _editableKey.currentContext?.findRenderObject() as RenderEditable?;
      if (renderEditable == null
          || !(renderEditable.selection?.isValid ?? false)
          || !_scrollController.hasClients) {
        return;
      }

      final double lineHeight = renderEditable.preferredLineHeight;

      // Enlarge the target rect by scrollPadding to ensure that caret is not
      // positioned directly at the edge after scrolling.
      double bottomSpacing = widget.scrollPadding.bottom;
      if (_selectionOverlay?.selectionControls != null) {
        final double handleHeight = _selectionOverlay!.selectionControls!
          .getHandleSize(lineHeight).height;
        final double interactiveHandleHeight = math.max(
          handleHeight,
          kMinInteractiveDimension,
        );
        final Offset anchor = _selectionOverlay!.selectionControls!
          .getHandleAnchor(
            TextSelectionHandleType.collapsed,
            lineHeight,
          );
        final double handleCenter = handleHeight / 2 - anchor.dy;
        bottomSpacing = math.max(
          handleCenter + interactiveHandleHeight / 2,
          bottomSpacing,
        );
      }

      final EdgeInsets caretPadding = widget.scrollPadding
        .copyWith(bottom: bottomSpacing);

      final Rect caretRect = renderEditable.getLocalRectForCaret(renderEditable.selection!.extent);
      final RevealedOffset targetOffset = _getOffsetToRevealCaret(caretRect);

      final Rect rectToReveal;
      final TextSelection selection = textEditingValue.selection;
      if (selection.isCollapsed) {
        rectToReveal = targetOffset.rect;
      } else {
        final List<TextBox> selectionBoxes = renderEditable.getBoxesForSelection(selection);
        // selectionBoxes may be empty if, for example, the selection does not
        // encompass a full character, like if it only contained part of an
        // extended grapheme cluster.
        if (selectionBoxes.isEmpty) {
          rectToReveal = targetOffset.rect;
        } else {
          rectToReveal = selection.baseOffset < selection.extentOffset ?
            selectionBoxes.last.toRect() : selectionBoxes.first.toRect();
        }
      }

      if (withAnimation) {
        _scrollController.animateTo(
          targetOffset.offset,
          duration: _caretAnimationDuration,
          curve: _caretAnimationCurve,
        );
        renderEditable.showOnScreen(
          rect: caretPadding.inflateRect(rectToReveal),
          duration: _caretAnimationDuration,
          curve: _caretAnimationCurve,
        );
      } else {
        _scrollController.jumpTo(targetOffset.offset);
        renderEditable.showOnScreen(
          rect: caretPadding.inflateRect(rectToReveal),
        );
      }
    });
  }

  late double _lastBottomViewInset;

  @override
  void didChangeMetrics() {
    if (!mounted) {
      return;
    }
    final ui.FlutterView view = View.of(context);
    if (_lastBottomViewInset != view.viewInsets.bottom) {
      SchedulerBinding.instance.addPostFrameCallback((Duration _) {
        _selectionOverlay?.updateForScroll();
      });
      if (_lastBottomViewInset < view.viewInsets.bottom) {
        // Because the metrics change signal from engine will come here every frame
        // (on both iOS and Android). So we don't need to show caret with animation.
        _scheduleShowCaretOnScreen(withAnimation: false);
      }
    }
    _lastBottomViewInset = view.viewInsets.bottom;
  }

  Future<void> _performSpellCheck(final String text) async {
    try {
      final Locale? localeForSpellChecking = widget.locale ?? Localizations.maybeLocaleOf(context);

      assert(
        localeForSpellChecking != null,
        'Locale must be specified in widget or Localization widget must be in scope',
      );

      final List<SuggestionSpan>? suggestions = await
        _spellCheckConfiguration
          .spellCheckService!
            .fetchSpellCheckSuggestions(localeForSpellChecking!, text);

      if (suggestions == null) {
        // The request to fetch spell check suggestions was canceled due to ongoing request.
        return;
      }

      spellCheckResults = SpellCheckResults(text, suggestions);
      renderEditable.text = buildTextSpan();
    } catch (exception, stack) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: 'widgets',
        context: ErrorDescription('while performing spell check'),
      ));
    }
  }

  @pragma('vm:notify-debugger-on-exception')
  void _formatAndSetValue(TextEditingValue value, SelectionChangedCause? cause, {bool userInteraction = false}) {
    final TextEditingValue oldValue = _value;
    final bool textChanged = oldValue.text != value.text;
    final bool textCommitted = !oldValue.composing.isCollapsed && value.composing.isCollapsed;
    final bool selectionChanged = oldValue.selection != value.selection;

    if (textChanged || textCommitted) {
      // Only apply input formatters if the text has changed (including uncommitted
      // text in the composing region), or when the user committed the composing
      // text.
      // Gboard is very persistent in restoring the composing region. Applying
      // input formatters on composing-region-only changes (except clearing the
      // current composing region) is very infinite-loop-prone: the formatters
      // will keep trying to modify the composing region while Gboard will keep
      // trying to restore the original composing region.
      try {
        value = widget.inputFormatters?.fold<TextEditingValue>(
          value,
          (TextEditingValue newValue, TextInputFormatter formatter) => formatter.formatEditUpdate(_value, newValue),
        ) ?? value;

        if (spellCheckEnabled && value.text.isNotEmpty && _value.text != value.text) {
          _performSpellCheck(value.text);
        }
      } catch (exception, stack) {
        FlutterError.reportError(FlutterErrorDetails(
          exception: exception,
          stack: stack,
          library: 'widgets',
          context: ErrorDescription('while applying input formatters'),
        ));
      }
    }

    final TextSelection oldTextSelection = textEditingValue.selection;

    // Put all optional user callback invocations in a batch edit to prevent
    // sending multiple `TextInput.updateEditingValue` messages.
    beginBatchEdit();
    _value = value;
    // Changes made by the keyboard can sometimes be "out of band" for listening
    // components, so always send those events, even if we didn't think it
    // changed. Also, the user long pressing should always send a selection change
    // as well.
    if (selectionChanged ||
        (userInteraction &&
        (cause == SelectionChangedCause.longPress ||
         cause == SelectionChangedCause.keyboard))) {
      _handleSelectionChanged(_value.selection, cause);
      _bringIntoViewBySelectionState(oldTextSelection, value.selection, cause);
    }
    final String currentText = _value.text;
    if (oldValue.text != currentText) {
      try {
        widget.onChanged?.call(currentText);
      } catch (exception, stack) {
        FlutterError.reportError(FlutterErrorDetails(
          exception: exception,
          stack: stack,
          library: 'widgets',
          context: ErrorDescription('while calling onChanged'),
        ));
      }
    }
    endBatchEdit();
  }

  void _bringIntoViewBySelectionState(TextSelection oldSelection, TextSelection newSelection, SelectionChangedCause? cause) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        if (cause == SelectionChangedCause.longPress ||
            cause == SelectionChangedCause.drag) {
          bringIntoView(newSelection.extent);
        }
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      case TargetPlatform.fuchsia:
      case TargetPlatform.android:
        if (cause == SelectionChangedCause.drag) {
          if (oldSelection.baseOffset != newSelection.baseOffset) {
            bringIntoView(newSelection.base);
          } else if (oldSelection.extentOffset != newSelection.extentOffset) {
            bringIntoView(newSelection.extent);
          }
        }
    }
  }

  void _onCursorColorTick() {
    renderEditable.cursorColor = widget.cursorColor.withOpacity(_cursorBlinkOpacityController.value);
    _cursorVisibilityNotifier.value = widget.showCursor && _cursorBlinkOpacityController.value > 0;
  }

  bool get _showBlinkingCursor => _hasFocus && _value.selection.isCollapsed && widget.showCursor && _tickersEnabled;

  /// 깜박이는 커서가 실제로 이 정확한 순간에 표시되는지 여부(깜박이기 때문에 절반은 숨겨져 있음).
  @visibleForTesting
  bool get cursorCurrentlyVisible => _cursorBlinkOpacityController.value > 0;

  /// 커서 깜박임 간격(커서가 "켜짐" 상태 또는 "꺼짐" 상태에 있는 시간)
  /// 상태 또는 "꺼짐" 상태에 있는 시간). 완전한 커서 깜박임 간격은 이 값의 두 배입니다(절반 켜짐, 절반 꺼짐).
  @visibleForTesting
  Duration get cursorBlinkInterval => _kCursorBlinkHalfPeriod;

  /// 텍스트 선택 핸들의 현재 상태입니다.
  @visibleForTesting
  TextSelectionOverlay? get selectionOverlay => _selectionOverlay;

  int _obscureShowCharTicksPending = 0;
  int? _obscureLatestCharIndex;

  void _startCursorBlink() {
    assert(!(_cursorTimer?.isActive ?? false) || !(_backingCursorBlinkOpacityController?.isAnimating ?? false));
    if (!widget.showCursor) {
      return;
    }
    if (!_tickersEnabled) {
      return;
    }
    _cursorTimer?.cancel();
    _cursorBlinkOpacityController.value = 1.0;
    if (EditableText.debugDeterministicCursor) {
      return;
    }
    if (widget.cursorOpacityAnimates) {
      _cursorBlinkOpacityController.animateWith(_iosBlinkCursorSimulation).whenComplete(_onCursorTick);
    } else {
      _cursorTimer = Timer.periodic(_kCursorBlinkHalfPeriod, (Timer timer) { _onCursorTick(); });
    }
  }

  void _onCursorTick() {
    if (_obscureShowCharTicksPending > 0) {
      _obscureShowCharTicksPending = WidgetsBinding.instance.platformDispatcher.brieflyShowPassword
        ? _obscureShowCharTicksPending - 1
        : 0;
      if (_obscureShowCharTicksPending == 0) {
        setState(() { });
      }
    }

    if (widget.cursorOpacityAnimates) {
      _cursorTimer?.cancel();
      // Schedule this as an async task to avoid blocking tester.pumpAndSettle
      // indefinitely.
      _cursorTimer = Timer(Duration.zero, () => _cursorBlinkOpacityController.animateWith(_iosBlinkCursorSimulation).whenComplete(_onCursorTick));
    } else {
      if (!(_cursorTimer?.isActive ?? false) && _tickersEnabled) {
        _cursorTimer = Timer.periodic(_kCursorBlinkHalfPeriod, (Timer timer) { _onCursorTick(); });
      }
      _cursorBlinkOpacityController.value = _cursorBlinkOpacityController.value == 0 ? 1 : 0;
    }
  }

  void _stopCursorBlink({ bool resetCharTicks = true }) {
    _cursorBlinkOpacityController.value = 0.0;
    _cursorTimer?.cancel();
    _cursorTimer = null;
    if (resetCharTicks) {
      _obscureShowCharTicksPending = 0;
    }
  }

  void _startOrStopCursorTimerIfNeeded() {
    if (!_showBlinkingCursor) {
      _stopCursorBlink();
    } else if (_cursorTimer == null) {
      _startCursorBlink();
    }
  }

  void _didChangeTextEditingValue() {
    if (_hasFocus && !_value.selection.isValid) {
      // If this field is focused and the selection is invalid, place the cursor at
      // the end. Does not rely on _handleFocusChanged because it makes selection
      // handles visible on Android.
      // Unregister as a listener to the text controller while making the change.
      widget.controller.removeListener(_didChangeTextEditingValue);
      widget.controller.selection = _adjustedSelectionWhenFocused()!;
      widget.controller.addListener(_didChangeTextEditingValue);
    }
    _updateRemoteEditingValueIfNeeded();
    _startOrStopCursorTimerIfNeeded();
    _updateOrDisposeSelectionOverlayIfNeeded();
    // TODO(abarth): Teach RenderEditable about ValueNotifier<TextEditingValue>
    // to avoid this setState().
    setState(() { /* We use widget.controller.value in build(). */ });
    _verticalSelectionUpdateAction.stopCurrentVerticalRunIfSelectionChanges();
  }

  void _handleFocusChanged() {
    _openOrCloseInputConnectionIfNeeded();
    _startOrStopCursorTimerIfNeeded();
    _updateOrDisposeSelectionOverlayIfNeeded();
    if (_hasFocus) {
      // Listen for changing viewInsets, which indicates keyboard showing up.
      WidgetsBinding.instance.addObserver(this);
      _lastBottomViewInset = View.of(context).viewInsets.bottom;
      if (!widget.readOnly) {
        _scheduleShowCaretOnScreen(withAnimation: true);
      }
      final TextSelection? updatedSelection = _adjustedSelectionWhenFocused();
      if (updatedSelection != null) {
        _handleSelectionChanged(updatedSelection, null);
      }
    } else {
      WidgetsBinding.instance.removeObserver(this);
      setState(() { _currentPromptRectRange = null; });
    }
    updateKeepAlive();
  }

  TextSelection? _adjustedSelectionWhenFocused() {
    TextSelection? selection;
    final bool shouldSelectAll = widget.selectionEnabled && kIsWeb
        && !_isMultiline && !_nextFocusChangeIsInternal;
    if (shouldSelectAll) {
      // On native web, single line <input> tags select all when receiving
      // focus.
      selection = TextSelection(
        baseOffset: 0,
        extentOffset: _value.text.length,
      );
    } else if (!_value.selection.isValid) {
      // Place cursor at the end if the selection is invalid when we receive focus.
      selection = TextSelection.collapsed(offset: _value.text.length);
    }
    return selection;
  }

  void _compositeCallback(Layer layer) {
    // The callback can be invoked when the layer is detached.
    // The input connection can be closed by the platform in which case this
    // widget doesn't rebuild.
    if (!renderEditable.attached || !_hasInputConnection) {
      return;
    }
    assert(mounted);
    assert((context as Element).debugIsActive);
    _updateSizeAndTransform();
  }

  // Must be called after layout.
  // See https://github.com/flutter/flutter/issues/126312
  void _updateSizeAndTransform() {
    final Size size = renderEditable.size;
    final Matrix4 transform = renderEditable.getTransformTo(null);
    _textInputConnection!.setEditableSizeAndTransform(size, transform);
  }

  void _schedulePeriodicPostFrameCallbacks([Duration? duration]) {
    if (!_hasInputConnection) {
      return;
    }
    _updateSelectionRects();
    _updateComposingRectIfNeeded();
    _updateCaretRectIfNeeded();
    SchedulerBinding.instance.addPostFrameCallback(_schedulePeriodicPostFrameCallbacks);
  }
  _ScribbleCacheKey? _scribbleCacheKey;

  void _updateSelectionRects({bool force = false}) {
    if (!widget.scribbleEnabled || defaultTargetPlatform != TargetPlatform.iOS) {
      return;
    }

    final ScrollDirection scrollDirection = _scrollController.position.userScrollDirection;
    if (scrollDirection != ScrollDirection.idle) {
      return;
    }

    final InlineSpan inlineSpan = renderEditable.text!;
    final _ScribbleCacheKey newCacheKey = _ScribbleCacheKey(
      inlineSpan: inlineSpan,
      textAlign: widget.textAlign,
      textDirection: _textDirection,
      textScaleFactor: widget.textScaleFactor ?? MediaQuery.textScaleFactorOf(context),
      textHeightBehavior: widget.textHeightBehavior ?? DefaultTextHeightBehavior.maybeOf(context),
      locale: widget.locale,
      structStyle: widget.strutStyle,
      placeholder: _placeholderLocation,
      size: renderEditable.size,
    );

    final RenderComparison comparison = force
      ? RenderComparison.layout
      : _scribbleCacheKey?.compare(newCacheKey) ?? RenderComparison.layout;
    if (comparison.index < RenderComparison.layout.index) {
      return;
    }
    _scribbleCacheKey = newCacheKey;

    final List<SelectionRect> rects = <SelectionRect>[];
    int graphemeStart = 0;
    // Can't use _value.text here: the controller value could change between
    // frames.
    final String plainText = inlineSpan.toPlainText(includeSemanticsLabels: false);
    final CharacterRange characterRange = CharacterRange(plainText);
    while (characterRange.moveNext()) {
      final int graphemeEnd = graphemeStart + characterRange.current.length;
      final List<TextBox> boxes = renderEditable.getBoxesForSelection(
        TextSelection(baseOffset: graphemeStart, extentOffset: graphemeEnd),
      );

      final TextBox? box = boxes.isEmpty ? null : boxes.first;
      if (box != null) {
        final Rect paintBounds = renderEditable.paintBounds;
        // Stop early when characters are already below the bottom edge of the
        // RenderEditable, regardless of its clipBehavior.
        if (paintBounds.bottom <= box.top) {
          break;
        }
        // Include any TextBox which intersects with the RenderEditable.
        if (paintBounds.left <= box.right &&
            box.left <= paintBounds.right &&
            paintBounds.top <= box.bottom) {
          // At least some part of the letter is visible within the text field.
          rects.add(SelectionRect(position: graphemeStart, bounds: box.toRect(), direction: box.direction));
        }
      }
      graphemeStart = graphemeEnd;
    }
    _textInputConnection!.setSelectionRects(rects);
  }

  // Sends the current composing rect to the iOS text input plugin via the text
  // input channel. We need to keep sending the information even if no text is
  // currently marked, as the information usually lags behind. The text input
  // plugin needs to estimate the composing rect based on the latest caret rect,
  // when the composing rect info didn't arrive in time.
  void _updateComposingRectIfNeeded() {
    final TextRange composingRange = _value.composing;
    assert(mounted);
    Rect? composingRect = renderEditable.getRectForComposingRange(composingRange);
    // Send the caret location instead if there's no marked text yet.
    if (composingRect == null) {
      assert(!composingRange.isValid || composingRange.isCollapsed);
      final int offset = composingRange.isValid ? composingRange.start : 0;
      composingRect = renderEditable.getLocalRectForCaret(TextPosition(offset: offset));
    }
    _textInputConnection!.setComposingRect(composingRect);
  }

  void _updateCaretRectIfNeeded() {
    final TextSelection? selection = renderEditable.selection;
    if (selection == null || !selection.isValid || !selection.isCollapsed) {
      return;
    }
    final TextPosition currentTextPosition = TextPosition(offset: selection.baseOffset);
    final Rect caretRect = renderEditable.getLocalRectForCaret(currentTextPosition);
    _textInputConnection!.setCaretRect(caretRect);
  }

  TextDirection get _textDirection => widget.textDirection ?? Directionality.of(context);

  /// 이 위젯의 자손에 대한 렌더러입니다.
  ///
  /// 이 프로퍼티는 일반적으로 [RenderEditable.ignorePointer]가 참일 때 입력 제스처를 렌더러에 알리는 데 사용됩니다.
  late final RenderEditable renderEditable = _editableKey.currentContext!.findRenderObject()! as RenderEditable;

  @override
  TextEditingValue get textEditingValue => _value;

  double get _devicePixelRatio => MediaQuery.devicePixelRatioOf(context);

  @override
  void userUpdateTextEditingValue(TextEditingValue value, SelectionChangedCause? cause) {
    // Compare the current TextEditingValue with the pre-format new
    // TextEditingValue value, in case the formatter would reject the change.
    final bool shouldShowCaret = widget.readOnly
      ? _value.selection != value.selection
      : _value != value;
    if (shouldShowCaret) {
      _scheduleShowCaretOnScreen(withAnimation: true);
    }

    // Even if the value doesn't change, it may be necessary to focus and build
    // the selection overlay. For example, this happens when right clicking an
    // unfocused field that previously had a selection in the same spot.
    if (value == textEditingValue) {
      if (!widget.focusNode.hasFocus) {
        _flagInternalFocus();
        widget.focusNode.requestFocus();
        _selectionOverlay = _createSelectionOverlay();
      }
      return;
    }

    _formatAndSetValue(value, cause, userInteraction: true);
  }

  @override
  void bringIntoView(TextPosition position) {
    final Rect localRect = renderEditable.getLocalRectForCaret(position);
    final RevealedOffset targetOffset = _getOffsetToRevealCaret(localRect);

    _scrollController.jumpTo(targetOffset.offset);
    renderEditable.showOnScreen(rect: targetOffset.rect);
  }

  /// 현재 커서 위치에 선택 도구 모음을 표시합니다.
  ///
  /// 툴바가 이미 표시되어 있거나 현재 텍스트 선택 항목이 없는 경우와 같이 툴바를 표시할 수 없는 경우 `false`를 반환합니다.
  @override
  bool showToolbar() {
    // Web is using native dom elements to enable clipboard functionality of the
    // context menu: copy, paste, select, cut. It might also provide additional
    // functionality depending on the browser (such as translate). Due to this,
    // we should not show a Flutter toolbar for the editable text elements
    // unless the browser's context menu is explicitly disabled.
    if (kIsWeb && BrowserContextMenu.enabled) {
      return false;
    }

    if (_selectionOverlay == null) {
      return false;
    }
    _liveTextInputStatus?.update();
    clipboardStatus.update();
    _selectionOverlay!.showToolbar();
    return true;
  }

  @override
  void hideToolbar([bool hideHandles = true]) {
    if (hideHandles) {
      // Hide the handles and the toolbar.
      _selectionOverlay?.hide();
    } else if (_selectionOverlay?.toolbarIsVisible ?? false) {
      // Hide only the toolbar but not the handles.
      _selectionOverlay?.hideToolbar();
    }
  }

  /// 도구 모음의 표시 여부를 토글합니다.
  void toggleToolbar([bool hideHandles = true]) {
    final TextSelectionOverlay selectionOverlay = _selectionOverlay ??= _createSelectionOverlay();

    if (selectionOverlay.toolbarIsVisible) {
      hideToolbar(hideHandles);
    } else {
      showToolbar();
    }
  }

  /// 클릭 후 바꾸기에 사용할 수 있는 철자가 틀린 단어에 대한 맞춤법 검사 제안이 포함된 도구 모음을 표시합니다.
  bool showSpellCheckSuggestionsToolbar() {
    // Spell check suggestions toolbars are intended to be shown on non-web
    // platforms. Additionally, the Cupertino style toolbar can't be drawn on
    // the web with the HTML renderer due to
    // https://github.com/flutter/flutter/issues/123560.
    final bool platformNotSupported = kIsWeb && BrowserContextMenu.enabled;
    if (!spellCheckEnabled
        || platformNotSupported
        || widget.readOnly
        || _selectionOverlay == null
        || !_spellCheckResultsReceived
        || findSuggestionSpanAtCursorIndex(textEditingValue.selection.extentOffset) == null) {
      // Only attempt to show the spell check suggestions toolbar if there
      // is a toolbar specified and spell check suggestions available to show.
      return false;
    }

    assert(
      _spellCheckConfiguration.spellCheckSuggestionsToolbarBuilder != null,
      'spellCheckSuggestionsToolbarBuilder must be defined in '
      'SpellCheckConfiguration to show a toolbar with spell check '
      'suggestions',
    );

    _selectionOverlay!
      .showSpellCheckSuggestionsToolbar(
        (BuildContext context) {
          return _spellCheckConfiguration
            .spellCheckSuggestionsToolbarBuilder!(
              context,
              this,
          );
        },
    );
    return true;
  }

  /// '위치 표시'에 지정된 위치에 돋보기를 표시합니다,
  /// 에 지정된 위치에 돋보기를 표시합니다.
  ///
  /// 돋보기가 표시된 경우 `positionToShow`가 지정한 위치로 돋보기를 업데이트합니다,
  /// 에 지정된 위치로 돋보기를 업데이트합니다.
  ///
  /// 선택 오버레이가 현재 존재하지 않는 경우와 같이 돋보기를 표시할 수 없는 경우 아무 작업도 수행하지 않습니다.
  void showMagnifier(Offset positionToShow) {
    if (_selectionOverlay == null) {
      return;
    }

    if (_selectionOverlay!.magnifierIsVisible) {
      _selectionOverlay!.updateMagnifier(positionToShow);
    } else {
      _selectionOverlay!.showMagnifier(positionToShow);
    }
  }

  /// 돋보기가 표시된 경우 숨깁니다.
  void hideMagnifier() {
    if (_selectionOverlay == null) {
      return;
    }

    if (_selectionOverlay!.magnifierIsVisible) {
      _selectionOverlay!.hideMagnifier();
    }
  }

  // Tracks the location a [_ScribblePlaceholder] should be rendered in the
  // text.
  //
  // A value of -1 indicates there should be no placeholder, otherwise the
  // value should be between 0 and the length of the text, inclusive.
  int _placeholderLocation = -1;

  @override
  void insertTextPlaceholder(Size size) {
    if (!widget.scribbleEnabled) {
      return;
    }

    if (!widget.controller.selection.isValid) {
      return;
    }

    setState(() {
      _placeholderLocation = _value.text.length - widget.controller.selection.end;
    });
  }

  @override
  void removeTextPlaceholder() {
    if (!widget.scribbleEnabled || _placeholderLocation == -1) {
      return;
    }

    setState(() {
      _placeholderLocation = -1;
    });
  }

  @override
  void performSelector(String selectorName) {
    final Intent? intent = intentForMacOSSelector(selectorName);

    if (intent != null) {
      final BuildContext? primaryContext = primaryFocus?.context;
      if (primaryContext != null) {
        Actions.invoke(primaryContext, intent);
      }
    }
  }

  @override
  String get autofillId => 'EditableText-$hashCode';

  @override
  TextInputConfiguration get textInputConfiguration {
    final List<String>? autofillHints = widget.autofillHints?.toList(growable: false);
    final AutofillConfiguration autofillConfiguration = autofillHints != null
      ? AutofillConfiguration(
          uniqueIdentifier: autofillId,
          autofillHints: autofillHints,
          currentEditingValue: currentTextEditingValue,
        )
      : AutofillConfiguration.disabled;

    return TextInputConfiguration(
      inputType: widget.keyboardType,
      readOnly: widget.readOnly,
      obscureText: widget.obscureText,
      autocorrect: widget.autocorrect,
      smartDashesType: widget.smartDashesType,
      smartQuotesType: widget.smartQuotesType,
      enableSuggestions: widget.enableSuggestions,
      enableInteractiveSelection: widget._userSelectionEnabled,
      inputAction: widget.textInputAction ?? (widget.keyboardType == TextInputType.multiline
        ? TextInputAction.newline
        : TextInputAction.done
      ),
      textCapitalization: widget.textCapitalization,
      keyboardAppearance: widget.keyboardAppearance,
      autofillConfiguration: autofillConfiguration,
      enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
      allowedMimeTypes: widget.contentInsertionConfiguration == null
        ? const <String>[]
        : widget.contentInsertionConfiguration!.allowedMimeTypes,
    );
  }

  @override
  void autofill(TextEditingValue value) => updateEditingValue(value);

  // null if no promptRect should be shown.
  TextRange? _currentPromptRectRange;

  @override
  void showAutocorrectionPromptRect(int start, int end) {
    setState(() {
      _currentPromptRectRange = TextRange(start: start, end: end);
    });
  }

  VoidCallback? _semanticsOnCopy(TextSelectionControls? controls) {
    return widget.selectionEnabled
        && _hasFocus
        && (widget.selectionControls is TextSelectionHandleControls
            ? copyEnabled
            : copyEnabled && (widget.selectionControls?.canCopy(this) ?? false))
      ? () {
        controls?.handleCopy(this);
        copySelection(SelectionChangedCause.toolbar);
      }
      : null;
  }

  VoidCallback? _semanticsOnCut(TextSelectionControls? controls) {
    return widget.selectionEnabled
        && _hasFocus
        && (widget.selectionControls is TextSelectionHandleControls
            ? cutEnabled
            : cutEnabled && (widget.selectionControls?.canCut(this) ?? false))
      ? () {
        controls?.handleCut(this);
        cutSelection(SelectionChangedCause.toolbar);
      }
      : null;
  }

  VoidCallback? _semanticsOnPaste(TextSelectionControls? controls) {
    return widget.selectionEnabled
        && _hasFocus
        && (widget.selectionControls is TextSelectionHandleControls
            ? pasteEnabled
            : pasteEnabled && (widget.selectionControls?.canPaste(this) ?? false))
        && (clipboardStatus.value == ClipboardStatus.pasteable)
      ? () {
        controls?.handlePaste(this);
        pasteText(SelectionChangedCause.toolbar);
      }
      : null;
  }

  // Returns the closest boundary location to `extent` but not including `extent`
  // itself (unless already at the start/end of the text), in the direction
  // specified by `forward`.
  TextPosition _moveBeyondTextBoundary(TextPosition extent, bool forward, TextBoundary textBoundary) {
    assert(extent.offset >= 0);
    final int newOffset = forward
      ? textBoundary.getTrailingTextBoundaryAt(extent.offset) ?? _value.text.length
      // if x is a boundary defined by `textBoundary`, most textBoundaries (except
      // LineBreaker) guarantees `x == textBoundary.getLeadingTextBoundaryAt(x)`.
      // Use x - 1 here to make sure we don't get stuck at the fixed point x.
      : textBoundary.getLeadingTextBoundaryAt(extent.offset - 1) ?? 0;
    return TextPosition(offset: newOffset);
  }

  // Returns the closest boundary location to `extent`, including `extent`
  // itself, in the direction specified by `forward`.
  //
  // This method returns a fixed point of itself: applying `_toTextBoundary`
  // again on the returned TextPosition gives the same TextPosition. It's used
  // exclusively for handling line boundaries, since performing "move to line
  // start" more than once usually doesn't move you to the previous line.
  TextPosition _moveToTextBoundary(TextPosition extent, bool forward, TextBoundary textBoundary) {
    assert(extent.offset >= 0);
    final int caretOffset;
    switch (extent.affinity) {
      case TextAffinity.upstream:
        if (extent.offset < 1 && !forward) {
          assert (extent.offset == 0);
          return const TextPosition(offset: 0);
        }
        // When the text affinity is upstream, the caret is associated with the
        // grapheme before the code unit at `extent.offset`.
        // TODO(LongCatIsLooong): don't assume extent.offset is at a grapheme
        // boundary, and do this instead:
        // final int graphemeStart = CharacterRange.at(string, extent.offset).stringBeforeLength - 1;
        caretOffset = math.max(0, extent.offset - 1);
      case TextAffinity.downstream:
        caretOffset = extent.offset;
    }
    // The line boundary range does not include some control characters
    // (most notably, Line Feed), in which case there's
    // `x ∉ getTextBoundaryAt(x)`. In case `caretOffset` points to one such
    // control character, we define that these control characters themselves are
    // still part of the previous line, but also exclude them from the
    // line boundary range since they're non-printing. IOW, no additional
    // processing needed since the LineBoundary class does exactly that.
    return forward
      ? TextPosition(offset: textBoundary.getTrailingTextBoundaryAt(caretOffset) ?? _value.text.length, affinity: TextAffinity.upstream)
      : TextPosition(offset: textBoundary.getLeadingTextBoundaryAt(caretOffset) ?? 0);
  }

  // --------------------------- Text Editing Actions ---------------------------

  TextBoundary _characterBoundary() => widget.obscureText ? _CodePointBoundary(_value.text) : CharacterBoundary(_value.text);
  TextBoundary _nextWordBoundary() => widget.obscureText ? _documentBoundary() : renderEditable.wordBoundaries.moveByWordBoundary;
  TextBoundary _linebreak() => widget.obscureText ? _documentBoundary() : LineBoundary(renderEditable);
  TextBoundary _paragraphBoundary() => ParagraphBoundary(_value.text);
  TextBoundary _documentBoundary() => DocumentBoundary(_value.text);

  Action<T> _makeOverridable<T extends Intent>(Action<T> defaultAction) {
    return Action<T>.overridable(context: context, defaultAction: defaultAction);
  }

  /// 현재 접힌 선택 영역 바로 앞과 뒤의 문자를 바꿉니다.
  ///
  /// 커서가 텍스트 끝에 있을 때 마지막 두 문자가 있는 경우 해당 문자를 바꿉니다.
  ///
  /// 커서가 텍스트의 시작 부분에 있으면 아무 작업도 수행하지 않습니다.
  void _transposeCharacters(TransposeCharactersIntent intent) {
    if (_value.text.characters.length <= 1
        || !_value.selection.isCollapsed
        || _value.selection.baseOffset == 0) {
      return;
    }

    final String text = _value.text;
    final TextSelection selection = _value.selection;
    final bool atEnd = selection.baseOffset == text.length;
    final CharacterRange transposing = CharacterRange.at(text, selection.baseOffset);
    if (atEnd) {
      transposing.moveBack(2);
    } else {
      transposing..moveBack()..expandNext();
    }
    assert(transposing.currentCharacters.length == 2);

    userUpdateTextEditingValue(
      TextEditingValue(
        text: transposing.stringBefore
            + transposing.currentCharacters.last
            + transposing.currentCharacters.first
            + transposing.stringAfter,
        selection: TextSelection.collapsed(
          offset: transposing.stringBeforeLength + transposing.current.length,
        ),
      ),
      SelectionChangedCause.keyboard,
    );
  }
  late final Action<TransposeCharactersIntent> _transposeCharactersAction = CallbackAction<TransposeCharactersIntent>(onInvoke: _transposeCharacters);

  void _replaceText(ReplaceTextIntent intent) {
    final TextEditingValue oldValue = _value;
    final TextEditingValue newValue = intent.currentTextEditingValue.replaced(
      intent.replacementRange,
      intent.replacementText,
    );
    userUpdateTextEditingValue(newValue, intent.cause);

    // If there's no change in text and selection (e.g. when selecting and
    // pasting identical text), the widget won't be rebuilt on value update.
    // Handle this by calling _didChangeTextEditingValue() so caret and scroll
    // updates can happen.
    if (newValue == oldValue) {
      _didChangeTextEditingValue();
    }
  }
  late final Action<ReplaceTextIntent> _replaceTextAction = CallbackAction<ReplaceTextIntent>(onInvoke: _replaceText);

  // Scrolls either to the beginning or end of the document depending on the
  // intent's `forward` parameter.
  void _scrollToDocumentBoundary(ScrollToDocumentBoundaryIntent intent) {
    if (intent.forward) {
      bringIntoView(TextPosition(offset: _value.text.length));
    } else {
      bringIntoView(const TextPosition(offset: 0));
    }
  }

  /// [편집 가능한 텍스트] 내부의 [스크롤 가능]을 스크롤하여 [스크롤 인텐트]를 처리합니다.
  void _scroll(ScrollIntent intent) {
    if (intent.type != ScrollIncrementType.page) {
      return;
    }

    final ScrollPosition position = _scrollController.position;
    if (widget.maxLines == 1) {
      _scrollController.jumpTo(position.maxScrollExtent);
      return;
    }

    // If the field isn't scrollable, do nothing. For example, when the lines of
    // text is less than maxLines, the field has nothing to scroll.
    if (position.maxScrollExtent == 0.0 && position.minScrollExtent == 0.0) {
      return;
    }

    final ScrollableState? state = _scrollableKey.currentState as ScrollableState?;
    final double increment = ScrollAction.getDirectionalIncrement(state!, intent);
    final double destination = clampDouble(
      position.pixels + increment,
      position.minScrollExtent,
      position.maxScrollExtent,
    );
    if (destination == position.pixels) {
      return;
    }
    _scrollController.jumpTo(destination);
  }

  /// 앞으로` 매개변수가 참이면 선택 영역을 한 페이지씩 아래로 확장하고, 그렇지 않으면 한 페이지씩 위로 확장합니다.
  void _extendSelectionByPage(ExtendSelectionByPageIntent intent) {
    if (widget.maxLines == 1) {
      return;
    }

    final TextSelection nextSelection;
    final Rect extentRect = renderEditable.getLocalRectForCaret(
      _value.selection.extent,
    );
    final ScrollableState? state = _scrollableKey.currentState as ScrollableState?;
    final double increment = ScrollAction.getDirectionalIncrement(
      state!,
      ScrollIntent(
        direction: intent.forward ? AxisDirection.down : AxisDirection.up,
        type: ScrollIncrementType.page,
      ),
    );
    final ScrollPosition position = _scrollController.position;
    if (intent.forward) {
      if (_value.selection.extentOffset >= _value.text.length) {
        return;
      }
      final Offset nextExtentOffset =
          Offset(extentRect.left, extentRect.top + increment);
      final double height = position.maxScrollExtent + renderEditable.size.height;
      final TextPosition nextExtent = nextExtentOffset.dy + position.pixels >= height
          ? TextPosition(offset: _value.text.length)
          : renderEditable.getPositionForPoint(
              renderEditable.localToGlobal(nextExtentOffset),
            );
      nextSelection = _value.selection.copyWith(
        extentOffset: nextExtent.offset,
      );
    } else {
      if (_value.selection.extentOffset <= 0) {
        return;
      }
      final Offset nextExtentOffset =
          Offset(extentRect.left, extentRect.top + increment);
      final TextPosition nextExtent = nextExtentOffset.dy + position.pixels <= 0
          ? const TextPosition(offset: 0)
          : renderEditable.getPositionForPoint(
              renderEditable.localToGlobal(nextExtentOffset),
            );
      nextSelection = _value.selection.copyWith(
        extentOffset: nextExtent.offset,
      );
    }

    bringIntoView(nextSelection.extent);
    userUpdateTextEditingValue(
      _value.copyWith(selection: nextSelection),
      SelectionChangedCause.keyboard,
    );
  }

  void _updateSelection(UpdateSelectionIntent intent) {
    bringIntoView(intent.newSelection.extent);
    userUpdateTextEditingValue(
      intent.currentTextEditingValue.copyWith(selection: intent.newSelection),
      intent.cause,
    );
  }
  late final Action<UpdateSelectionIntent> _updateSelectionAction = CallbackAction<UpdateSelectionIntent>(onInvoke: _updateSelection);

  late final _UpdateTextSelectionVerticallyAction<DirectionalCaretMovementIntent> _verticalSelectionUpdateAction =
      _UpdateTextSelectionVerticallyAction<DirectionalCaretMovementIntent>(this);

  Object? _hideToolbarIfVisible(DismissIntent intent) {
    if (_selectionOverlay?.toolbarIsVisible ?? false) {
      hideToolbar(false);
      return null;
    }
    return Actions.invoke(context, intent);
  }


  /// [onTapOutside]가 null인 경우 사용되는 기본 동작입니다.
  ///
  /// 이벤트` 인수는 알림을 발생시킨 [포인터다운이벤트]입니다.
  void _defaultOnTapOutside(PointerDownEvent event) {
    /// 포커스 드랍 동작은 데스크톱 플랫폼과 모바일 브라우저에만 존재합니다.
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
      // On mobile platforms, we don't unfocus on touch events unless they're
      // in the web browser, but we do unfocus for all other kinds of events.
        switch (event.kind) {
          case ui.PointerDeviceKind.touch:
            if (kIsWeb) {
              widget.focusNode.unfocus();
            }
          case ui.PointerDeviceKind.mouse:
          case ui.PointerDeviceKind.stylus:
          case ui.PointerDeviceKind.invertedStylus:
          case ui.PointerDeviceKind.unknown:
            widget.focusNode.unfocus();
          case ui.PointerDeviceKind.trackpad:
            throw UnimplementedError('Unexpected pointer down event for trackpad');
        }
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        widget.focusNode.unfocus();
    }
  }

  late final Map<Type, Action<Intent>> _actions = <Type, Action<Intent>>{
    DoNothingAndStopPropagationTextIntent: DoNothingAction(consumesKey: false),
    ReplaceTextIntent: _replaceTextAction,
    UpdateSelectionIntent: _updateSelectionAction,
    DirectionalFocusIntent: DirectionalFocusAction.forTextField(),
    DismissIntent: CallbackAction<DismissIntent>(onInvoke: _hideToolbarIfVisible),

    // Delete
    DeleteCharacterIntent: _makeOverridable(_DeleteTextAction<DeleteCharacterIntent>(this, _characterBoundary, _moveBeyondTextBoundary)),
    DeleteToNextWordBoundaryIntent: _makeOverridable(_DeleteTextAction<DeleteToNextWordBoundaryIntent>(this, _nextWordBoundary, _moveBeyondTextBoundary)),
    DeleteToLineBreakIntent: _makeOverridable(_DeleteTextAction<DeleteToLineBreakIntent>(this, _linebreak, _moveToTextBoundary)),

    // Extend/Move Selection
    ExtendSelectionByCharacterIntent: _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionByCharacterIntent>(this, _characterBoundary, _moveBeyondTextBoundary, ignoreNonCollapsedSelection: false)),
    ExtendSelectionByPageIntent: _makeOverridable(CallbackAction<ExtendSelectionByPageIntent>(onInvoke: _extendSelectionByPage)),
    ExtendSelectionToNextWordBoundaryIntent: _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionToNextWordBoundaryIntent>(this, _nextWordBoundary, _moveBeyondTextBoundary, ignoreNonCollapsedSelection: true)),
    ExtendSelectionToNextParagraphBoundaryIntent : _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionToNextParagraphBoundaryIntent>(this, _paragraphBoundary, _moveBeyondTextBoundary, ignoreNonCollapsedSelection: true)),
    ExtendSelectionToLineBreakIntent: _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionToLineBreakIntent>(this, _linebreak, _moveToTextBoundary, ignoreNonCollapsedSelection: true)),
    ExtendSelectionVerticallyToAdjacentLineIntent: _makeOverridable(_verticalSelectionUpdateAction),
    ExtendSelectionVerticallyToAdjacentPageIntent: _makeOverridable(_verticalSelectionUpdateAction),
    ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent: _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionToNextParagraphBoundaryOrCaretLocationIntent>(this, _paragraphBoundary, _moveBeyondTextBoundary, ignoreNonCollapsedSelection: true)),
    ExtendSelectionToDocumentBoundaryIntent: _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionToDocumentBoundaryIntent>(this, _documentBoundary, _moveBeyondTextBoundary, ignoreNonCollapsedSelection: true)),
    ExtendSelectionToNextWordBoundaryOrCaretLocationIntent: _makeOverridable(_UpdateTextSelectionAction<ExtendSelectionToNextWordBoundaryOrCaretLocationIntent>(this, _nextWordBoundary, _moveBeyondTextBoundary, ignoreNonCollapsedSelection: true)),
    ScrollToDocumentBoundaryIntent: _makeOverridable(CallbackAction<ScrollToDocumentBoundaryIntent>(onInvoke: _scrollToDocumentBoundary)),
    ScrollIntent: CallbackAction<ScrollIntent>(onInvoke: _scroll),

    // Expand Selection
    ExpandSelectionToLineBreakIntent: _makeOverridable(_UpdateTextSelectionAction<ExpandSelectionToLineBreakIntent>(this, _linebreak, _moveToTextBoundary, ignoreNonCollapsedSelection: true, isExpand: true)),
    ExpandSelectionToDocumentBoundaryIntent: _makeOverridable(_UpdateTextSelectionAction<ExpandSelectionToDocumentBoundaryIntent>(this, _documentBoundary, _moveToTextBoundary, ignoreNonCollapsedSelection: true, isExpand: true, extentAtIndex: true)),

    // Copy Paste
    SelectAllTextIntent: _makeOverridable(_SelectAllAction(this)),
    CopySelectionTextIntent: _makeOverridable(_CopySelectionAction(this)),
    PasteTextIntent: _makeOverridable(CallbackAction<PasteTextIntent>(onInvoke: (PasteTextIntent intent) => pasteText(intent.cause))),

    TransposeCharactersIntent: _makeOverridable(_transposeCharactersAction),
  };

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    super.build(context); // See AutomaticKeepAliveClientMixin.

    final TextSelectionControls? controls = widget.selectionControls;
    return _CompositionCallback(
      compositeCallback: _compositeCallback,
      enabled: _hasInputConnection,
      child: TextFieldTapRegion(
        onTapOutside: widget.onTapOutside ?? _defaultOnTapOutside,
        debugLabel: kReleaseMode ? null : 'EditableText',
        child: MouseRegion(
          cursor: widget.mouseCursor ?? SystemMouseCursors.text,
          child: Actions(
            actions: _actions,
            child: UndoHistory<TextEditingValue>(
              value: widget.controller,
              onTriggered: (TextEditingValue value) {
                userUpdateTextEditingValue(value, SelectionChangedCause.keyboard);
              },
              shouldChangeUndoStack: (TextEditingValue? oldValue, TextEditingValue newValue) {
                if (!newValue.selection.isValid) {
                  return false;
                }

                if (oldValue == null) {
                  return true;
                }

                switch (defaultTargetPlatform) {
                  case TargetPlatform.iOS:
                  case TargetPlatform.macOS:
                  case TargetPlatform.fuchsia:
                  case TargetPlatform.linux:
                  case TargetPlatform.windows:
                    // Composing text is not counted in history coalescing.
                    if (!widget.controller.value.composing.isCollapsed) {
                      return false;
                    }
                  case TargetPlatform.android:
                    // Gboard on Android puts non-CJK words in composing regions. Coalesce
                    // composing text in order to allow the saving of partial words in that
                    // case.
                    break;
                }

                return oldValue.text != newValue.text || oldValue.composing != newValue.composing;
              },
              focusNode: widget.focusNode,
              controller: widget.undoController,
              child: Focus(
                focusNode: widget.focusNode,
                includeSemantics: false,
                debugLabel: kReleaseMode ? null : 'EditableText',
                child: Scrollable(
                  key: _scrollableKey,
                  excludeFromSemantics: true,
                  axisDirection: _isMultiline ? AxisDirection.down : AxisDirection.right,
                  controller: _scrollController,
                  physics: widget.scrollPhysics,
                  dragStartBehavior: widget.dragStartBehavior,
                  restorationId: widget.restorationId,
                  // If a ScrollBehavior is not provided, only apply scrollbars when
                  // multiline. The overscroll indicator should not be applied in
                  // either case, glowing or stretching.
                  scrollBehavior: widget.scrollBehavior ?? ScrollConfiguration.of(context).copyWith(
                    scrollbars: _isMultiline,
                    overscroll: false,
                  ),
                  viewportBuilder: (BuildContext context, ViewportOffset offset) {
                    return CompositedTransformTarget(
                      link: _toolbarLayerLink,
                      child: Semantics(
                        onCopy: _semanticsOnCopy(controls),
                        onCut: _semanticsOnCut(controls),
                        onPaste: _semanticsOnPaste(controls),
                        child: _ScribbleFocusable(
                          focusNode: widget.focusNode,
                          editableKey: _editableKey,
                          enabled: widget.scribbleEnabled,
                          updateSelectionRects: () {
                            _openInputConnection();
                            _updateSelectionRects(force: true);
                          },
                          child: _Editable(
                            key: _editableKey,
                            startHandleLayerLink: _startHandleLayerLink,
                            endHandleLayerLink: _endHandleLayerLink,
                            inlineSpan: buildTextSpan(),
                            value: _value,
                            cursorColor: _cursorColor,
                            backgroundCursorColor: widget.backgroundCursorColor,
                            showCursor: EditableText.debugDeterministicCursor
                                ? ValueNotifier<bool>(widget.showCursor)
                                : _cursorVisibilityNotifier,
                            forceLine: widget.forceLine,
                            readOnly: widget.readOnly,
                            hasFocus: _hasFocus,
                            maxLines: widget.maxLines,
                            minLines: widget.minLines,
                            expands: widget.expands,
                            strutStyle: widget.strutStyle,
                            selectionColor: _selectionOverlay?.spellCheckToolbarIsVisible ?? false
                                ? _spellCheckConfiguration.misspelledSelectionColor ?? widget.selectionColor
                                : widget.selectionColor,
                            textScaleFactor: widget.textScaleFactor ?? MediaQuery.textScaleFactorOf(context),
                            textAlign: widget.textAlign,
                            textDirection: _textDirection,
                            locale: widget.locale,
                            textHeightBehavior: widget.textHeightBehavior ?? DefaultTextHeightBehavior.maybeOf(context),
                            textWidthBasis: widget.textWidthBasis,
                            obscuringCharacter: widget.obscuringCharacter,
                            obscureText: widget.obscureText,
                            offset: offset,
                            rendererIgnoresPointer: widget.rendererIgnoresPointer,
                            cursorWidth: widget.cursorWidth,
                            cursorHeight: widget.cursorHeight,
                            cursorRadius: widget.cursorRadius,
                            cursorOffset: widget.cursorOffset ?? Offset.zero,
                            selectionHeightStyle: widget.selectionHeightStyle,
                            selectionWidthStyle: widget.selectionWidthStyle,
                            paintCursorAboveText: widget.paintCursorAboveText,
                            enableInteractiveSelection: widget._userSelectionEnabled,
                            textSelectionDelegate: this,
                            devicePixelRatio: _devicePixelRatio,
                            promptRectRange: _currentPromptRectRange,
                            promptRectColor: widget.autocorrectionTextRectColor,
                            clipBehavior: widget.clipBehavior,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 현재 편집 값에서 [TextSpan]을 작성합니다.
  ///
  /// 기본적으로 작성 범위에 있는 텍스트는 밑줄이 그어진 상태로 표시됩니다.
  /// 자손은 이 메서드를 재정의하여 텍스트의 모양을 사용자 지정할 수 있습니다.
  TextSpan buildTextSpan() {

    if (widget.obscureText) {
      String text = _value.text;
      text = widget.obscuringCharacter * text.length;
      // Reveal the latest character in an obscured field only on mobile.
      // Newer versions of iOS (iOS 15+) no longer reveal the most recently
      // entered character.
      const Set<TargetPlatform> mobilePlatforms = <TargetPlatform> {
        TargetPlatform.android, TargetPlatform.fuchsia,
      };
      final bool brieflyShowPassword = WidgetsBinding.instance.platformDispatcher.brieflyShowPassword
                                    && mobilePlatforms.contains(defaultTargetPlatform);
      if (brieflyShowPassword) {
        final int? o = _obscureShowCharTicksPending > 0 ? _obscureLatestCharIndex : null;
        if (o != null && o >= 0 && o < text.length) {
          text = text.replaceRange(o, o + 1, _value.text.substring(o, o + 1));
        }
      }
      return TextSpan(style: _style, text: text);
    }
    if (_placeholderLocation >= 0 && _placeholderLocation <= _value.text.length) {
      final List<_ScribblePlaceholder> placeholders = <_ScribblePlaceholder>[];
      final int placeholderLocation = _value.text.length - _placeholderLocation;
      if (_isMultiline) {
        // The zero size placeholder here allows the line to break and keep the caret on the first line.
        placeholders.add(const _ScribblePlaceholder(child: SizedBox.shrink(), size: Size.zero));
        placeholders.add(_ScribblePlaceholder(child: const SizedBox.shrink(), size: Size(renderEditable.size.width, 0.0)));
      } else {
        placeholders.add(const _ScribblePlaceholder(child: SizedBox.shrink(), size: Size(100.0, 0.0)));
      }
      return TextSpan(style: _style, children: <InlineSpan>[
          TextSpan(text: _value.text.substring(0, placeholderLocation)),
          ...placeholders,
          TextSpan(text: _value.text.substring(placeholderLocation)),
        ],
      );
    }
    final bool withComposing = !widget.readOnly && _hasFocus;
    if (_spellCheckResultsReceived) {
      // If the composing range is out of range for the current text, ignore it to
      // preserve the tree integrity, otherwise in release mode a RangeError will
      // be thrown and this EditableText will be built with a broken subtree.
      assert(!_value.composing.isValid || !withComposing || _value.isComposingRangeValid);

      final bool composingRegionOutOfRange = !_value.isComposingRangeValid || !withComposing;

      return buildTextSpanWithSpellCheckSuggestions(
        _value,
        composingRegionOutOfRange,
        _style,
        _spellCheckConfiguration.misspelledTextStyle!,
        spellCheckResults!,
      );
    }

    // Read only mode should not paint text composing.
    return widget.controller.buildTextSpan(
      context: context,
      style: _style,
      withComposing: withComposing,
    );
  }
}

class _Editable extends MultiChildRenderObjectWidget {
  _Editable({
    super.key,
    required this.inlineSpan,
    required this.value,
    required this.startHandleLayerLink,
    required this.endHandleLayerLink,
    this.cursorColor,
    this.backgroundCursorColor,
    required this.showCursor,
    required this.forceLine,
    required this.readOnly,
    this.textHeightBehavior,
    required this.textWidthBasis,
    required this.hasFocus,
    required this.maxLines,
    this.minLines,
    required this.expands,
    this.strutStyle,
    this.selectionColor,
    required this.textScaleFactor,
    required this.textAlign,
    required this.textDirection,
    this.locale,
    required this.obscuringCharacter,
    required this.obscureText,
    required this.offset,
    this.rendererIgnoresPointer = false,
    required this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    required this.cursorOffset,
    required this.paintCursorAboveText,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.enableInteractiveSelection = true,
    required this.textSelectionDelegate,
    required this.devicePixelRatio,
    this.promptRectRange,
    this.promptRectColor,
    required this.clipBehavior,
  }) : super(children: WidgetSpan.extractFromInlineSpan(inlineSpan, textScaleFactor));

  final InlineSpan inlineSpan;
  final TextEditingValue value;
  final Color? cursorColor;
  final LayerLink startHandleLayerLink;
  final LayerLink endHandleLayerLink;
  final Color? backgroundCursorColor;
  final ValueNotifier<bool> showCursor;
  final bool forceLine;
  final bool readOnly;
  final bool hasFocus;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final StrutStyle? strutStyle;
  final Color? selectionColor;
  final double textScaleFactor;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale? locale;
  final String obscuringCharacter;
  final bool obscureText;
  final TextHeightBehavior? textHeightBehavior;
  final TextWidthBasis textWidthBasis;
  final ViewportOffset offset;
  final bool rendererIgnoresPointer;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Offset cursorOffset;
  final bool paintCursorAboveText;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final bool enableInteractiveSelection;
  final TextSelectionDelegate textSelectionDelegate;
  final double devicePixelRatio;
  final TextRange? promptRectRange;
  final Color? promptRectColor;
  final Clip clipBehavior;

  @override
  RenderEditable createRenderObject(BuildContext context) {
    return RenderEditable(
      text: inlineSpan,
      cursorColor: cursorColor,
      startHandleLayerLink: startHandleLayerLink,
      endHandleLayerLink: endHandleLayerLink,
      backgroundCursorColor: backgroundCursorColor,
      showCursor: showCursor,
      forceLine: forceLine,
      readOnly: readOnly,
      hasFocus: hasFocus,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      strutStyle: strutStyle,
      selectionColor: selectionColor,
      textScaleFactor: textScaleFactor,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale ?? Localizations.maybeLocaleOf(context),
      selection: value.selection,
      offset: offset,
      ignorePointer: rendererIgnoresPointer,
      obscuringCharacter: obscuringCharacter,
      obscureText: obscureText,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorOffset: cursorOffset,
      paintCursorAboveText: paintCursorAboveText,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      enableInteractiveSelection: enableInteractiveSelection,
      textSelectionDelegate: textSelectionDelegate,
      devicePixelRatio: devicePixelRatio,
      promptRectRange: promptRectRange,
      promptRectColor: promptRectColor,
      clipBehavior: clipBehavior,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderEditable renderObject) {
    renderObject
      ..text = inlineSpan
      ..cursorColor = cursorColor
      ..startHandleLayerLink = startHandleLayerLink
      ..endHandleLayerLink = endHandleLayerLink
      ..backgroundCursorColor = backgroundCursorColor
      ..showCursor = showCursor
      ..forceLine = forceLine
      ..readOnly = readOnly
      ..hasFocus = hasFocus
      ..maxLines = maxLines
      ..minLines = minLines
      ..expands = expands
      ..strutStyle = strutStyle
      ..selectionColor = selectionColor
      ..textScaleFactor = textScaleFactor
      ..textAlign = textAlign
      ..textDirection = textDirection
      ..locale = locale ?? Localizations.maybeLocaleOf(context)
      ..selection = value.selection
      ..offset = offset
      ..ignorePointer = rendererIgnoresPointer
      ..textHeightBehavior = textHeightBehavior
      ..textWidthBasis = textWidthBasis
      ..obscuringCharacter = obscuringCharacter
      ..obscureText = obscureText
      ..cursorWidth = cursorWidth
      ..cursorHeight = cursorHeight
      ..cursorRadius = cursorRadius
      ..cursorOffset = cursorOffset
      ..selectionHeightStyle = selectionHeightStyle
      ..selectionWidthStyle = selectionWidthStyle
      ..enableInteractiveSelection = enableInteractiveSelection
      ..textSelectionDelegate = textSelectionDelegate
      ..devicePixelRatio = devicePixelRatio
      ..paintCursorAboveText = paintCursorAboveText
      ..promptRectColor = promptRectColor
      ..clipBehavior = clipBehavior
      ..setPromptRectRange(promptRectRange);
  }
}

@immutable
class _ScribbleCacheKey {
  const _ScribbleCacheKey({
    required this.inlineSpan,
    required this.textAlign,
    required this.textDirection,
    required this.textScaleFactor,
    required this.textHeightBehavior,
    required this.locale,
    required this.structStyle,
    required this.placeholder,
    required this.size,
  });

  final TextAlign textAlign;
  final TextDirection textDirection;
  final double textScaleFactor;
  final TextHeightBehavior? textHeightBehavior;
  final Locale? locale;
  final StrutStyle structStyle;
  final int placeholder;
  final Size size;
  final InlineSpan inlineSpan;

  RenderComparison compare(_ScribbleCacheKey other) {
    if (identical(other, this)) {
      return RenderComparison.identical;
    }
    final bool needsLayout = textAlign != other.textAlign
                          || textDirection != other.textDirection
                          || textScaleFactor != other.textScaleFactor
                          || (textHeightBehavior ?? const TextHeightBehavior()) != (other.textHeightBehavior ?? const TextHeightBehavior())
                          || locale != other.locale
                          || structStyle != other.structStyle
                          || placeholder != other.placeholder
                          || size != other.size;
    return needsLayout ? RenderComparison.layout : inlineSpan.compareTo(other.inlineSpan);
  }
}

class _ScribbleFocusable extends StatefulWidget {
  const _ScribbleFocusable({
    required this.child,
    required this.focusNode,
    required this.editableKey,
    required this.updateSelectionRects,
    required this.enabled,
  });

  final Widget child;
  final FocusNode focusNode;
  final GlobalKey editableKey;
  final VoidCallback updateSelectionRects;
  final bool enabled;

  @override
  _ScribbleFocusableState createState() => _ScribbleFocusableState();
}

class _ScribbleFocusableState extends State<_ScribbleFocusable> implements ScribbleClient {
  _ScribbleFocusableState(): _elementIdentifier = (_nextElementIdentifier++).toString();

  @override
  void initState() {
    super.initState();
    if (widget.enabled) {
      TextInput.registerScribbleElement(elementIdentifier, this);
    }
  }

  @override
  void didUpdateWidget(_ScribbleFocusable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.enabled && widget.enabled) {
      TextInput.registerScribbleElement(elementIdentifier, this);
    }

    if (oldWidget.enabled && !widget.enabled) {
      TextInput.unregisterScribbleElement(elementIdentifier);
    }
  }

  @override
  void dispose() {
    TextInput.unregisterScribbleElement(elementIdentifier);
    super.dispose();
  }

  RenderEditable? get renderEditable => widget.editableKey.currentContext?.findRenderObject() as RenderEditable?;

  static int _nextElementIdentifier = 1;
  final String _elementIdentifier;

  @override
  String get elementIdentifier => _elementIdentifier;

  @override
  void onScribbleFocus(Offset offset) {
    widget.focusNode.requestFocus();
    renderEditable?.selectPositionAt(from: offset, cause: SelectionChangedCause.scribble);
    widget.updateSelectionRects();
  }

  @override
  bool isInScribbleRect(Rect rect) {
    final Rect calculatedBounds = bounds;
    if (renderEditable?.readOnly ?? false) {
      return false;
    }
    if (calculatedBounds == Rect.zero) {
      return false;
    }
    if (!calculatedBounds.overlaps(rect)) {
      return false;
    }
    final Rect intersection = calculatedBounds.intersect(rect);
    final HitTestResult result = HitTestResult();
    WidgetsBinding.instance.hitTestInView(result, intersection.center, View.of(context).viewId);
    return result.path.any((HitTestEntry entry) => entry.target == renderEditable);
  }

  @override
  Rect get bounds {
    final RenderBox? box = context.findRenderObject() as RenderBox?;
    if (box == null || !mounted || !box.attached) {
      return Rect.zero;
    }
    final Matrix4 transform = box.getTransformTo(null);
    return MatrixUtils.transformRect(transform, Rect.fromLTWH(0, 0, box.size.width, box.size.height));
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class _ScribblePlaceholder extends WidgetSpan {
  const _ScribblePlaceholder({
    required super.child,
    required this.size,
  });

  /// 텍스트 범위의 크기로, [텍스트 페인터]에 자리 표시자 크기를 추가하는 대신 사용됩니다.
  final Size size;

  @override
  void build(ui.ParagraphBuilder builder, { double textScaleFactor = 1.0, List<PlaceholderDimensions>? dimensions }) {
    assert(debugAssertIsValid());
    final bool hasStyle = style != null;
    if (hasStyle) {
      builder.pushStyle(style!.getTextStyle(textScaleFactor: textScaleFactor));
    }
    builder.addPlaceholder(
      size.width,
      size.height,
      alignment,
      scale: textScaleFactor,
    );
    if (hasStyle) {
      builder.pop();
    }
  }
}

/// 코드 포인트를 논리적 경계로 사용하는 텍스트 경계입니다.
///
/// 코드 포인트는 단일 문자를 나타냅니다. 이는 사용자가 인식하는 문자 또는 그래프에 의해 표시되는 것보다 작을 수 있습니다. 예를 들어 "👨‍👩‍👦"와 같은 단일 그래프(이 경우 유니코드 확장 그래프 클러스터)는 남자 이모티콘, 너비가 0인 결합자, 여자 이모티콘, 또 다른 너비가 0인 결합자, 소년 이모티콘 등 5개의 코드 포인트로 구성됩니다.
/// 각 이모티콘은 두 개의 코드 단위로 구성되므로 [문자열]의 길이는 8입니다.
///
/// 코드 단위는 Dart의 String 클래스를 측정하는 단위로, UTF-16으로 인코딩됩니다.
///
/// 참조
///
///  * 이 클래스와 같은 코드 포인트를 다루는 [String.runes].
///  * [String.characters], 그래프 문자를 다룹니다.
///  * 이 클래스와 같은 [TextBoundary]이지만 경계가 코드 포인트가 아닌 그래프인 [CharacterBoundary].
class _CodePointBoundary extends TextBoundary {
  const _CodePointBoundary(this._text);

  final String _text;

  // Returns true if the given position falls in the center of a surrogate pair.
  bool _breaksSurrogatePair(int position) {
    assert(position > 0 && position < _text.length && _text.length > 1);
    return TextPainter.isHighSurrogate(_text.codeUnitAt(position - 1))
        && TextPainter.isLowSurrogate(_text.codeUnitAt(position));
  }

  @override
  int? getLeadingTextBoundaryAt(int position) {
    if (_text.isEmpty || position < 0) {
      return null;
    }
    if (position == 0) {
      return 0;
    }
    if (position >= _text.length) {
      return _text.length;
    }
    if (_text.length <= 1) {
      return position;
    }

    return _breaksSurrogatePair(position)
        ? position - 1
        : position;
  }

  @override
  int? getTrailingTextBoundaryAt(int position) {
    if (_text.isEmpty || position >= _text.length) {
      return null;
    }
    if (position < 0) {
      return 0;
    }
    if (position == _text.length - 1) {
      return _text.length;
    }
    if (_text.length <= 1) {
      return position;
    }

    return _breaksSurrogatePair(position + 1)
        ? position + 2
        : position + 1;
  }
}

// -------------------------------  Text Actions -------------------------------
class _DeleteTextAction<T extends DirectionalTextEditingIntent> extends ContextAction<T> {
  _DeleteTextAction(this.state, this.getTextBoundary, this._applyTextBoundary);

  final EditableTextState state;
  final TextBoundary Function() getTextBoundary;
  final _ApplyTextBoundary _applyTextBoundary;

  @override
  Object? invoke(T intent, [BuildContext? context]) {
    final TextSelection selection = state._value.selection;
    if (!selection.isValid) {
      return null;
    }
    assert(selection.isValid);
    // Expands the selection to ensure the range covers full graphemes.
    final TextBoundary atomicBoundary = state._characterBoundary();
    if (!selection.isCollapsed) {
      // Expands the selection to ensure the range covers full graphemes.
      final TextRange range = TextRange(
        start: atomicBoundary.getLeadingTextBoundaryAt(selection.start) ?? state._value.text.length,
        end: atomicBoundary.getTrailingTextBoundaryAt(selection.end - 1) ?? 0,
      );
      return Actions.invoke(
        context!,
        ReplaceTextIntent(state._value, '', range, SelectionChangedCause.keyboard),
      );
    }

    final int target = _applyTextBoundary(selection.base, intent.forward, getTextBoundary()).offset;

    final TextRange rangeToDelete = TextSelection(
      baseOffset: intent.forward
        ? atomicBoundary.getLeadingTextBoundaryAt(selection.baseOffset) ?? state._value.text.length
        : atomicBoundary.getTrailingTextBoundaryAt(selection.baseOffset - 1) ?? 0,
      extentOffset: target,
    );
    return Actions.invoke(
      context!,
      ReplaceTextIntent(state._value, '', rangeToDelete, SelectionChangedCause.keyboard),
    );
  }

  @override
  bool get isActionEnabled => !state.widget.readOnly && state._value.selection.isValid;
}

class _UpdateTextSelectionAction<T extends DirectionalCaretMovementIntent> extends ContextAction<T> {
  _UpdateTextSelectionAction(
    this.state,
    this.getTextBoundary,
    this.applyTextBoundary, {
    required this.ignoreNonCollapsedSelection,
    this.isExpand = false,
    this.extentAtIndex = false,
  });

  final EditableTextState state;
  final bool ignoreNonCollapsedSelection;
  final bool isExpand;
  final bool extentAtIndex;
  final TextBoundary Function() getTextBoundary;
  final _ApplyTextBoundary applyTextBoundary;

  static const int NEWLINE_CODE_UNIT = 10;

  // Returns true iff the given position is at a wordwrap boundary in the
  // upstream position.
  bool _isAtWordwrapUpstream(TextPosition position) {
    final TextPosition end = TextPosition(
      offset: state.renderEditable.getLineAtOffset(position).end,
      affinity: TextAffinity.upstream,
    );
    return end == position && end.offset != state.textEditingValue.text.length
        && state.textEditingValue.text.codeUnitAt(position.offset) != NEWLINE_CODE_UNIT;
  }

  // Returns true if the given position at a wordwrap boundary in the
  // downstream position.
  bool _isAtWordwrapDownstream(TextPosition position) {
    final TextPosition start = TextPosition(
      offset: state.renderEditable.getLineAtOffset(position).start,
    );
    return start == position && start.offset != 0
        && state.textEditingValue.text.codeUnitAt(position.offset - 1) != NEWLINE_CODE_UNIT;
  }

  @override
  Object? invoke(T intent, [BuildContext? context]) {
    final TextSelection selection = state._value.selection;
    assert(selection.isValid);

    final bool collapseSelection = intent.collapseSelection || !state.widget.selectionEnabled;
    if (!selection.isCollapsed && !ignoreNonCollapsedSelection && collapseSelection) {
      return Actions.invoke(context!, UpdateSelectionIntent(
        state._value,
        TextSelection.collapsed(offset: intent.forward ? selection.end : selection.start),
        SelectionChangedCause.keyboard,
      ));
    }

    TextPosition extent = selection.extent;
    // If continuesAtWrap is true extent and is at the relevant wordwrap, then
    // move it just to the other side of the wordwrap.
    if (intent.continuesAtWrap) {
      if (intent.forward && _isAtWordwrapUpstream(extent)) {
        extent = TextPosition(
          offset: extent.offset,
        );
      } else if (!intent.forward && _isAtWordwrapDownstream(extent)) {
        extent = TextPosition(
          offset: extent.offset,
          affinity: TextAffinity.upstream,
        );
      }
    }

    final bool shouldTargetBase = isExpand && (intent.forward ? selection.baseOffset > selection.extentOffset : selection.baseOffset < selection.extentOffset);
    final TextPosition newExtent = applyTextBoundary(shouldTargetBase ? selection.base : extent, intent.forward, getTextBoundary());
    final TextSelection newSelection = collapseSelection || (!isExpand && newExtent.offset == selection.baseOffset)
      ? TextSelection.fromPosition(newExtent)
      : isExpand ? selection.expandTo(newExtent, extentAtIndex || selection.isCollapsed) : selection.extendTo(newExtent);

    final bool shouldCollapseToBase = intent.collapseAtReversal
      && (selection.baseOffset - selection.extentOffset) * (selection.baseOffset - newSelection.extentOffset) < 0;
    final TextSelection newRange = shouldCollapseToBase ? TextSelection.fromPosition(selection.base) : newSelection;
    return Actions.invoke(context!, UpdateSelectionIntent(state._value, newRange, SelectionChangedCause.keyboard));
  }

  @override
  bool get isActionEnabled => state._value.selection.isValid;
}

class _UpdateTextSelectionVerticallyAction<T extends DirectionalCaretMovementIntent> extends ContextAction<T> {
  _UpdateTextSelectionVerticallyAction(this.state);

  final EditableTextState state;

  VerticalCaretMovementRun? _verticalMovementRun;
  TextSelection? _runSelection;

  void stopCurrentVerticalRunIfSelectionChanges() {
    final TextSelection? runSelection = _runSelection;
    if (runSelection == null) {
      assert(_verticalMovementRun == null);
      return;
    }
    _runSelection = state._value.selection;
    final TextSelection currentSelection = state.widget.controller.selection;
    final bool continueCurrentRun = currentSelection.isValid && currentSelection.isCollapsed
                                    && currentSelection.baseOffset == runSelection.baseOffset
                                    && currentSelection.extentOffset == runSelection.extentOffset;
    if (!continueCurrentRun) {
      _verticalMovementRun = null;
      _runSelection = null;
    }
  }

  @override
  void invoke(T intent, [BuildContext? context]) {
    assert(state._value.selection.isValid);

    final bool collapseSelection = intent.collapseSelection || !state.widget.selectionEnabled;
    final TextEditingValue value = state._textEditingValueforTextLayoutMetrics;
    if (!value.selection.isValid) {
      return;
    }

    if (_verticalMovementRun?.isValid == false) {
      _verticalMovementRun = null;
      _runSelection = null;
    }

    final VerticalCaretMovementRun currentRun = _verticalMovementRun
      ?? state.renderEditable.startVerticalCaretMovement(state.renderEditable.selection!.extent);

    final bool shouldMove = intent is ExtendSelectionVerticallyToAdjacentPageIntent
      ? currentRun.moveByOffset((intent.forward ? 1.0 : -1.0) * state.renderEditable.size.height)
      : intent.forward ? currentRun.moveNext() : currentRun.movePrevious();
    final TextPosition newExtent = shouldMove
      ? currentRun.current
      : intent.forward ? TextPosition(offset: state._value.text.length) : const TextPosition(offset: 0);
    final TextSelection newSelection = collapseSelection
      ? TextSelection.fromPosition(newExtent)
      : value.selection.extendTo(newExtent);

    Actions.invoke(
      context!,
      UpdateSelectionIntent(value, newSelection, SelectionChangedCause.keyboard),
    );
    if (state._value.selection == newSelection) {
      _verticalMovementRun = currentRun;
      _runSelection = newSelection;
    }
  }

  @override
  bool get isActionEnabled => state._value.selection.isValid;
}

class _SelectAllAction extends ContextAction<SelectAllTextIntent> {
  _SelectAllAction(this.state);

  final EditableTextState state;

  @override
  Object? invoke(SelectAllTextIntent intent, [BuildContext? context]) {
    return Actions.invoke(
      context!,
      UpdateSelectionIntent(
        state._value,
        TextSelection(baseOffset: 0, extentOffset: state._value.text.length),
        intent.cause,
      ),
    );
  }

  @override
  bool get isActionEnabled => state.widget.selectionEnabled;
}

class _CopySelectionAction extends ContextAction<CopySelectionTextIntent> {
  _CopySelectionAction(this.state);

  final EditableTextState state;

  @override
  void invoke(CopySelectionTextIntent intent, [BuildContext? context]) {
    if (intent.collapseSelection) {
      state.cutSelection(intent.cause);
    } else {
      state.copySelection(intent.cause);
    }
  }

  @override
  bool get isActionEnabled => state._value.selection.isValid && !state._value.selection.isCollapsed;
}

/// 일부 텍스트 범위의 시작 및 끝 글리프 높이입니다.
@immutable
class _GlyphHeights {
  const _GlyphHeights({
    required this.start,
    required this.end,
  });

  /// 첫 번째 줄의 글리프 높이입니다.
  final double start;

  /// 마지막 줄의 글리프 높이입니다.
  final double end;
}
```
