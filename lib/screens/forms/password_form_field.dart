// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
          controller: controller.password,
          margin: getMargin(top: 12),
          contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
          textStyle: CustomTextStyles.bodyLargeGray50003,
          hintText: l10ns.password,
          obscureText: controller.isShowPassword.isFalse,
          hintStyle: CustomTextStyles.bodyLargeGray50003,
          fillColor: theme.colorScheme.onPrimaryContainer,
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
          validator: (value) =>
              value != null && value.isNotEmpty ? null : '필수 입력 항목입니다.',
        ));
  }
}
