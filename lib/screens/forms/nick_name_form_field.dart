// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class NickNameFormField extends StatelessWidget {
  const NickNameFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      textInputType: TextInputType.name,
      autofillHints: const [AutofillHints.nickname],
      controller: controller.nickname,
      margin: getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: l10ns.enterANicknameUpTo10Characters,
      fillColor: Colors.white,
      filled: true,
    );
  }
}
