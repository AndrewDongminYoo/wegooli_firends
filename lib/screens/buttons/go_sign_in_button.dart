// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class GoSignInButton extends StatelessWidget {
  const GoSignInButton({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.signIn,
        margin: getMargin(top: 30),
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: () async {
          await controller.signIn();
          if (controller.oneTimeCode == Verify.Success) {
            await controller.preProcessor();
          } else {
            controller.username.clear();
            controller.password.clear();
          }
        });
  }
}
