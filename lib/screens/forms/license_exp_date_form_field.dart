// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseExpDateFormField extends StatelessWidget {
  const LicenseExpDateFormField({
    super.key,
    required this.controller,
  });

  final LicenseController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller.expirationDate,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.enterYourEligibilityPeriodTestExpirationDate,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
