// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ValidatePhoneCompleteButton extends StatelessWidget {
  const ValidatePhoneCompleteButton({super.key, required this.controller});
  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: CustomElevatedButton(
            text: l10ns.authenticationComplete,
            buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
              Size(
                double.maxFinite,
                getVerticalSize(52),
              ),
            )),
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: () {
              if (controller.isValidatedPhone) {
                goRegisterZipCode();
              }
            }));
  }
}
