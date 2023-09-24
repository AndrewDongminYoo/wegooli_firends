// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class AuthSignInButton extends StatelessWidget {
  const AuthSignInButton({
    super.key,
    required this.focusNode,
  });
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomElevatedButton(
        focusNode: focusNode,
        text: l10ns.signIn,
        margin: getMargin(top: 30),
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: () async {
          final currentUser = await controller.login();
          if (currentUser.id != null) {
            await goSharedSchedule();
          }
        });
  }
}
