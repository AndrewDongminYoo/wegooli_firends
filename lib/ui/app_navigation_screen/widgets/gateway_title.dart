// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/l10n/l10n.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class GatewayTitle extends StatelessWidget {
  const GatewayTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
          child: Text(
            'App Navigation',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyle(
              color: Colors.black,
              fontSize: TextSize.xl,
            ),
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
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            l10ns.checkYourAppUI,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyle(color: Palette.blueGray400),
          ),
        ));
  }
}
