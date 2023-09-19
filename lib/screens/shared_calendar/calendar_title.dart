// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CalendarTitle extends StatelessWidget {
  const CalendarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(all: 16),
        child: Text(
          l10ns.schedule,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.titleMediumBlack900.copyWith(
            fontWeight: FontWeight.w900,
            letterSpacing: 0.04.h,
          ),
        ));
  }
}
