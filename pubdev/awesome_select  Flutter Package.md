---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/awesome_select
author:
---

# awesome_select | Flutter Package

![Pub Version](https://img.shields.io/pub/v/awesome_select)
![GitHub](https://img.shields.io/github/license/akbarpulatov/flutter_smart_select)

SmartSelect allows you to easily convert your usual form select or dropdown into dynamic page, popup dialog, or sliding bottom sheet with various choices input such as radio, checkbox, switch, chips, or even custom input. Supports single and multiple choice. Inspired by Smart Select component from [Framework7](https://framework7.io/).

- 스타일 구성 또는 위젯 빌더를 사용하여 모달 위젯의 모든 부분(헤더, 바닥글, 검색창, 확인 버튼, 검색창 토글)을 사용자 지정할 수 있습니다.
- 확인 전 유효성 검사
- 유형에 따른 자동 검색
- 검색 시 악센트 마크 핸들러
- 검색 결과 하이라이트
- 칩 타일 위젯
- 그리드 선택 레이아웃
- 가로 또는 세로 선택 목록 스크롤 방향
- 클래스 이름 및 열거형 단순화
- 구성에서 `copyWith` 및 `merge` 지원
- 상태 관리로 `StatefulWidget` 사용
- 구성을 정의하는 쉬운 단축키
- 다른 패키지에 대한 소프트 종속성

- 오른쪽에서 왼쪽으로 파라미터 지원, 현재 위젯 빌더를 사용하여 달성할 수 있습니다.
- 내부적으로 비동기 선택 항목 로더 처리
- 사용자 정의 검색 핸들러
- 선택 항목 페이지 매김(당기면 새로고침, 당기면 더 로드)
- 테스트 추가
- 이제 `modalValidation` 함수는 변경 값이 유효하지 않음을 나타내는 `String`을 반환하고 `null` 또는 빈 `String`을 반환해야합니다. changes value is valid
- 칩이 있는 타일을 표시하려면 `S2ChipsTile` 대신 파라미터 `S2Tile.body` 및 `S2TileChips`를 사용합니다.
- 파라미터 `options`이 제거되고 대신 `choiceItems`을 사용합니다.
- 클래스 이름 및 열거형 간소화

  - `SmartSelectTile` to `S2Tile`
  - `SmartSelectOption` to `S2Choice`
  - `SmartSelectChoiceConfig` to `S2ChoiceConfig`
  - `SmartSelectChoiceStyle` to `S2ChoiceStyle`
  - `SmartSelectChoiceType` to `S2ChoiceType`
  - `SmartSelectModalConfig` to `S2ModalConfig`
  - `SmartSelectModalStyle` to `S2ModalStyle`
  - `SmartSelectModalHeaderStyle` to `S2ModalHeaderStyle`
  - `SmartSelectModalType` to `S2ModalType`

- 파라미터 `builder`는 이제 빌더(`S2SingleBuilder` 또는 `S2MultiBuilder`)의 컬렉션이며, 대신 `tileBuilder`를 사용하여 트리거 타일을 생성합니다. widget.
- 파라미터 `dense`, `enabled`, `isLoading`, `isTwoLine`, `leading`, `loadingText`, `padding`, `selected`, `trailing`은 다음에서 제거됩니다. `SmartSelect` class, instead use `builder.tile` or `tileBuilder` and return `S2Tile` widget, it's has all these parameters.
- 파라미터 `onChange`는 이제 `T value` 또는 `List<T> value` 대신 `S2SingleState state` 또는 `S2MultiState state`를 반환합니다.
- 파라미터 `choiceConfig.useWrap`이 제거되었으며, 대신 `choiceConfig.layout = S2ChoiceLayout.wrap`을 사용합니다.
- 파라미터 `choiceConfig.builder`가 `builder.choice` 또는 `choiceBuilder`로 이동했습니다.
- 파라미터 `choiceConfig.titleBuilder`가 `builder.choiceTitle` 또는 `choiceTitleBuilder`로 이동했습니다.
- 파라미터 `choiceConfig.subtitleBuilder`가 `builder.choiceSubtitle` 또는 `choiceSubtitleBuilder`로 이동했습니다.
- 파라미터 `choiceConfig.secondaryBuilder`가 `builder.choiceSecondary` 또는 `choiceSecondaryBuilder`로 이동했습니다.
- 파라미터 `choiceConfig.dividerBuilder`가 `builder.choiceDivider` 또는 `choiceDividerBuilder`로 이동했습니다.
- 파라미터 `choiceConfig.emptyBuilder`가 `builder.choiceEmpty` 또는 `choiceEmptybuilder`로 이동했습니다.
- 파라미터 `choiceConfig.glowingOverscrollIndicatorColor`가 제거되었으며, 대신 `choiceConfig.overscrollColor`를 사용합니다.
- 파라미터 `choiceConfig.spacing` 및 `choiceConfig.runSpacing`이 `choiceConfig.style.spacing` 및 `choiceConfig.style.runSpacing`으로 이동했습니다.
- 파라미터 `choiceConfig.useCheckmark`가 `choiceConfig.style.showCheckmark`로 이동했습니다.
- 파라미터 `choiceConfig.padding`이 `choiceConfig.style.wrapperPadding`으로 이동했습니다.
- 그룹화된 선택 항목의 기본값은 이제 스티커 헤더를 사용하지 않고 다음과 같이 `groupBuilder`를 사용합니다:

  ```yaml
  dependencies:
    sticky_headers: "^0.1.8"
  ```

  ```dart
  import 'package:sticky_headers/sticky_headers.dart';

  SmartSelect<T>.single/multiple(
    ...,
    ...,
    choiceGroupBuilder: (context, header, choices) {
      return StickyHeader(
        header: header,
        content: choices,
      );
    },
  );
  ```

|                  | Single Choice                                                                                                                                                                                                        | Multiple Choice                                                                                                                         |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Modal Type       | ![Single Choice Modal](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/single-modal.gif)                                                                                      | ![Multiple Choice Modal](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/multiple-modal.gif)     |
| Chips Widget     | ![Single Choice Chips](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/single-chips.gif)                                                                                      | ![Multiple Choice Chips](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/multiple-chips.gif)     |
| Switch Widget    | None                                                                                                                                                                                                                 | ![Multiple Choice Switch](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/multiple-switches.gif) |
| Custom Tile      | ![Customize Tile](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/custom-tile.gif)                                                                                            |
| Modal Filter     | ![Modal Filter](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/modal-filter.gif)                                                                                             |
| Modal Confirm    | ![Modal Confirm](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/modal-confirm.gif)                                                                                           |
| Modal Validation | ![Modal Validation](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/modal-validation.gif)                                                                                     |
| Modal Selector   | ![Modal Selector](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/modal-selector.gif)                                                                                         |
| Modal Shape      | ![Modal Shape](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/modal-shape.gif)                                                                                               |
| Choice Items     | ![Choice Items](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/choice-item.gif)                                                                                              |
| Choice Grouped   | ![Choice Grouped](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/choice-grouped.gif)                                                                                         |
| Choice Builder   | ![Choice Builder](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/screens/choice-builder.gif)                                                                                         |
| Download APK     | [![Demo App](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/build/qr-apk.png)](https://raw.githubusercontent.com/davigmacode/flutter_smart_select/master/demo/build/SmartSelect.apk) |

- 단일 또는 다중 선택 선택
- 전체 페이지, 하단 시트 또는 팝업 대화 상자에서 선택 모달 열기
- 다양한 선택 항목 입력(라디오, 체크박스, 스위치, 칩 또는 사용자 정의 위젯)
- 다양한 선택지 레이아웃(목록, 줄 바꿈 또는 그리드)
- 스티커 헤더를 쉽게 지원하는 선택 항목 그룹화
- 강조 표시된 결과로 검색 가능한 선택 항목
- 비활성화 또는 숨겨진 선택 항목
- 사용자 정의 가능한 트리거/타일 위젯
- 사용자 정의 가능한 모달 스타일
- 사용자 정의 가능한 모달 헤더 스타일
- 사용자 정의 가능한 모달 바닥글
- 사용자 정의 가능한 선택 스타일
- 모든 `List`에서 선택 항목 빌드
- 쉬운 비동기 선택 항목로드

For a complete usage, please see the [example](https://pub.dev/packages/smart_select#-example-tab-).

To read more about classes and other references used by `smart_select`, see the [API Reference](https://pub.dev/documentation/smart_select/latest/).

```dart
// available configuration for single choice
SmartSelect<T>.single({

  // The primary content of the widget.
  // Used in trigger widget and header option
  String title,

  // The text displayed when the value is null
  String placeholder = 'Select one',

  // The current value of the single choice widget.
  required T value,

  // Called when single choice value changed
  required ValueChanged<S2SingleState<T>> onChange,

  // choice item list
  List<S2Choice<T>> choiceItems,

  // other available configuration
  // explained below
  ...,
  ...,

})
```

```dart
// simple usage

String value = 'flutter';
List<S2Choice<String>> options = [
  S2Choice<String>(value: 'ion', title: 'Ionic'),
  S2Choice<String>(value: 'flu', title: 'Flutter'),
  S2Choice<String>(value: 'rea', title: 'React Native'),
];

@override
Widget build(BuildContext context) {
  return SmartSelect<String>.single(
    title: 'Frameworks',
    value: value,
    choiceItems: options,
    onChange: (state) => setState(() => value = state.value)
  );
}
```

```dart
// available configuration for multiple choice
SmartSelect<T>.multiple({

  // The primary content of the widget.
  // Used in trigger widget and header option
  String title,

  // The text displayed when the value is null
  String placeholder = 'Select one',

  // The current value of the single choice widget.
  required List<T> value,

  // Called when single choice value changed
  required ValueChanged<S2MultiState<T>> onChange,

  // choice item list
  List<S2Choice<T>> choiceItems,

  // other available configuration
  // explained below
  ...,
  ...,

})
```

```dart
// a simple usage

List<int> value = [2];
List<S2Choice<int>> frameworks = [
  S2Choice<int>(value: 1, title: 'Ionic'),
  S2Choice<int>(value: 2, title: 'Flutter'),
  S2Choice<int>(value: 3, title: 'React Native'),
];

@override
Widget build(BuildContext context) {
  return SmartSelect<int>.multiple(
    title: 'Frameworks',
    value: value,
    choiceItems: options,
    onChange: (state) => setState(() => value = state.value),
  );
}
```

```dart
// configuration
SmartSelect<T>.[single|multiple]({

  // other configuration
  ...,
  ...,

  // choice item list
  List<S2Choice<T>> choiceItems,

  // other configuration
  ...,
  ...,

});
```

`choiceItems` can be input directly as in the example below, more info about `S2Choice` can be found on the [API Reference](https://pub.dev/documentation/smart_select/latest/smart_select/S2Choice-class.html)

```dart
SmartSelect<T>.[single|multiple](
  ...,
  ...,
  choiceItems: <S2Choice<T>>[
    S2Choice<T>(value: 1, title: 'Ionic'),
    S2Choice<T>(value: 2, title: 'Flutter'),
    S2Choice<T>(value: 3, title: 'React Native'),
  ],
);
```

`choiceItems` also can be created from any list using helper provided by this package, like the example below

```dart
List<Map<String, String>> days = [
  { 'value': 'mon', 'title': 'Monday' },
  { 'value': 'tue', 'title': 'Tuesday' },
  { 'value': 'wed', 'title': 'Wednesday' },
  { 'value': 'thu', 'title': 'Thursday' },
  { 'value': 'fri', 'title': 'Friday' },
  { 'value': 'sat', 'title': 'Saturday' },
  { 'value': 'sun', 'title': 'Sunday' },
];

SmartSelect<String>.[single|multiple](
  ...,
  ...,
  choiceItems: S2Choice.listFrom<String, Map<String, String>>(
    source: days,
    value: (index, item) => item['value'],
    title: (index, item) => item['title'],
  ),
);
```

Please follow these [example](https://github.com/davigmacode/flutter_smart_select/blob/main/example/lib/features_option/option_async.dart)

More info about `S2ModalConfig` can be found on the [API Reference](https://pub.dev/documentation/smart_select/latest/smart_select/S2ModalConfig-class.html)

```dart
// available configuration
SmartSelect<T>.[single|multiple]({

  // other configuration
  ...,
  ...,

  // Modal validation of single choice widget
  ValidationCallback<T> modalValidation,

  // Modal configuration
  S2ModalConfig modalConfig,

  // Configure modal style
  // shortcut to [modalConfig.style]
  S2ModalStyle modalStyle,

  // Configure modal header style
  // shortcut to [modalConfig.headerStyle]
  S2ModalHeaderStyle modalHeaderStyle,

  // Modal type to display choices
  // shortcut to [modalConfig.type]
  S2ModalType modalType,

  // Use different title with the trigger widget title
  // shortcut to [modalConfig.title]
  String modalTitle,

  // Whether the option list need to confirm
  // to return the changed value
  // shortcut to [modalConfig.useConfirm]
  bool modalConfirm,

  // Whether the options list modal use header or not
  // shortcut to [modalConfig.useHeader]
  bool modalHeader,

  // Whether the option list is filterable or not
  // shortcut to [modalConfig.useFilter]
  bool modalFilter,

  // Whether the filter is autocomplete or need confirmation
  // shortcut to [modalConfig.filterAuto]
  bool modalFilterAuto,

  // Custom searchbar hint
  // shortcut to [modalConfig.filterHint]
  String modalFilterHint,

  // other configuration
  ...,
  ...,

});
```

By default SmartSelect will open choices modal in full page. You can change it by changing with this value:

```dart
// Available option
enum S2ModalType {

  // open in full page
  fullPage,

  // open in popup dialog
  popupDialog,

  // open in sliding bottom sheet
  bottomSheet,

}
```

```dart
// Available option to configure modal style
S2ModalStyle({

  // Modal border shape
  // used in popup dialog and bottom sheet
  ShapeBorder shape,

  // Modal elevation
  // used in popup dialog and bottom sheet
  double elevation,

  // Modal background color
  Color backgroundColor,

  // Modal clip behavior
  Clip clipBehavior,

})
```

```dart
// Available option to configure modal header style
S2ModalHeaderStyle({

  // Header border shape
  ShapeBorder shape,

  // Header elevation
  double elevation,

  // Header background color
  Color backgroundColor,

  // Header brightness
  Brightness brightness,

  // Whether the header title is centered
  bool centerTitle,

  // Whether the header use automaticallyImplyLeading or not
  bool useLeading,

  // Header text style
  // used by title and search field
  TextStyle textStyle,

  // Header icon theme
  IconThemeData iconTheme,

  // Header actions icon theme
  IconThemeData actionsIconTheme,

})
```

More info about `S2ChoiceConfig` can be found on the [API Reference](https://pub.dev/documentation/smart_select/latest/smart_select/S2ChoiceConfig-class.html)

```dart
// Available option to configure choices
SmartSelect<T>.[single|multiple]({

  // other configuration
  ...,
  ...,

  // choice configuration
  S2ChoiceConfig choiceConfig,

  // configure choice style
  // shortcut to [choiceConfig.style]
  S2ChoiceStyle choiceStyle,

  // configure choices group header style
  // shortcut to [choiceConfig.headerStyle]
  S2ChoiceHeaderStyle choiceHeaderStyle,

  // choice widget type
  // shortcut to [choiceConfig.type]
  S2ChoiceType choiceType,

  // choice layout to display items
  // shortcut to [choiceConfig.layout]
  S2ChoiceLayout choiceLayout,

  // choice list scroll direction
  // currently only support when
  // [layout] is [S2ChoiceLayout.wrap]
  // shortcut to [choiceConfig.direction]
  Axis choiceDirection,

  // Whether the choices list is grouped
  // shortcut to [choiceConfig.isGrouped]
  bool choiceGrouped,

  // Whether the choices item use divider or not
  // shortcut to [choiceConfig.useDivider]
  bool choiceDivider,

  // For grid choice layout
  // shortcut to [choiceConfig.gridDelegate]
  SliverGridDelegate choiceGrid,

  // other configuration
  ...,
  ...,

});
```

By default SmartSelect will use `radios` for single choice and `checkboxes` for multiple choice, but it can change by changing with this value:

```dart
// Type of choice input
enum S2ChoiceType {

  // use radio widget
  // for single choice
  radios,

  // use checkbox widget
  // for multiple choice
  checkboxes,

  // use switch widget
  // for multiple choice
  switches,

  // use chip widget
  // for single and multiple choice
  chips,

}
```

By default SmartSelect will use `list`, but it can change by changing with this value:

```dart
// Layout of choice item
enum S2ChoiceLayout {

  // use list view widget
  list,

  // use wrap view widget
  wrap,

  // use grid view widget
  grid,

}
```

```dart
// Available option to configure choice style
S2ChoiceStyle({

  // How much space to place between children in a run in the main axis.
  // When use [SmartSelectChoiceType.chips] or [useWrap] is [true]
  double spacing,

  // How much space to place between the runs themselves in the cross axis.
  // When use [SmartSelectChoiceType.chips] or [useWrap] is [true]
  double runSpacing,

  // choices wrapper padding
  EdgeInsetsGeometry wrapperPadding,

  // Choices item padding
  EdgeInsetsGeometry padding,

  // choices item title style
  TextStyle titleStyle,

  // choices item subtitle style
  TextStyle subtitleStyle,

  // whether the chips use checkmark or not
  bool showCheckmark,

  // Where to place the control in widgets that use
  // [ListTile] to position a control next to a label.
  S2ChoiceControl control,

  // Highlight color
  Color highlightColor,

  // Primary color of selected choice item
  Color activeColor,

  // Primary color of unselected choice item
  Color color,

  // Secondary color of selected choice item
  Color activeAccentColor,

  // Secondary color of unselected choice item
  Color accentColor,

  // Brightness for selected Chip
  Brightness activeBrightness,

  // Brightness for unselected Chip
  Brightness brightness,

  // Opacity for selected Chip border, only effect when
  // [activeBrightness] is [Brightness.light]
  double activeBorderOpacity,

  // Opacity for unselected chip border, only effect when
  // [brightness] is [Brightness.light]
  double borderOpacity,

  // Shape clip behavior
  Clip clipBehavior,

})
```

```dart
// Available option to configure choices group header widget style
S2ChoiceHeaderStyle({

  // Group header background color
  Color backgroundColor,

  // Highlight color
  Color highlightColor,

  // Group header text style
  TextStyle textStyle,

  // Group header padding
  EdgeInsetsGeometry padding,

  // Group header height
  double height,

})
```

```dart
// available builder configuration
// for single choice
SmartSelect<T>.single({

  // other configuration
  ...,
  ...,

  // Builder collection of single choice widget
  S2SingleBuilder<T> builder,

  // Builder for custom tile widget
  // shortcut to [builder.tile]
  S2WidgetBuilder<S2SingleState<T>> tileBuilder,

  // Builder for custom modal widget
  // shortcut to [builder.modal]
  S2WidgetBuilder<S2SingleState<T>> modalBuilder,

  // Builder for custom modal header widget
  // shortcut to [builder.modalHeader]
  S2WidgetBuilder<S2SingleState<T>> modalHeaderBuilder,

  // Builder for custom modal actions widget
  // shortcut to [builder.modalActions]
  S2ListWidgetBuilder<S2SingleState<T>> modalActionsBuilder,

  // Builder for custom modal confirm action widget
  // shortcut to [builder.modalConfirm]
  S2WidgetBuilder<S2SingleState<T>> modalConfirmBuilder,

  // Builder for divider widget between header, body, and footer modal
  // shortcut to [builder.modalDivider]
  S2WidgetBuilder<S2SingleState<T>> modalDividerBuilder,

  // Builder for custom footer widget
  // shortcut to [builder.modalFooter]
  S2WidgetBuilder<S2SingleState<T>> modalFooterBuilder,

  // other configuration
  ...,
  ...,

});
```

```dart
// available builder configuration
// for multiple choice
SmartSelect<T>.multiple({

  // other configuration
  ...,
  ...,

  // Builder collection of single choice widget
  S2MultiBuilder<T> builder,

  // Builder for custom tile widget
  // shortcut to [builder.tile]
  S2WidgetBuilder<S2MultiState<T>> tileBuilder,

  // Builder for custom modal widget
  // shortcut to [builder.modal]
  S2WidgetBuilder<S2MultiState<T>> modalBuilder,

  // Builder for custom modal header widget
  // shortcut to [builder.modalHeader]
  S2WidgetBuilder<S2MultiState<T>> modalHeaderBuilder,

  // Builder for custom modal actions widget
  // shortcut to [builder.modalActions]
  S2ListWidgetBuilder<S2MultiState<T>> modalActionsBuilder,

  // Builder for custom modal confirm action widget
  // shortcut to [builder.modalConfirm]
  S2WidgetBuilder<S2MultiState<T>> modalConfirmBuilder,

  // Builder for divider widget between header, body, and footer modal
  // shortcut to [builder.modalDivider]
  S2WidgetBuilder<S2MultiState<T>> modalDividerBuilder,

  // Builder for custom footer widget
  // shortcut to [builder.modalFooter]
  S2WidgetBuilder<S2MultiState<T>> modalFooterBuilder,

  // other configuration
  ...,
  ...,

});
```

```dart
// another builder configuration
SmartSelect<T>.[single|multiple]({

  // other configuration
  ...,
  ...,

  // Builder for modal filter widget
  // shortcut to [builder.modalFilter]
  S2WidgetBuilder<S2Filter> modalFilterBuilder,

  // Builder for modal filter toggle widget
  // shortcut to [builder.modalFilterToggle]
  S2WidgetBuilder<S2Filter> modalFilterToggleBuilder,

  // Builder for each custom choices item widget
  // shortcut to [builder.choice]
  S2ChoiceBuilder<T> choiceBuilder,

  // Builder for each custom choices item title widget
  // shortcut to [builder.choiceTitle]
  S2ChoiceBuilder<T> choiceTitleBuilder,

  // Builder for each custom choices item subtitle widget
  // shortcut to [builder.choiceSubtitle]
  S2ChoiceBuilder<T> choiceSubtitleBuilder,

  // Builder for each custom choices item secondary widget
  // shortcut to [builder.choiceSecondary]
  S2ChoiceBuilder<T> choiceSecondaryBuilder,

  /// Builder for custom divider widget between choices item
  // shortcut to [builder.choiceDivider]
  IndexedWidgetBuilder choiceDividerBuilder,

  // Builder for custom empty display
  // shortcut to [builder.choiceEmpty]
  S2WidgetBuilder<String> choiceEmptyBuilder,

  // A widget builder for custom choices group
  // shortcut to [builder.choiceGroup]
  S2ChoiceGroupBuilder choiceGroupBuilder,

  // A widget builder for custom header choices group
  // shortcut to [builder.choiceHeader]
  S2ChoiceHeaderBuilder choiceHeaderBuilder,

  // other configuration
  ...,
  ...,

});
```

```dart
// Default tile/trigger widget
S2Tile<T>({

  // The value of the selected option.
  String value,

  // The primary content of the list tile.
  Widget title,

  // A widget to display before the title.
  // Typically an [Icon] or a [CircleAvatar] widget.
  Widget leading,

  // A widget to display after the title.
  // Typically an [Icon] widget.
  Widget trailing,

  // Whether this list tile is intended to display loading stats.
  bool isLoading,

  // String text used as loading text
  String loadingText,

  // Whether this list tile is intended to display two lines of text.
  bool isTwoLine,

  // Whether this list tile is interactive.
  bool enabled,

  // If this tile is also [enabled] then icons and text are rendered with the same color.
  bool selected,

  // Whether this list tile is part of a vertically dense list.
  bool dense,

  // Whether the [value] is displayed or not
  bool hideValue,

  // The tile's internal padding.
  EdgeInsetsGeometry padding,

  // Called when the user taps this list tile.
  GestureTapCallback onTap,

  // widget to display below the tile
  // usually used to display chips with S2TileChips
  Widget body,

})
```

```dart
// usage example
SmartSelect<T>.single(
  ...,
  ...,
  tileBuilder: (context, state) {
    return S2Tile<dynamic>(
      title: state.titleWidget,
      value: state.valueDisplay,
      onTap: state.showModal,
      isLoading: true,
    );
  },
);

// usage example from state
SmartSelect<T>.multiple(
  ...,
  ...,
  tileBuilder: (context, state) {
    return S2Tile.fromState(
      state,
      isLoading: true,
    );
  },
);
```

```dart
// Chips tile/trigger widget
S2TileChips({

  // List of value of the selected choices.
  int chipLength,

  // Widget builder for chip label item
  IndexedWidgetBuilder chipLabelBuilder,

  // Widget builder for chip avatar item
  IndexedWidgetBuilder chipAvatarBuilder,

  // Widget builder for chip item
  IndexedWidgetBuilder chipBuilder,

  // Called when the user delete the chip item.
  ValueChanged<int> chipOnDelete,

  // Chip color
  Color chipColor,

  // Chip border opacity
  double chipBorderOpacity,

  // Chip brightness
  Brightness chipBrightness,

  // Chip delete button color
  Color chipDeleteColor,

  // Chip delete button icon
  Icon chipDeleteIcon,

  // Chip spacing
  double chipSpacing,

  // Chip run spacing
  double chipRunSpacing,

  // Chip shape border
  ShapeBorder chipShape,

  // The [Widget] displayed when the [values] is null
  Widget placeholder,

  // Whether the chip list is scrollable or not
  bool scrollable,

  // Chip list padding
  EdgeInsetsGeometry padding,

})
```

```dart
/// usage example
SmartSelect<String>.multiple(
  ...,
  ...,
  value: users,
  tileBuilder: (context, state) {
    return S2Tile.fromState(
      state,
      hideValue: true,
      body: S2TileChips(
        chipLength: state.valueObject.length,
        chipLabelBuilder: (context, i) {
          return Text(state.valueObject[i].title);
        },
        chipAvatarBuilder: (context, i) {
          return CircleAvatar(
            backgroundImage: NetworkImage(state.valueObject[i].meta['picture']['thumbnail'])
          );
        },
        chipOnDelete: (i) {
          setState(() => users.remove(state.valueObject[i].value));
        },
        chipColor: Colors.blue,
        chipBrightness: Brightness.dark,
        chipBorderOpacity: .5,
      ),
    );
  },
);
```

```dart
Copyright (c) 2021 Akbar Pulatov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

[awesome_select | Flutter Package](https://pub.dev/packages/awesome_select)
