// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PhoneNumberFormField extends StatelessWidget {
  const PhoneNumberFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        width: getHorizontalSize(198),
        controller: controller.phoneNum,
        margin: getMargin(top: 4),
        autofillHints: [AutofillHints.telephoneNumber],
        textInputType: TextInputType.phone,
        contentPadding: getPadding(all: 12),
        inputFormatters: [
          SeperateTextFormatter(sample: 'XXX-XXXX-XXXX', separator: '-'),
        ],
        hintText: '010-1234-5678',
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
