// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class InvitationCodeCopyFormField extends StatelessWidget {
  const InvitationCodeCopyFormField({
    super.key,
    required this.focusNode,
  });

  final FocusNode focusNode;

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
      focusNode: focusNode,
      filled: true,
      hintText: 'xxxx-xxxx-xxxx-xxxx',
      contentPadding: getPadding(all: 14),
      inputFormatters: <TextInputFormatter>[
        SeperateTextFormatter(sample: 'XXXX-XXXX-XXXX-XXXX', separator: '-'),
        FilteringTextInputFormatter.allow(r'[0-9a-zA-Z\-]'),
      ],
      maxLength: 19,
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      fillColor: Colors.white,
    );
  }
}
