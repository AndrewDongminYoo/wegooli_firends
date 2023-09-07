// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InvitationCodeCopyFormField extends StatelessWidget {
  const InvitationCodeCopyFormField({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
          controller: controller,
          focusNode: focusNode,
          filled: true,
          enabled: true,
          hintText: "xxxx-xxxx-xxxx-xxxx",
          contentPadding: getPadding(all: 14),
          inputFormatters: <TextInputFormatter>[
            SeperateTextFormatter(
                sample: 'XXXX-XXXX-XXXX-XXXX', separator: '-'),
            LengthLimitingTextInputFormatter(19),
            FilteringTextInputFormatter.allow(r'[0-9a-zA-Z\-]'),
          ],
          textStyle: CustomTextStyles.bodyLargeGray50003,
          hintStyle: CustomTextStyles.bodyLargeGray50003,
          fillColor: theme.colorScheme.onPrimaryContainer,
        ));
  }
}
