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
      focusNode: focusNode,
      initialValue: controller.invitation,
      onChanged: (String value) {
        if (value.isNotEmpty && value.length >= 16) {
          controller.invitation = value;
        }
      },
      validator: (String? value) {
        if (value.isNullOrEmpty) {
          return '초대 코드를 입력해주세요.';
        } else {
          final inviteRegex = RegExp(
              r'^[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}$');
          final valid = inviteRegex.hasMatch(value!);
          if (!valid) {
            return '올바른 초대 코드를 입력해주세요';
          } else {
            return null;
          }
        }
      },
      filled: true,
      hintText: 'xxxx-xxxx-xxxx-xxxx',
      contentPadding: getPadding(all: 14),
      inputFormatters: <TextInputFormatter>[
        const SeperateTextFormatter(
            sample: 'XXXX-XXXX-XXXX-XXXX', separator: '-'),
        FilteringTextInputFormatter.allow(r'[0-9a-zA-Z\-]'),
      ],
      maxLength: 19,
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      fillColor: Colors.white,
    );
  }
}
