// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

// ignore: must_be_immutable
class UserMailFormField extends StatelessWidget {
  const UserMailFormField({
    super.key,
    required this.focusNode,
    required this.nextFocus,
    required this.controller,
  });

  final UserController controller;
  final FocusNode focusNode;
  final FocusNode nextFocus;

  @override
  Widget build(BuildContext context) {
    final isLogin = controller.mode == AuthMode.login;
    final handler = TextEditingController();
    handler.addListener(() {
      if (isValidEmail(handler.text)) {
        controller.username = handler.text;
      }
    });
    return CustomTextFormField(
      controller: handler,
      focusNode: focusNode,
      onEditingComplete: nextFocus.requestFocus,
      textInputType: TextInputType.emailAddress,
      fillColor: Colors.white,
      margin: isLogin ? getMargin(top: 40) : getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: isLogin ? l10ns.id : l10ns.enterEmailAddress,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      autofillHints: const [AutofillHints.email],
      validator: (email) {
        if (!isValidEmail(email)) {
          return '이메일 형식을 정확히 입력해주세요.';
        } else {
          return null;
        }
      },
    );
  }
}
