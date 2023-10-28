// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/l10n/l10n.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

class GatewayTitle extends StatelessWidget {
  const GatewayTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            l10ns.checkYourAppUI,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyle(color: Palette.blueGray400),
          ),
        ));
  }
}
