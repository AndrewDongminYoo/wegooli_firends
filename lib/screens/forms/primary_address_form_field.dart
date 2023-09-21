// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class PrimaryAddressFormField extends StatelessWidget {
  const PrimaryAddressFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
      initialValue: controller.primaryAddress,
      onChanged: (String value) {
        if (value.isNotEmpty) {
          controller.primaryAddress = value;
        }
      },
      enabled: false,
      textInputType: TextInputType.streetAddress,
      autofillHints: const [AutofillHints.addressCityAndState],
      hintText: l10ns.primaryAddress,
      margin: getMargin(top: 10),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
    );
  }
}
