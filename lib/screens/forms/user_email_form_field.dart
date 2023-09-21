// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

// ignore: must_be_immutable
class UserMailFormField extends StatefulWidget {
  const UserMailFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  State<UserMailFormField> createState() => _UserMailFormFieldState();
}

class _UserMailFormFieldState extends State<UserMailFormField> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    final isLogin = controller.mode == AuthMode.login;
    return CustomTextFormField(
      initialValue: controller.username,
      textInputType: TextInputType.emailAddress,
      fillColor: Colors.white,
      margin: isLogin ? getMargin(top: 40) : getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: isLogin ? l10ns.id : l10ns.enterEmailAddress,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      autofillHints: const [AutofillHints.email],
      onChanged: (String value) {
        setState(() {
          controller.username = value;
        });
      },
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
