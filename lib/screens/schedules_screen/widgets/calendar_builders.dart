// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/data/custom/schedule.dart';
import '/theme/text_styles.dart';

CalendarBuilders<Schedule> builders = CalendarBuilders(
  rangeEndBuilder: (context, day, focusedDay) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: const BoxDecoration(
        color: Color(0x4BFFFFFF),
        shape: BoxShape.circle,
      ),
      child: Text(
        day.day.toString(),
        style: AppTextStyle(
          color: const Color(0xFF2196F3),
        ),
      ),
    );
  },
  rangeStartBuilder: (context, day, focusedDay) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: const BoxDecoration(
        color: Color(0x7EFFFFFF),
        shape: BoxShape.circle,
      ),
      child: Text(
        day.day.toString(),
        style: AppTextStyle(
          color: const Color(0xFF2196F3),
        ),
      ),
    );
  },
  singleMarkerBuilder: (context, day, event) {
    return Container(
      width: 5.w,
      height: 5.h,
      margin: const EdgeInsets.only(right: 3),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        // color: event.highlightColor,
      ),
    );
  },
);
