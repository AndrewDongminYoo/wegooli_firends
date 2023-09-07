// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InvitationCodeFormField extends StatelessWidget {
  const InvitationCodeFormField({
    super.key,
    required this.controller,
  });

  final VehicleController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        controller: controller.invitation,
        hintText: "xxxx-xxxx-xxxx-xxxx",
        margin: getMargin(left: 25, top: 17, right: 25),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        filled: true,
        enabled: false,
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
