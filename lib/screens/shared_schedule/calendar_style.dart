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
  markerDecoration: const BoxDecoration(color: Color(0xffdc4747)),
  selectedDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  rangeStartDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  rangeEndDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
  withinRangeDecoration: const BoxDecoration(),
  rangeHighlightColor: const Color(0xffdc4747).withAlpha(70),
  todayDecoration:
      const BoxDecoration(color: Color(0xffdc4747), shape: BoxShape.circle),
);

HeaderStyle headerStyle = HeaderStyle(
  headerMargin: getMargin(left: 10, right: 10),
  titleCentered: true,
  formatButtonVisible: false,
  leftChevronIcon: const Icon(Icons.keyboard_arrow_left),
  rightChevronIcon: const Icon(Icons.keyboard_arrow_right),
  titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
);

DaysOfWeekStyle daysOfWeekStyle = const DaysOfWeekStyle(
  weekdayStyle: TextStyle(
      color: Color(0xFF000000), fontWeight: FontWeight.bold, fontSize: 14),
  weekendStyle: TextStyle(
      color: Color(0xFFEF5350), fontWeight: FontWeight.bold, fontSize: 14),
);
