// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseExpDateFormField extends StatelessWidget {
  const LicenseExpDateFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LicenseController.to;
    return CustomTextFormField(
        initialValue: controller.expirationDate,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.expirationDate = value;
          }
        },
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        autofillHints: const [AutofillHints.creditCardExpirationDate],
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.enterYourEligibilityPeriodTestExpirationDate,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white);
  }
}
