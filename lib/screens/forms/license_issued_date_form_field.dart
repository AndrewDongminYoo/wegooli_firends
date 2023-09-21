// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseIssuedDateFormField extends StatelessWidget {
  const LicenseIssuedDateFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LicenseController.to;
    return CustomTextFormField(
        initialValue: controller.firstIssueDate,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.firstIssueDate = value;
          }
        },
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.pleaseEnterYourLicenseIssueDateOnlyNumbers,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white);
  }
}
