// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class NickNameFormField extends StatelessWidget {
  const NickNameFormField({
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
    handler.addListener(() {
      if (handler.text.isNotEmpty) {
        controller.nickname = handler.text;
      }
    });
    return CustomTextFormField(
      focusNode: focusNode,
      onEditingComplete: nextFocus.requestFocus,
      controller: handler,
      textInputType: TextInputType.name,
      autofillHints: const [AutofillHints.nickname],
      margin: getMargin(top: 4),
      contentPadding: getPadding(horizontal: 12, vertical: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: l10ns.enterANicknameUpTo10Characters,
      fillColor: Colors.white,
      filled: true,
    );
  }
}
