// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller.username,
        textInputType: TextInputType.emailAddress,
        margin: getMargin(top: 40),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.id,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        textInputAction: TextInputAction.next,
        filled: true,
        autofillHints: const [AutofillHints.email],
        validator: (value) =>
            value != null && value.isNotEmpty ? null : '필수 입력 항목입니다.',
        autofocus: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
