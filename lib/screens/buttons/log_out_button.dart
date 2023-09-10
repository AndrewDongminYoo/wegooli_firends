// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.signOut,
        margin: getMargin(top: 30, bottom: 20),
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: () async {
          if (await controller.logOut()) {
            await goIdPwLogin();
          }
        });
  }
}