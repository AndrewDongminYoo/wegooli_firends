// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CalendarTitle extends StatelessWidget {
  const CalendarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(all: 16),
        child: Text(l10ns.schedule,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.titleMediumBlack900.copyWith(
                fontWeight: FontWeight.w900,
                letterSpacing: getHorizontalSize(0.04))));
  }
}
