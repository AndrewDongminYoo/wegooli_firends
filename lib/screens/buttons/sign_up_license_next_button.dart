// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SignUpLicenseNextButton extends StatelessWidget {
  const SignUpLicenseNextButton({
    super.key,
    required this.controller,
  });

  final LicenseController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 15, right: 17, bottom: 29),
      // decoration: AppDecoration.shadow,
      child: CustomElevatedButton(
          text: l10ns.registrationComplete,
          buttonStyle: CustomButtonStyles.fillPrimaryC26,
          buttonTextStyle: CustomTextStyles.titleMedium18,
          onTap: () {
            if (controller.licenseInputSucceed) {
              goRegisterCreditCard();
            }
          }),
    );
  }
}