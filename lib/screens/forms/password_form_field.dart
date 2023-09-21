// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

// ignore: must_be_immutable
class PasswordFormField extends StatefulWidget {
  PasswordFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    final isShowPassword = false.obs;
    final isSignUp = controller.mode == AuthMode.register;
    return Obx(() {
      final controller = UserController.to;
      return CustomTextFormField(
        initialValue: controller.password,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.password = value;
          }
        },
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        autofillHints: [
          if (isSignUp) AutofillHints.newPassword else AutofillHints.password
        ],
        hintText: isSignUp
            ? l10ns.alphanumericSpecialCharacterCombination612Characters
            : l10ns.password,
        obscureText: isShowPassword.isFalse,
        suffix: Container(
            margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
            child: ShowPasswordToggle(show: isShowPassword)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        fillColor: Colors.white,
        filled: true,
        validator: (password) {
          if (!isValidPassword(password)) {
            return '비밀번호 형식을 따라 정확히 입력해주세요.';
          } else {
            return null;
          }
        },
      );
    });
  }
}

class PasswordConfirmFormField extends StatefulWidget {
  const PasswordConfirmFormField({
    super.key,
  });

  @override
  State<PasswordConfirmFormField> createState() =>
      _PasswordConfirmFormFieldState();
}

class _PasswordConfirmFormFieldState extends State<PasswordConfirmFormField> {
  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    final isShowConfirmPassword = false.obs;
    return Obx(() => CustomTextFormField(
          textInputType: TextInputType.emailAddress,
          initialValue: controller.rePassword,
          onChanged: (String? value) {
            controller.rePassword = value;
          },
          margin: getMargin(top: 4),
          contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
          textStyle: CustomTextStyles.bodyLargeGray50003,
          autofillHints: const [AutofillHints.password],
          hintText: l10ns.confirmPassword,
          obscureText: isShowConfirmPassword.isFalse,
          hintStyle: CustomTextStyles.bodyLargeGray50003,
          suffix: Container(
              margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
              child: ShowPasswordToggle(show: isShowConfirmPassword)),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          filled: true,
          fillColor: Colors.white,
          validator: (_passwordCheck) {
            if (_passwordCheck != controller.password) {
              return '비밀번호와 일치하지 않습니다.';
            } else {
              return null;
            }
          },
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
