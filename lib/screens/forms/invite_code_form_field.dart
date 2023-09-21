// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class InviteCodeFormField extends StatelessWidget {
  const InviteCodeFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
        initialValue: controller.invitation,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.invitation = value;
          }
        },
        textInputType: TextInputType.visiblePassword,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.invitationCode,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white);
  }
}
