// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class SignUpFilledInButton extends StatelessWidget {
  const SignUpFilledInButton({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 16, right: 16, bottom: 29),
      child: CustomElevatedButton(
          text: l10ns.filledIn,
          isDisabled: !controller.registerZipCodeCompleted,
          buttonStyle: !controller.registerZipCodeCompleted
              ? CustomButtonStyles.fillAmberA200C5
              : CustomButtonStyles.fillPrimaryC26,
          buttonTextStyle: CustomTextStyles.titleMedium18,
          onTap: () async {
            if (await controller.signUp()) {
              await controller.acceptanceComplete();
              await goRegisterLicense();
            }
          }),
    );
  }
}
