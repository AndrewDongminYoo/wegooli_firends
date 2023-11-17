// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

/// Creates a `CalendarStyle` used by `TableCalendar` widget.
CalendarStyle calendarStyle = CalendarStyle(
  markerSize: 3.5.r,
  markersAlignment: Alignment.topCenter,
  markerDecoration: const BoxDecoration(
    color: Palette.red600,
  ),
  selectedDecoration: const BoxDecoration(
    color: Palette.red600,
    shape: BoxShape.circle,
  ),
  rangeStartDecoration: const BoxDecoration(
    color: Palette.red600,
    shape: BoxShape.circle,
  ),
  rangeEndDecoration: const BoxDecoration(
    color: Palette.red600,
    shape: BoxShape.circle,
  ),
  withinRangeDecoration: const BoxDecoration(),
  rangeHighlightColor: Palette.red600.withAlpha(70),
  todayDecoration: const BoxDecoration(
    color: Palette.red600,
    shape: BoxShape.circle,
  ),
  todayTextStyle: AppTextStyle(
    color: Colors.white,
    fontSize: TextSize.sm,
  ),
  disabledTextStyle: AppTextStyle(
    fontSize: TextSize.sm,
  ),
);

HeaderStyle headerStyle = HeaderStyle(
  headerMargin: const EdgeInsets.symmetric(horizontal: 10),
  titleCentered: true,
  formatButtonVisible: false,
  leftChevronIcon: const Icon(
    Icons.keyboard_arrow_left,
    color: Palette.fontBlack,
  ),
  rightChevronIcon: const Icon(
    Icons.keyboard_arrow_right,
    color: Palette.fontBlack,
  ),
  titleTextStyle: AppTextStyle(
    fontSize: TextSize.lg,
    fontWeight: FontWeight.bold,
  ),
);

DaysOfWeekStyle daysOfWeekStyle = DaysOfWeekStyle(
  weekdayStyle: AppTextStyle(
    fontWeight: FontWeight.bold,
    fontSize: TextSize.sm,
  ),
  weekendStyle: AppTextStyle(
    color: Palette.red600,
    fontWeight: FontWeight.bold,
    fontSize: TextSize.sm,
  ),
);
