// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class SendAuthCodeButton extends StatelessWidget {
  const SendAuthCodeButton({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            onTap: controller.sendVerificationCode,
            height: getVerticalSize(48),
            width: double.maxFinite,
            text: l10ns.sendAuthorizationNumber,
            margin: getMargin(top: 10),
            buttonStyle: CustomButtonStyles.fillPrimaryC5,
            buttonTextStyle: theme.textTheme.titleMedium));
  }
}
