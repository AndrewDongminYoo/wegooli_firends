// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

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
      // decoration: AppDecoration.shadow,
      child: CustomElevatedButton(
          text: l10ns.filledIn,
          // TODO disabled일 때 스타일 정의하기
          // isDisabled: !controller.isValid,
          buttonStyle: CustomButtonStyles.fillPrimaryC26,
          buttonTextStyle: CustomTextStyles.titleMedium18,
          onTap: () {
            if (controller.isValid) {
              goRegisterLicense();
            }
          }),
    );
  }
}
