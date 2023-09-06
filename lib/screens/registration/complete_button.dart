// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ValidatePhoneCompleteButton extends GetWidget<UserController> {
  const ValidatePhoneCompleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: CustomElevatedButton(
            text: l10ns.authenticationComplete,
            buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(52)))),
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: () {
              if (controller.isValidatedPhone) {
                goRegisterZipCode();
              }
            }));
  }
}
