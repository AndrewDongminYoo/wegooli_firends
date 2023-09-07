// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PasswordInputFormField extends StatelessWidget {
  const PasswordInputFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        controller: controller.password,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.alphanumericSpecialCharacterCombination612Characters,
        obscureText: controller.isShowPassword.isFalse,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        suffix: Container(
            margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
            child: CustomImageView(
                svgPath: controller.isShowPassword.value
                    ? Assets.svg.imgEyeOpened.path
                    : Assets.svg.imgEyeCrossedOut.path,
                onTap: () {
                  controller.isShowPassword.toggle();
                })),
        suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
