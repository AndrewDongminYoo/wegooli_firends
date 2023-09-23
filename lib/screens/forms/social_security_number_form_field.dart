// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class SocialSecurityNumberFormField extends StatelessWidget {
  const SocialSecurityNumberFormField({
    super.key,
    required this.nextFocus,
    required this.focusNode,
  });
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
      focusNode: focusNode,
      initialValue: controller.backNumbers,
      onChanged: (String value) {
        if (value.isNotEmpty) {
          controller.backNumbers = value;
        }
      },
      width: 158.h,
      margin: getMargin(top: 4),
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      maxLength: 7,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],

      /// 특정한 글자를 '*' 대신 사용할 수 있도록 구현 (obscureText가 true인 경우에 한하여 기능이 동작한다.)
      obscuringCharacter: '●',
      obscureText: true,
      textInputType: TextInputType.number,
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: '○○○○○○○',
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
    );
  }
}
