// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class BirthdayNumberFormField extends StatelessWidget {
  const BirthdayNumberFormField({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final UserController controller;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        width: getHorizontalSize(158),
        controller: controller.birthDay,
        margin: getMargin(top: 4),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.singleLineFormatter,
          LengthLimitingTextInputFormatter(6)
        ],
        focusNode: focusNode,
        textInputType: TextInputType.number,
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: "YYMMDD",
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
