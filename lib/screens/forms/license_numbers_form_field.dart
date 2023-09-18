// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseNumbersFormField extends StatelessWidget {
  const LicenseNumbersFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller,
        margin: getMargin(top: 10),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.pleaseEnterYourLicenseNumbersOnly,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white);
  }
}
