// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class SocialSecurityNumberFormField extends StatelessWidget {
  const SocialSecurityNumberFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      width: 158.h,
      controller: controller,
      margin: getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      maxLength: 7,
      focusNode: focusNode,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],

      /// 특정한 글자를 '*' 대신 사용할 수 있도록 구현 (obscureText가 true인 경우에 한하여 기능이 동작한다.)
      obscureChar: '●',
      obscureText: true,
      textInputType: TextInputType.number,
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: '○○○○○○○',
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
      onChanged: onChanged,
    );
  }
}
