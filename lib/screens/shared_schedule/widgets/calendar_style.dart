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
    markerDecoration: BoxDecoration(
      color: const Color(0xffdc4747),
      shape: BoxShape.rectangle,
    ),
    selectedDecoration: BoxDecoration(
      color: const Color(0xffdc4747),
      shape: BoxShape.circle,
    ),
    selectedTextStyle: TextStyle(
      color: Color(0xFFFAFAFA),
      fontSize: 16.0,
    ),
    rangeStartDecoration: BoxDecoration(
      color: Color(0xffdc4747),
      shape: BoxShape.circle,
    ),
    rangeStartTextStyle: TextStyle(
      color: Color(0xFFFAFAFA),
      fontSize: 16.0,
    ),
    rangeEndDecoration: BoxDecoration(
      color: Color(0xffdc4747),
      shape: BoxShape.circle,
    ),
    rangeEndTextStyle: TextStyle(
      color: Color(0xFFFAFAFA),
      fontSize: 16.0,
    ),
    rangeHighlightScale: 1,
    withinRangeDecoration: BoxDecoration(
      shape: BoxShape.rectangle,
    ),
    rangeHighlightColor: Color(0xffdc4747).withAlpha(70),
    todayDecoration: BoxDecoration(
      color: Color(0xffdc4747),
      shape: BoxShape.circle,
    ),
    todayTextStyle: TextStyle(
      color: Color(0xFFFAFAFA),
      fontSize: 16.0,
    ), //
    isTodayHighlighted: true,
    canMarkersOverflow: true,
    outsideDaysVisible: true,
    markersAutoAligned: true,
    markerSizeScale: 0.2,
    markersAnchor: 0.7,
    markerMargin: const EdgeInsets.symmetric(horizontal: 0.3),
    markersMaxCount: 4,
    cellMargin: const EdgeInsets.all(6.0),
    cellPadding: const EdgeInsets.all(0),
    cellAlignment: Alignment.center,
    markersOffset: const PositionedOffset(),
    withinRangeTextStyle: const TextStyle(),
    outsideTextStyle: const TextStyle(color: const Color(0xFFAEAEAE)),
    outsideDecoration: const BoxDecoration(shape: BoxShape.circle),
    disabledTextStyle: const TextStyle(color: const Color(0xFFBFBFBF)),
    disabledDecoration: const BoxDecoration(shape: BoxShape.circle),
    holidayTextStyle: const TextStyle(color: const Color(0xFF5C6BC0)),
    holidayDecoration: const BoxDecoration(
      border: const Border.fromBorderSide(
        const BorderSide(color: const Color(0xFF9FA8DA), width: 1.4),
      ),
      shape: BoxShape.circle,
    ),
    weekendTextStyle: const TextStyle(color: const Color(0xFF5A5A5A)),
    weekendDecoration: const BoxDecoration(shape: BoxShape.circle),
    weekNumberTextStyle:
        const TextStyle(fontSize: 12, color: const Color(0xFFBFBFBF)),
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
        leftChevronIcon: Icon(Icons.keyboard_arrow_left),
        rightChevronIcon: Icon(Icons.keyboard_arrow_right),
        titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      );
