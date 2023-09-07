// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PasswordConfirmFormField extends StatelessWidget {
  const PasswordConfirmFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        textInputType: TextInputType.emailAddress,
        controller: controller.rePassword,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: l10ns.confirmPassword,
        obscureText: controller.isShowConfirmPassword.isFalse,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        suffix: Container(
            margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
            child: CustomImageView(
                svgPath: controller.isShowConfirmPassword.value
                    ? Assets.svg.imgEyeOpened.path
                    : Assets.svg.imgEyeCrossedOut.path,
                onTap: () {
                  controller.isShowConfirmPassword.toggle();
                })),
        suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
