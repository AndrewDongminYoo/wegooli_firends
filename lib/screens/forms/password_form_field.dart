// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.controller,
    required this.authMode,
  });

  final UserController controller;
  final AuthMode authMode;

  @override
  Widget build(BuildContext context) {
    RxBool isShowPassword = false.obs;
    bool isSignUp = authMode == AuthMode.register;
    return Obx(() {
      return CustomTextFormField(
          controller: controller.password,
          margin: getMargin(top: 4),
          contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
          textStyle: CustomTextStyles.bodyLargeGray50003,
          hintStyle: CustomTextStyles.bodyLargeGray50003,
          autofillHints: [isSignUp ? AutofillHints.newPassword : AutofillHints.password],
          hintText: isSignUp
              ? l10ns.alphanumericSpecialCharacterCombination612Characters
              : l10ns.password,
          obscureText: isShowPassword.isFalse,
          suffix: Container(
              margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
              child: ShowPasswordToggle(show: isShowPassword)),
          suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
          fillColor: theme.colorScheme.onPrimaryContainer,
          filled: true,
          validator: (value) =>
              value == null || value.isEmpty ? '필수 입력 항목입니다.' : null,
        );
    });
  }
}

class PasswordConfirmFormField extends StatelessWidget {
  const PasswordConfirmFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    RxBool isShowConfirmPassword = false.obs;
    return Obx(() => CustomTextFormField(
          textInputType: TextInputType.emailAddress,
          controller: controller.rePassword,
          margin: getMargin(top: 4),
          contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
          textStyle: CustomTextStyles.bodyLargeGray50003,
          autofillHints: [AutofillHints.password],
          hintText: l10ns.confirmPassword,
          obscureText: isShowConfirmPassword.isFalse,
          hintStyle: CustomTextStyles.bodyLargeGray50003,
          suffix: Container(
              margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
              child: ShowPasswordToggle(show: isShowConfirmPassword)),
          suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
          filled: true,
          fillColor: theme.colorScheme.onPrimaryContainer,
        ));
  }
}


class ShowPasswordToggle extends StatelessWidget {
  const ShowPasswordToggle({
    super.key,
    required this.show,
  });
  final RxBool show;
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        svgPath: show.value
            ? Assets.svg.imgEyeOpened.path
            : Assets.svg.imgEyeCrossedOut.path,
        onTap: show.toggle);
  }
}
