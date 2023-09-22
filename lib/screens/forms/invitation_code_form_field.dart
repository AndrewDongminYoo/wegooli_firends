// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class InvitationCodeFormField extends StatelessWidget {
  const InvitationCodeFormField({
    super.key,
    this.readOnly = false,
  });

  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
        initialValue: controller.invitation,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.invitation = value;
          } else {
            controller.invitation = generateInvitationCode();
          }
        },
        readOnly: readOnly,
        margin: getMargin(left: 25, top: 17, right: 25),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        filled: true,
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        fillColor: Colors.white);
  }
}
