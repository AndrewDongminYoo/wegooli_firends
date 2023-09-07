// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PrimaryAddressFormField extends StatelessWidget {
  const PrimaryAddressFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        enabled: false,
        textInputType: TextInputType.streetAddress,
        controller: controller.primaryAddress,
        margin: getMargin(top: 10),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.primaryAddress,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
