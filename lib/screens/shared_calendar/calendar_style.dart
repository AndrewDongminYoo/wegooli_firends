// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/lib.dart';

/// Creates a `CalendarStyle` used by `TableCalendar` widget.
CalendarStyle calendarStyle = CalendarStyle(
  markerSize: 3.5,
  markersAlignment: Alignment.topCenter,
  markerDecoration: const BoxDecoration(color: ColorConstant.fontErrorMessage),
  selectedDecoration: const BoxDecoration(
      color: ColorConstant.fontErrorMessage, shape: BoxShape.circle),
  rangeStartDecoration: const BoxDecoration(
      color: ColorConstant.fontErrorMessage, shape: BoxShape.circle),
  rangeEndDecoration: const BoxDecoration(
      color: ColorConstant.fontErrorMessage, shape: BoxShape.circle),
  withinRangeDecoration: const BoxDecoration(),
  rangeHighlightColor: ColorConstant.fontErrorMessage.withAlpha(70),
  todayDecoration: const BoxDecoration(
      color: ColorConstant.fontErrorMessage, shape: BoxShape.circle),
);

HeaderStyle headerStyle = HeaderStyle(
  headerMargin: getMargin(left: 10, right: 10, top: 0),
  titleCentered: true,
  formatButtonVisible: false,
  leftChevronIcon: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
  rightChevronIcon: const Icon(Icons.keyboard_arrow_right, color: Colors.black),
  titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
);

DaysOfWeekStyle daysOfWeekStyle = const DaysOfWeekStyle(
  weekdayStyle:
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
  weekendStyle: TextStyle(
      color: Color(0xFFEF5350), fontWeight: FontWeight.bold, fontSize: 14),
);
