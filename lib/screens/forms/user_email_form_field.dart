// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class UserMailFormField extends StatelessWidget {
  const UserMailFormField({
    super.key,
    required this.controller,
    required this.authMode,
  });

  final UserController controller;
  final AuthMode authMode;

  @override
  Widget build(BuildContext context) {
    final isLogin = authMode == AuthMode.login;
    return CustomTextFormField(
      controller: controller.emailAddress,
      textInputType: TextInputType.emailAddress,
      fillColor: Colors.white,
      margin: isLogin ? getMargin(top: 40) : getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: isLogin ? l10ns.id : l10ns.enterEmailAddress,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      autofillHints: const [AutofillHints.email],
      validator: (value) {
        if (value == null) {
          return '필수 입력 항목입니다.';
        } else if (!isTestId(value) && !isValidEmail(value)) {
          return '이메일 형식을 정확히 입력해주세요.';
        } else {
          return null;
        }
      },
    );
  }
}

bool isTestId(String value) {
  return value.startsWith('test');
}