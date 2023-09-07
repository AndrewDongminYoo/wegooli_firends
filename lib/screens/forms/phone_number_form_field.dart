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
    return Obx(() => CustomTextFormField(
        width: getHorizontalSize(216),
        controller: controller.phoneNum,
        margin: getMargin(top: 4),
        textInputType: TextInputType.phone,
        contentPadding: getPadding(left: 12, right: 12, top: 14, bottom: 14),
        inputFormatters: [
          SeperateTextFormatter(sample: 'XXX-XXXX-XXXX', separator: '-'),
        ],
        hintText: "010-1234-5678",
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
