// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CheckYourAppUIMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: getPadding(left: 20),
            child: Text(l10ns.checkYourAppUI,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: appTheme.blueGray400,
                    fontSize: getFontSize(16),
                    fontFamily: FontFamily.nanumSquareRound,
                    fontWeight: FontWeight.w400))));
  }
}
