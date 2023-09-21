// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class NickNameFormField extends StatelessWidget {
  const NickNameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
      initialValue: controller.nickname,
      onChanged: (String value) {
        if (value.isNotEmpty) {
          controller.nickname = value;
        }
      },
      textInputType: TextInputType.name,
      autofillHints: const [AutofillHints.nickname],
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
