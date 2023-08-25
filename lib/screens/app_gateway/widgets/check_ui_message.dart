// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/app_export.dart';

class CheckYourAppUIMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: getPadding(left: 20),
            child: Text("checkYourAppUI".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: appTheme.blueGray400,
                    fontSize: getFontSize(16),
                    fontFamily: FontFamily.nanumSquareRound,
                    fontWeight: FontWeight.w400))));
  }
}
