// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InviteCodeFormField extends StatelessWidget {
  const InviteCodeFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        textInputType: TextInputType.visiblePassword,
        controller: controller.invitation,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.invitationCode,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
