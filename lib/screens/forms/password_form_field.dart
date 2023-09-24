// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

// ignore: must_be_immutable
class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.nextFocus,
  });

  final UserController controller;
  final FocusNode focusNode;
  final FocusNode nextFocus;

  @override
  Widget build(BuildContext context) {
    final isShowPassword = false.obs;
    final isSignUp = controller.mode == AuthMode.register;
    final handler = TextEditingController();
    handler.addListener(() {
      if (handler.text.isNotEmpty) {
        controller.password = handler.text;
      }
    });
    return Obx(() {
      return CustomTextFormField(
        controller: handler,
        focusNode: focusNode,
        onEditingComplete: nextFocus.requestFocus,
        margin: getMargin(top: 4),
        contentPadding: getPadding(horizontal: 12, vertical: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        autofillHints: [
          if (isSignUp) AutofillHints.newPassword else AutofillHints.password
        ],
        hintText: isSignUp
            ? l10ns.alphanumericSpecialCharacterCombination612Characters
            : l10ns.password,
        textInputAction: isSignUp ? TextInputAction.next : TextInputAction.done,
        obscureText: isShowPassword.isFalse,
        suffix: Container(
            margin: getMargin(left: 30, top: 12, right: 10, bottom: 12),
            child: ShowPasswordToggle(show: isShowPassword)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        fillColor: Colors.white,
        filled: true,
        validator: (String? password) {
          if (!isValidPassword(password)) {
            return '비밀번호 형식을 따라 정확히 입력해주세요.';
          } else if (password!.length < 6 || password.length > 12) {
            return '비밀번호는 6자 이상 12자 이하여야 합니다.';
          } else {
            return null;
          }
        },
      );
    });
  }
}

class PasswordConfirmFormField extends StatelessWidget {
  const PasswordConfirmFormField({
    super.key,
    required this.handler,
    required this.controller,
    required this.focusNode,
    required this.nextFocus,
  });
  final UserController controller;
  final TextEditingController handler;
  final FocusNode focusNode;
  final FocusNode nextFocus;

  @override
  Widget build(BuildContext context) {
    final isShowConfirmPassword = false.obs;
    handler.addListener(() {
      controller.rePassword = handler.text;
    });
    return Obx(() {
      return CustomTextFormField(
        focusNode: focusNode,
        onEditingComplete: () {
          if (handler.text != controller.password) {
            nextFocus.requestFocus();
          }
        },
        controller: handler,
        textInputType: TextInputType.visiblePassword,
        margin: getMargin(top: 4),
        contentPadding: getPadding(horizontal: 12, vertical: 14),
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
      );
    });
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
