// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AppNavigationTitle extends StatelessWidget {
  const AppNavigationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
          child: Text(
            "App Navigation",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: appTheme.black900,
                fontSize: getFontSize(20),
                fontFamily: FontFamily.nanumSquareRound,
                fontWeight: FontWeight.w400),
          ),
        ));
  }
}
