---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/awesome_select
author:
---

# awesome_select | Flutter Package

![Pub Version](https://img.shields.io/pub/v/awesome_select)
![GitHub](https://img.shields.io/github/license/akbarpulatov/flutter_smart_select)

스마트 셀렉트를 사용하면 라디오, 체크박스, 스위치, 칩 또는 사용자 지정 입력과 같은 다양한 선택 항목 입력을 통해 일반적인 양식 선택 또는 드롭다운을 동적 페이지, 팝업 대화상자 또는 슬라이딩 하단 시트로 쉽게 변환할 수 있습니다. 단수 및 다중 선택 지원. [프레임워크7](https://framework7.io/)의 스마트 셀렉트 컴포넌트에서 영감을 얻었습니다.

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

전체 사용법은 [예제](https://pub.dev/packages/smart_select#-example-tab-)를 참조하세요.

`smart_select`에서 사용하는 클래스 및 기타 참조에 대한 자세한 내용은 [API 레퍼런스](https://pub.dev/documentation/smart_select/latest/)를 참조하세요.

```dart
// 단일 선택에 사용 가능한 구성
SmartSelect<T>.single({

  // 위젯의 기본 콘텐츠입니다.
  // 트리거 위젯 및 헤더 옵션에 사용됩니다.
  String title,

  // 값이 null일 때 표시되는 텍스트
  String placeholder = 'Select one',

  // 단일 선택 위젯의 현재 값입니다.
  required T value,

  // 단일 선택 항목 값이 변경될 때 호출됩니다.
  required ValueChanged<S2SingleState<T>> onChange,

  // 선택 항목 목록
  List<S2Choice<T>> choiceItems,

  // 기타 사용 가능한 구성
  // 아래 설명
  ...,
  ...,

})
```

```dart
// 간단한 사용법

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
// 객관식에 사용 가능한 구성
SmartSelect<T>.multiple({

  // 위젯의 기본 콘텐츠입니다.
  // 트리거 위젯 및 헤더 옵션에 사용됩니다.
  String title,

  // 값이 null일 때 표시되는 텍스트
  String placeholder = 'Select one',

  // 객관식 위젯의 현재 값입니다.
  required List<T> value,

  // 단일 선택 값이 변경될 때 호출됩니다.
  required ValueChanged<S2MultiState<T>> onChange,

  // 선택 항목 목록
  List<S2Choice<T>> choiceItems,

  // 기타 사용 가능한 구성은
  // 아래 설명을 참조하세요.
  ...,
  ...,

})
```

```dart
// 간단한 사용법

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
// 구성
SmartSelect<T>.[single|multiple]({

  // 기타 구성
  ...,
  ...,

  // 선택 항목 목록
  List<S2Choice<T>> choiceItems,

  // 기타 구성
  ...,
  ...,

});
```

`선택항목`은 아래 예시와 같이 직접 입력할 수 있으며, `S2Choice`에 대한 자세한 내용은 [API Reference](https://pub.dev/documentation/smart_select/latest/smart_select/S2Choice-class.html)에서 확인할 수 있습니다.

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

`선택 항목`은 아래 예제와 같이 이 패키지에서 제공하는 도우미를 사용하여 모든 목록에서 생성할 수도 있습니다.

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

다음 [예제](https://github.com/davigmacode/flutter_smart_select/blob/main/example/lib/features_option/option_async.dart)를 따르세요.

S2ModalConfig`에 대한 자세한 내용은 [API Reference](https://pub.dev/documentation/smart_select/latest/smart_select/S2ModalConfig-class.html)에서 확인할 수 있습니다.

```dart
// 사용 가능한 구성
SmartSelect<T>.[single|multiple]({

  // 기타 구성
  ...,
  ...,

  // 단일 선택 위젯의 모달 유효성 검사
  ValidationCallback<T> modalValidation,

  // 모달 구성
  S2ModalConfig modalConfig,

  // 모달 스타일 구성
  // [modalConfig.style] 단축어
  S2ModalStyle modalStyle,

  // 모달 헤더 스타일 구성
  // 모달 헤더 스타일 구성 [modalConfig.headerStyle] 단축어
  S2ModalHeaderStyle modalHeaderStyle,

  // 선택 항목을 표시할 모달 유형
  // [modalConfig.type] 단축어
  S2ModalType modalType,

  // 트리거 위젯 제목에 다른 제목 사용
  // [modalConfig.title] 단축어
  String modalTitle,

  // 옵션 목록에서 변경된 값을 반환하기 위해
  // 변경된 값을 반환하기 위해
  // [modalConfig.useConfirm] 단축어
  bool modalConfirm,

  // 옵션 목록 모달 사용 헤더를 사용할지 여부
  // [modalConfig.useHeader] 단축어
  bool modalHeader,

  // 옵션 목록의 필터링 가능 여부
  // [modalConfig.useFilter] 단축어
  bool modalFilter,

  // 필터의 자동 완성 여부 또는 확인 필요 여부
  // [modalConfig.filterAuto] 단축어
  bool modalFilterAuto,

  // 사용자 지정 검색창 힌트
  // [modalConfig.filterHint]에 대한 단축어
  String modalFilterHint,

  // 기타 구성
  ...,
  ...,

});
```

기본적으로 SmartSelect는 전체 페이지에서 선택 모달을 엽니다. 이 값으로 변경하여 변경할 수 있습니다:

```dart
// 사용 가능한 옵션
enum S2ModalType {

  // 전체 페이지에서 열기
  fullPage,

  // 팝업 대화 상자에서 열기
  popupDialog,

  // 슬라이딩 하단 시트에서 열기
  bottomSheet,

}
```

```dart
// 모달 스타일 구성에 사용 가능한 옵션
S2ModalStyle({

  // 모달 테두리 모양
  // 팝업 대화 상자 및 하단 시트에서 사용
  ShapeBorder shape,

  // 모달 높이
  // 팝업 대화 상자 및 하단 시트에 사용
  double elevation,

  // 모달 배경색
  Color backgroundColor,

  // 모달 클립 동작
  Clip clipBehavior,

})
```

```dart
// 모달 헤더 스타일을 구성하는 데 사용할 수 있는 옵션
S2ModalHeaderStyle({

  // 헤더 테두리 모양
  ShapeBorder shape,

  // 헤더 높이
  double elevation,

  // 헤더 배경색
  Color backgroundColor,

  // 헤더 밝기
  Brightness brightness,

  // 헤더 제목이 중앙에 있는지 여부
  bool centerTitle,

  // 헤더에 자동 임플리딩 사용 여부
  bool useLeading,

  // 헤더 텍스트 스타일
  // 제목 및 검색 필드에 사용되는 스타일
  TextStyle textStyle,

  // 헤더 아이콘 테마
  IconThemeData iconTheme,

  // 헤더 작업 아이콘 테마
  IconThemeData actionsIconTheme,

})
```

`S2ChoiceConfig`에 대한 자세한 내용은 [API 레퍼런스](https://pub.dev/documentation/smart_select/latest/smart_select/S2ChoiceConfig-class.html)에서 확인할 수 있습니다.

```dart
// 선택 사항을 구성하는 데 사용할 수 있는 옵션
SmartSelect<T>.[single|multiple]({

  // 기타 구성
  ...,
  ...,

  // 선택 항목 구성
  S2ChoiceConfig choiceConfig,

  // 선택 스타일 구성
  // [choiceConfig.style] 단축어
  S2ChoiceStyle choiceStyle,

  // 선택 항목 그룹 헤더 스타일 구성
  // [choiceConfig.headerStyle] 단축어
  S2ChoiceHeaderStyle choiceHeaderStyle,

  // 선택 위젯 유형
  // 선택 위젯 유형 [choiceConfig.type]에 대한 단축어
  S2ChoiceType choiceType,

  // 항목을 표시할 선택 레이아웃
  // [choiceConfig.layout] 단축어
  S2ChoiceLayout choiceLayout,

  // 선택 목록 스크롤 방향
  // 현재 다음과 같은 경우에만 지원
  // [레이아웃]이 [S2ChoiceLayout.wrap]인 경우
  // [choiceConfig.direction]에 대한 단축어
  Axis choiceDirection,

  // 선택 목록의 그룹화 여부
  // 선택 목록이 그룹화되어 있는지 여부 [choiceConfig.isGrouped] 단축어
  bool choiceGrouped,

  // 선택 항목에 디바이더 사용 여부
  // 선택 항목의 디바이더 사용 여부 [choiceConfig.useDivider] 단축어
  bool choiceDivider,

  // 그리드 선택 레이아웃의 경우
  // 선택 항목 레이아웃의 경우 [choiceConfig.gridDelegate] 단축어
  SliverGridDelegate choiceGrid,

  // 기타 구성
  ...,
  ...,

});
```

기본적으로 SmartSelect는 단답형에는 `라디오`를, 객관식에는 `체크박스`를 사용하지만 다음 enum 값으로 변경하여 변경할 수 있습니다:

```dart
// 선택 항목 입력 유형
enum S2ChoiceType {

  // 라디오 위젯 사용
  // 단일 선택의 경우
  radios,

  // 체크박스 위젯 사용
  // 다중 선택의 경우
  checkboxes,

  // 스위치 위젯 사용
  // 객관식용
  switches,

  // 칩 위젯 사용
  // 단답형 및 객관식용
  chips,

}
```

기본적으로 SmartSelect는 `list`를 사용하지만 이 값으로 변경하여 변경할 수 있습니다:

```dart
// 선택 항목의 레이아웃
enum S2ChoiceLayout {

  // 목록 보기 위젯 사용
  list,

  // 줄 바꿈 보기 위젯 사용
  wrap,

  // 그리드 보기 위젯 사용
  grid,

}
```

```dart
// 선택 스타일 구성에 사용할 수 있는 옵션
S2ChoiceStyle({

  // 주축의 실행에서 자식 사이에 배치할 간격입니다.
  // [SmartSelectChoiceType.chips] 또는 [useWrap]을 [true]로 사용하는 경우
  double spacing,

  // 십자 축에서 실행 자체 사이에 배치할 간격입니다.
  // [SmartSelectChoiceType.chips] 또는 [useWrap]이 [true]인 경우
  double runSpacing,

  // 선택 항목 래퍼 패딩
  EdgeInsetsGeometry wrapperPadding,

  // 선택 항목 패딩
  EdgeInsetsGeometry padding,

  // 선택 항목 제목 스타일
  TextStyle titleStyle,

  // 선택 항목 자막 스타일
  TextStyle subtitleStyle,

  // 칩이 체크 표시를 사용할지 여부
  bool showCheckmark,

  // 목록 타일을 사용하는 위젯에서 컨트롤을 배치할 위치
  // [ListTile]을 사용하여 레이블 옆에 컨트롤을 배치합니다.
  S2ChoiceControl control,

  // 강조 색상
  Color highlightColor,

  // 선택된 선택 항목의 기본 색상
  Color activeColor,

  // 선택되지 않은 선택 항목의 기본 색상
  Color color,

  // 선택된 선택 항목의 보조 색상
  Color activeAccentColor,

  // 선택되지 않은 선택 항목의 보조 색상
  Color accentColor,

  // 선택한 칩의 밝기
  Brightness activeBrightness,

  // 선택되지 않은 칩의 밝기
  Brightness brightness,

  // 선택한 칩 테두리의 불투명도, 다음과 같은 경우에만 효과
  // [activeBrightness]가 [Brightness.light]인 경우에만 적용됩니다.
  double activeBorderOpacity,

  // 선택되지 않은 칩 테두리의 불투명도, 다음과 같은 경우에만 적용됩니다.
  // [Brightness]가 [Brightness.light]인 경우에만 효과 있음
  double borderOpacity,

  // 모양 클립 동작
  Clip clipBehavior,

})
```

```dart
// 선택 그룹 헤더 위젯 스타일을 구성하는 데 사용할 수 있는 옵션
S2ChoiceHeaderStyle({

  // 그룹 헤더 배경색
  Color backgroundColor,

  // 하이라이트 색상
  Color highlightColor,

  // 그룹 헤더 텍스트 스타일
  TextStyle textStyle,

  // 그룹 헤더 패딩
  EdgeInsetsGeometry padding,

  // 그룹 헤더 높이
  double height,

})
```

```dart
// 사용 가능한 빌더 구성
// 단일 선택
SmartSelect<T>.single({

  // 기타 구성
  ...,
  ...,

  // 단일 선택 위젯의 빌더 컬렉션
  S2SingleBuilder<T> builder,

  // 사용자 지정 타일 위젯용 빌더
  // [builder.tile] 단축어
  S2WidgetBuilder<S2SingleState<T>> tileBuilder,

  // 사용자 정의 모달 위젯용 빌더
  // [builder.modal] 단축어
  S2WidgetBuilder<S2SingleState<T>> modalBuilder,

  // 사용자 정의 모달 헤더 위젯용 빌더
  // [builder.modalHeader] 단축어
  S2WidgetBuilder<S2SingleState<T>> modalHeaderBuilder,

  // 사용자 지정 모달 작업 위젯용 빌더
  // [builder.modalActions] 단축어
  S2ListWidgetBuilder<S2SingleState<T>> modalActionsBuilder,

  // 사용자 지정 모달 확인 작업 위젯용 빌더
  // [builder.modalConfirm] 단축어
  S2WidgetBuilder<S2SingleState<T>> modalConfirmBuilder,

  // 머리글, 본문, 바닥글 모달 사이의 디바이더 위젯용 빌더
  // [builder.modalDivider] 단축어
  S2WidgetBuilder<S2SingleState<T>> modalDividerBuilder,

  // 사용자 정의 푸터 위젯용 빌더
  // [builder.modalFooter] 단축어
  S2WidgetBuilder<S2SingleState<T>> modalFooterBuilder,

  // 기타 구성
  ...,
  ...,

});
```

```dart
// 사용 가능한 빌더 구성
// 객관식
SmartSelect<T>.multiple({

  // 기타 구성
  ...,
  ...,

  // 단일 선택 위젯의 빌더 모음
  S2MultiBuilder<T> builder,

  // 사용자 지정 타일 위젯용 빌더
  // [builder.tile] 단축어
  S2WidgetBuilder<S2MultiState<T>> tileBuilder,

  // 사용자 지정 모달 위젯용 빌더
  // [builder.modal] 단축어
  S2WidgetBuilder<S2MultiState<T>> modalBuilder,

  // 사용자 정의 모달 헤더 위젯용 빌더
  // [builder.modalHeader] 단축어
  S2WidgetBuilder<S2MultiState<T>> modalHeaderBuilder,

  // 사용자 지정 모달 작업 위젯용 빌더
  // [builder.modalActions] 단축어
  S2ListWidgetBuilder<S2MultiState<T>> modalActionsBuilder,

  // 사용자 지정 모달 확인 작업 위젯용 빌더
  // [builder.modalConfirm] 단축어
  S2WidgetBuilder<S2MultiState<T>> modalConfirmBuilder,

  // 머리글, 본문, 바닥글 모달 사이의 디바이더 위젯용 빌더
  // [builder.modalDivider] 단축어
  S2WidgetBuilder<S2MultiState<T>> modalDividerBuilder,

  // 사용자 정의 푸터 위젯용 빌더
  // [builder.modalFooter] 단축어
  S2WidgetBuilder<S2MultiState<T>> modalFooterBuilder,

  // 기타 구성
  ...,
  ...,

});
```

```dart
// 다른 빌더 구성
SmartSelect<T>.[single|multiple]({

  // 기타 구성
  ...,
  ...,

  // 모달 필터 위젯용 빌더
  // [builder.modalFilter] 단축어
  S2WidgetBuilder<S2Filter> modalFilterBuilder,

  // 모달 필터 토글 위젯용 빌더
  // [builder.modalFilterToggle] 단축어
  S2WidgetBuilder<S2Filter> modalFilterToggleBuilder,

  // 각 사용자 지정 선택 항목 위젯용 빌더
  // [builder.choice] 단축어
  S2ChoiceBuilder<T> choiceBuilder,

  // 각 사용자 지정 선택 항목 제목 위젯의 빌더
  // [builder.choiceTitle] 단축어
  S2ChoiceBuilder<T> choiceTitleBuilder,

  // 각 사용자 지정 선택 항목 자막 위젯용 빌더
  // [builder.choiceSubtitle] 단축어
  S2ChoiceBuilder<T> choiceSubtitleBuilder,

  // 각 사용자 지정 선택 항목의 빌더 보조 위젯
  // [builder.choiceSecondary] 단축어
  S2ChoiceBuilder<T> choiceSecondaryBuilder,

  /// 선택 항목 사이의 사용자 지정 구분선 위젯 빌더
  // [builder.choiceDivider] 단축어
  IndexedWidgetBuilder choiceDividerBuilder,

  // 사용자 지정 빈 디스플레이용 빌더
  // [builder.choiceEmpty] 단축어
  S2WidgetBuilder<String> choiceEmptyBuilder,

  // 사용자 지정 선택 그룹용 위젯 빌더
  // [builder.choiceGroup]에 대한 단축어
  S2ChoiceGroupBuilder choiceGroupBuilder,

  // 사용자 정의 헤더 선택 그룹용 위젯 빌더
  // [builder.choiceHeader]에 대한 단축어
  S2ChoiceHeaderBuilder choiceHeaderBuilder,

  // 기타 구성
  ...,
  ...,

});
```

```dart
// 기본 타일/트리거 위젯
S2Tile<T>({

  // 선택한 옵션의 값입니다.
  String value,

  // 목록 타일의 기본 콘텐츠입니다.
  Widget title,

  // 제목 앞에 표시할 위젯입니다.
  // 일반적으로 [아이콘] 또는 [원형 아바타] 위젯입니다.
  Widget leading,

  // 제목 뒤에 표시할 위젯입니다.
  // 일반적으로 [아이콘] 위젯입니다.
  Widget trailing,

  // 이 목록 타일에 로딩 통계를 표시할지 여부입니다.
  bool isLoading,

  // 로딩 텍스트로 사용되는 문자열 텍스트
  String loadingText,

  // 이 목록 타일에 두 줄의 텍스트를 표시할지 여부입니다.
  bool isTwoLine,

  // 이 목록 타일이 대화형인지 여부입니다.
  bool enabled,

  // 이 타일도 [활성화됨]인 경우 아이콘과 텍스트가 동일한 색상으로 렌더링됩니다.
  bool selected,

  // 이 목록 타일이 세로로 밀집된 목록의 일부인지 여부입니다.
  bool dense,

  // [값]이 표시되는지 여부
  bool hideValue,

  // 타일의 내부 패딩.
  EdgeInsetsGeometry padding,

  // 사용자가 이 목록 타일을 탭할 때 호출됩니다.
  GestureTapCallback onTap,

  // 타일 아래에 표시할 위젯
  // 일반적으로 S2TileChips로 칩을 표시하는 데 사용됩니다.
  Widget body,

})
```

```dart
// 사용 예시
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

// 상태에서의 사용 예
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
// 칩 타일/트리거 위젯
S2TileChips({

  // 선택한 선택 항목의 값 목록입니다.
  int chipLength,

  // 칩 라벨 항목용 위젯 빌더
  IndexedWidgetBuilder chipLabelBuilder,

  // 칩 아바타 항목용 위젯 빌더
  IndexedWidgetBuilder chipAvatarBuilder,

  // 칩 항목용 위젯 빌더
  IndexedWidgetBuilder chipBuilder,

  // 사용자가 칩 항목을 삭제할 때 호출됩니다.
  ValueChanged<int> chipOnDelete,

  // 칩 색상
  Color chipColor,

  // 칩 테두리 불투명도
  double chipBorderOpacity,

  // 칩 밝기
  Brightness chipBrightness,

  // 칩 삭제 버튼 색상
  Color chipDeleteColor,

  // 칩 삭제 버튼 아이콘
  Icon chipDeleteIcon,

  // 칩 간격
  double chipSpacing,

  // 칩 실행 간격
  double chipRunSpacing,

  // 칩 모양 테두리
  ShapeBorder chipShape,

  // [값]이 null일 때 표시되는 [위젯]
  Widget placeholder,

  // 칩 목록의 스크롤 가능 여부
  bool scrollable,

  // 칩 목록 패딩
  EdgeInsetsGeometry padding,

})
```

```dart
/// 사용 예
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

```plaintext
Copyright (c) 2021 Akbar Pulatov

이에 따라 본 소프트웨어의 사본을 취득하는 모든 사람에게 본 소프트웨어의 사본을
이 소프트웨어 및 관련 문서 파일 ("소프트웨어")의 사본을 얻는 사람에게 무료로 부여됩니다.
제한 없이 소프트웨어를 사용할 수 있는 권한을 포함하되 이에 국한되지 않습니다.
사용, 복사, 수정, 병합, 게시, 배포, 재라이선스 및/또는 판매할 수 있는 권리
소프트웨어의 사본 및 소프트웨어가 제공된 사람에게 허용하는 것
다음 조건에 따라 그렇게 할 수 있도록 허용합니다:

위의 저작권 고지 및 본 허가 고지는 모든 사본 또는 상당 부분에 포함되어야 합니다.
소프트웨어의 사본 또는 상당 부분.

소프트웨어는 명시적이든 묵시적이든 어떠한 종류의 보증도 없이 "있는 그대로" 제공됩니다.
상품성에 대한 보증을 포함하되 이에 국한되지 않는 묵시적 보증,
특정 목적에의 적합성 및 비침해.
어떠한 경우에도 저자 또는 저작권 소유자는 어떠한 청구, 손해 또는 기타에 대해서도 책임을 지지 않습니다.
계약, 불법 행위 또는 기타 소송에서 발생하는 책임, 소프트웨어 또는 소프트웨어의 사용 또는 기타 거래로 인해 또는 이와 관련하여 발생하는 청구, 손해, 기타 책임은 전적으로 사용자에게 있습니다.
```

[awesome_select | Flutter Package](https://pub.dev/packages/awesome_select)
