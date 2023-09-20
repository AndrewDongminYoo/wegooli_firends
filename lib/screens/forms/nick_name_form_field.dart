// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class NickNameFormField extends StatelessWidget {
  const NickNameFormField({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      textInputType: TextInputType.name,
      autofillHints: const [AutofillHints.nickname],
      controller: controller,
      margin: getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: l10ns.enterANicknameUpTo10Characters,
      fillColor: Colors.white,
      filled: true,
      onChanged: onChanged,
    );
  }
}
