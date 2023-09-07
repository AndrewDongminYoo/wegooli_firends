// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseIssuedDateFormField extends StatelessWidget {
  const LicenseIssuedDateFormField({
    super.key,
    required this.controller,
  });

  final LicenseController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        controller: controller.firstIssueYear,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.pleaseEnterYourLicenseIssueDateOnlyNumbers,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
