// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseNumbersFormField extends StatelessWidget {
  const LicenseNumbersFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LicenseController.to;
    return CustomTextFormField(
        initialValue: controller.licenseNumbers,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.licenseNumbers = value;
          }
        },
        maxLength: 9, // 11(또는 서울)-12-345678-90

        margin: getMargin(top: 10),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.pleaseEnterYourLicenseNumbersOnly,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white);
  }
}
