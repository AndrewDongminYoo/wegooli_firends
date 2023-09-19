// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class GatewayTitle extends StatelessWidget {
  const GatewayTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
          child: Text(
            'App Navigation',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.fSize,
                fontFamily: FontFamily.nanumSquareRound,
                fontWeight: FontWeight.w400),
          ),
        ));
  }
}

class CheckYourAppUI extends StatelessWidget {
  const CheckYourAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: getPadding(left: 20),
          child: Text(
            l10ns.checkYourAppUI,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: appTheme.blueGray400,
                fontSize: 16.fSize,
                fontFamily: FontFamily.nanumSquareRound,
                fontWeight: FontWeight.w400),
          ),
        ));
  }
}
