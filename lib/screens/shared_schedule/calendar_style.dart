// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// Creates a `CalendarStyle` used by `TableCalendar` widget.
CalendarStyle calendarStyle = CalendarStyle(
  markerSize: 3.5,
  markersAlignment: Alignment.topCenter,
  markerDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.rectangle),
  selectedDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  selectedTextStyle: const TextStyle(color: Color(0xFFFAFAFA), fontSize: 16),
  rangeStartDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  rangeStartTextStyle: const TextStyle(color: Color(0xFFFAFAFA), fontSize: 16),
  rangeEndDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  rangeEndTextStyle: const TextStyle(color: Color(0xFFFAFAFA), fontSize: 16),
  rangeHighlightScale: 1,
  withinRangeDecoration: const BoxDecoration(shape: BoxShape.rectangle),
  rangeHighlightColor: const Color(0xffdc4747).withAlpha(70),
  todayDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  todayTextStyle: const TextStyle(color: Color(0xFFFAFAFA), fontSize: 16), //
  isTodayHighlighted: true,
  canMarkersOverflow: true,
  outsideDaysVisible: true,
  markersAutoAligned: true,
  markerSizeScale: 0.2,
  markersAnchor: 0.7,
  markerMargin: const EdgeInsets.symmetric(horizontal: 0.3),
  markersMaxCount: 4,
  cellMargin: const EdgeInsets.all(6),
  cellPadding: const EdgeInsets.all(0),
  cellAlignment: Alignment.center,
  markersOffset: const PositionedOffset(),
  withinRangeTextStyle: const TextStyle(),
  outsideTextStyle: const TextStyle(color: Color(0xFFAEAEAE)),
  outsideDecoration: const BoxDecoration(shape: BoxShape.circle),
  disabledTextStyle: const TextStyle(color: Color(0xFFBFBFBF)),
  disabledDecoration: const BoxDecoration(shape: BoxShape.circle),
  holidayTextStyle: const TextStyle(color: Color(0xFF5C6BC0)),
  holidayDecoration: const BoxDecoration(
      border: Border.fromBorderSide(
          BorderSide(color: Color(0xFF9FA8DA), width: 1.4)),
      shape: BoxShape.circle),
  weekendTextStyle: const TextStyle(color: Color(0xFF5A5A5A)),
  weekendDecoration: const BoxDecoration(shape: BoxShape.circle),
  weekNumberTextStyle:
      const TextStyle(fontSize: 12, color: Color(0xFFBFBFBF)),
  defaultTextStyle: const TextStyle(),
  defaultDecoration: const BoxDecoration(shape: BoxShape.circle),
  rowDecoration: const BoxDecoration(),
  tableBorder: const TableBorder(),
  tablePadding: const EdgeInsets.all(0),
);

HeaderStyle headerStyle = HeaderStyle(
  headerMargin: getMargin(left: 10, right: 10),
  titleCentered: true,
  formatButtonVisible: false,
  leftChevronIcon: const Icon(Icons.keyboard_arrow_left),
  rightChevronIcon: const Icon(Icons.keyboard_arrow_right),
  titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
);

DaysOfWeekStyle daysOfWeekStyle = const DaysOfWeekStyle(
  weekdayStyle: TextStyle(
      color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 14),
  weekendStyle: TextStyle(
      color: Color(0xFFEF5350), fontWeight: FontWeight.bold, fontSize: 14),
);
