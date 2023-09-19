// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/lib.dart';

/// 다른 빌더보다 우선순위가 있는 일 셀에 대한 사용자 지정 빌더입니다.
Widget? prioritizedBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 현재 날짜와 일치하는 일 셀에 대한 사용자 지정 빌더입니다.
Widget? todayBuilder(BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 현재 [selectedDayPredicate]에 의해 선택된 것으로 표시된 일 셀에 대한 사용자 지정 빌더입니다.
Widget? selectedBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 현재 범위 선택의 시작인 일 셀에 대한 사용자 지정 빌더입니다.
Widget? rangeStartBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 1), // Example: Display custom text
      decoration: const BoxDecoration(
          color: Color(0x7EFFFFFF),
          shape: BoxShape.circle),
      child: Text(
        day.day.toString(),
        style: const TextStyle(color: Color(0xFF2196F3)),
      ));
}

/// 현재 범위 선택의 끝인 일 셀에 대한 사용자 지정 빌더입니다.
Widget? rangeEndBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 1), // Example: Display custom text
      decoration:
          const BoxDecoration(color: Color(0x4BFFFFFF), shape: BoxShape.circle),
      child: Text(
        day.day.toString(),
        style: const TextStyle(color: Color(0xFF2196F3)),
      ));
}

/// 현재 선택된 범위 내에 있는 요일 셀에 대한 사용자 지정 빌더입니다.
Widget? withinRangeBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 일 셀에 대한 사용자 지정 빌더로, 이 중 [day.month]가 [focusedDay.month]과 다릅니다.
/// 현재 초점이 맞춰진 월과 일치하지 않는 일 셀에 영향을 줍니다.
Widget? outsideBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 비활성화된 일 셀에 대한 사용자 지정 빌더입니다.
///
/// 이는 [enabledDayPredicate]에서 false를 반환하여 비활성화된 날짜와 [firstDay] 및 [lastDay]로 설정된 범위를 벗어난 날짜를 말합니다.
Widget? disabledBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// [holidayPredicate]에 의해 휴일로 표시된 일 셀에 대한 사용자 지정 빌더입니다.
Widget? holidayBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 다른 빌더와 일치하지 않는 일 셀에 대한 사용자 지정 빌더입니다.
Widget? defaultBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// 범위 선택의 배경 하이라이트를 위한 사용자 지정 빌더.
/// [isWithinRange]가 참이면 [day]가 선택한 범위 내에 있습니다.
Widget? rangeHighlightBuilder(
    BuildContext context, DateTime day, bool isWithinRange) {
  return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 1), // Example: Display custom text
      decoration: const BoxDecoration(
          color: Color(0x4BFFFFFF),
          shape: BoxShape.circle),
      child: Text(
        day.day.toString(),
        style: const TextStyle(color: Color(0xFF2196F3)),
      ));
}

/// [singleMarker]에 대한 사용자 지정 빌더. 각 마커는 요일 셀 위의 [행]에 표시됩니다.
/// [CalendarStyle] 속성을 사용하여 마커의 위치를 조정할 수 있습니다.
///
/// [singleMarkerBuilder]가 지정되지 않은 경우 기본 이벤트 마커가 표시됩니다([CalendarStyle]로 사용자 지정 가능).
Widget? singleMarkerBuilder(
    BuildContext context, DateTime day, Schedule event) {
  // print('day ${day} , schedule: ${event.highlightColor}');
  return Container(
    width: 5,
    height: 5,
    margin: const EdgeInsets.only(right: 3),
    alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: event.highlightColor,
    ),
  );
}

/// 이벤트 마커용 커스텀 빌더. 각 요일 셀에 고유한 마커 UI를 제공하는 데 사용합니다.
/// [markerBuilder]를 사용하면 [singleMarkerBuilder] 및 기본 이벤트 마커가 재정의됩니다.
Widget? markerBuilder(
    BuildContext context, DateTime day, List<Schedule> events) {
  return null;
}

/// 요일 레이블(월, 화, 수 등)을 위한 사용자 지정 빌더입니다.
Widget? dowBuilder(BuildContext context, DateTime day) {
  return null;
}

/// 다른 위젯을 사용하여 헤더의 제목을 사용자 정의하는 데 사용합니다.
Widget? headerTitleBuilder(BuildContext context, DateTime day) {
  return null;
}

/// 요일 레이블을 위한 사용자 정의 빌더.
Widget? weekNumberBuilder(BuildContext context, int weekNumber) {
  return null;
}

CalendarBuilders<Schedule> builders = const CalendarBuilders(
    defaultBuilder: defaultBuilder,
    disabledBuilder: disabledBuilder,
    dowBuilder: dowBuilder,
    holidayBuilder: holidayBuilder,
    markerBuilder: markerBuilder,
    outsideBuilder: outsideBuilder,
    rangeEndBuilder: rangeEndBuilder,
    rangeStartBuilder: rangeStartBuilder,
    selectedBuilder: selectedBuilder,
    singleMarkerBuilder: singleMarkerBuilder,
    todayBuilder: todayBuilder,
    withinRangeBuilder: withinRangeBuilder,
    prioritizedBuilder: prioritizedBuilder);
