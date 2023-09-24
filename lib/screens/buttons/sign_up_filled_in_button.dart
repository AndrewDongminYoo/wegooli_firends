// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class SignUpFilledInButton extends StatelessWidget {
  const SignUpFilledInButton({
    super.key,
    required this.controller,
    required this.focusNode,
  });
  final UserController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 16, right: 16, bottom: 29),
      child: CustomElevatedButton(
          focusNode: focusNode,
          text: l10ns.filledIn,
          isDisabled: !controller.registerZipCodeCompleted,
          buttonStyle: controller.registerZipCodeCompleted
              ? CustomButtonStyles.fillPrimaryC26
              : CustomButtonStyles.fillAmberA200C26,
          buttonTextStyle: CustomTextStyles.titleMedium18,
          onTap: () async {
            try {
              await controller.signUp();
              await controller.acceptanceComplete();
              await goRegisterLicense();
            } on Exception catch (e) {
              handleException('SignUpFilledInButton.onTap', e);
            }
          }),
    );
  }
}
