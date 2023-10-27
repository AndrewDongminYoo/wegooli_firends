// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// 📦 Package imports:
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

abstract class CustomModel<W extends Widget> {
  // 초기화 메서드
  bool _isInitialized = false;
  void initState(BuildContext context);
  void _init(BuildContext context) {
    if (!_isInitialized) {
      initState(context);
      _isInitialized = true;
    }
    if (context.widget is W) {
      _widget = context.widget as W;
    }
  }

  /// 이 모델과 연결된 위젯입니다.
  /// 예를 들어 위젯의 파라미터에 액세스할 때 유용합니다.
  W? _widget;

  /// 이 메서드는 사용될 때 항상 널이 아니지만, 가비지 컬렉션을 위해 [dispose] 메서드에서 위젯을 폐기할 수 있도록 널로 설정할 수 있습니다.
  W get widget => _widget!;

  /// dispose 메서드 해당 위젯이 dispose될 때 이 모델을 dispose할지 여부입니다.
  /// 페이지/컴포넌트 모델이 하위 모델의 폐기를 처리하므로 기본적으로 이 값은 페이지의 경우 참이고 컴포넌트의 경우 거짓입니다.
  bool disposeOnWidgetDisposal = true;
  void dispose();
  void maybeDispose() {
    if (disposeOnWidgetDisposal) {
      dispose();
    }

    // 가비지 컬렉션을 위해 위젯에 대한 참조를 제거합니다.
    _widget = null;
  }

  /// 업데이트 시 포함된 페이지/컴포넌트를 업데이트할지 여부입니다.
  bool updateOnChange = false;

  /// 모델이 업데이트를 받을 때 호출할 함수입니다.
  VoidCallback _updateCallback = () {};
  void onUpdate() => updateOnChange ? _updateCallback() : () {};
  CustomModel setOnUpdate({
    bool updateOnChange = false,
    required VoidCallback onUpdate,
  }) =>
      this
        .._updateCallback = onUpdate
        ..updateOnChange = updateOnChange;

  // 이 모델이 업데이트를 받으면 포함 페이지를 업데이트합니다.
  void updatePage(VoidCallback callback) {
    callback();
    _updateCallback();
  }
}

class CustomDynamicModels<T extends CustomModel> {
  CustomDynamicModels(this.defaultBuilder);

  final T Function() defaultBuilder;
  final Map<String, T> _childrenModels = {};
  final Map<String, int> _childrenIndexes = {};
  Set<String>? _activeKeys;

  T getModel(String uniqueKey, int index) {
    _updateActiveKeys(uniqueKey);
    _childrenIndexes[uniqueKey] = index;
    return _childrenModels[uniqueKey] ??= defaultBuilder();
  }

  List<S> getValues<S>(S? Function(T) getValue) {
    return _childrenIndexes.entries
        // 인덱스별로 키를 정렬합니다.
        .sorted((a, b) => a.value.compareTo(b.value))
        .where((e) => _childrenModels[e.key] != null)
        // 각 모델을 원하는 값에 매핑하여 목록으로 반환합니다.
        // 인덱스 순서를 유지하기 위해 널 값을 제거하는 대신 기본값을 제공합니다(합리적인 기본값이 있는 유형의 경우).
        .map((e) => getValue(_childrenModels[e.key]!) ?? _getDefaultValue<S>()!)
        .toList();
  }

  S? getValueAtIndex<S>(int index, S? Function(T) getValue) {
    final uniqueKey =
        _childrenIndexes.entries.firstWhereOrNull((e) => e.value == index)?.key;
    return getValueForKey(uniqueKey, getValue);
  }

  S? getValueForKey<S>(String? uniqueKey, S? Function(T) getValue) {
    final model = _childrenModels[uniqueKey];
    return model != null ? getValue(model) : null;
  }

  void dispose() {
    for (final model in _childrenModels.values) {
      model.dispose();
    }
  }

  void _updateActiveKeys(String uniqueKey) {
    final shouldResetActiveKeys = _activeKeys == null;
    _activeKeys ??= {};
    _activeKeys!.add(uniqueKey);

    if (shouldResetActiveKeys) {
      /// 빌드가 완료된 후 사용하지 않는 모델을 제거하고 폐기하는 포스트 프레임 콜백을 추가한 다음,
      /// 다음 빌드에서 이 작업을 다시 수행할 수 있도록 `_activeKeys`를 null로 재설정합니다.
      SchedulerBinding.instance.addPostFrameCallback((_) {
        _childrenIndexes.removeWhere((k, _) => !_activeKeys!.contains(k));
        _childrenModels.keys
            .toSet()
            .difference(_activeKeys!)

            /// 사용하지 않는 모델은 다른 곳에서 사용되지 않고 다른 방법으로 폐기되지 않으므로 제거하고 폐기합니다.
            .forEach((k) => _childrenModels.remove(k)?.dispose());
        _activeKeys = null;
      });
    }
  }
}

Widget wrapWithModel<T extends CustomModel>({
  required T model,
  required Widget child,
  required VoidCallback updateCallback,
  bool updateOnChange = false,
}) {
  // 컴포넌트가 업데이트 시 페이지를 선택적으로 업데이트하도록 설정합니다.
  model.setOnUpdate(
    onUpdate: updateCallback,
    updateOnChange: updateOnChange,
  );
  // 페이지 내 컴포넌트의 모델은 페이지의 모델에 의해 폐기되므로 페이지 자체가 폐기될 때까지 컴포넌트 위젯이 폐기하지 않기를 원합니다.
  model.disposeOnWidgetDisposal = false;
  // 컴포넌트에서 모델에 액세스할 수 있도록 프로바이더로 감싸주세요.
  return Provider<T>.value(
    value: model,
    child: child,
  );
}

T createModel<T extends CustomModel>(
  BuildContext context,
  T Function() defaultBuilder,
) {
  final model = context.read<T?>() ?? defaultBuilder();
  model._init(context);
  return model;
}

T? _getDefaultValue<T>() {
  switch (T) {
    case int:
      return 0 as T;
    case double:
      return 0.0 as T;
    case String:
      return '' as T;
    case bool:
      return false as T;
    default:
      return null as T;
  }
}

extension TextValidationExtensions on String? Function(BuildContext, String?)? {
  String? Function(String?)? asValidator(BuildContext context) =>
      this != null ? (val) => this!(context, val) : null;
}
