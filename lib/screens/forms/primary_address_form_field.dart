// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class PrimaryAddressFormField extends StatelessWidget {
  const PrimaryAddressFormField({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final Function()? onChanged;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        enabled: false,
        textInputType: TextInputType.streetAddress,
        autofillHints: const [AutofillHints.addressCityAndState],
        hintText: l10ns.primaryAddress,
        controller: controller,
        margin: getMargin(top: 10),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white,
        onChanged: onChanged);
  }
}
