// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CalendarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(left: 16, top: 21),
        child: Text("일정",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.titleMediumBlack900.copyWith(
                fontWeight: FontWeight.w900,
                letterSpacing: getHorizontalSize(0.04))));
  }
}
