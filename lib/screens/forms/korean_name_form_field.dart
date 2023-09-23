// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class KoreanNameFormField extends StatelessWidget {
  const KoreanNameFormField({
    super.key,
    required this.focusNode,
    required this.nextFocus,
  });
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    final regExp = RegExp('[A-Za-z가-힣ㄱ-ㅎ, ]+');
    return CustomTextFormField(
      focusNode: focusNode,
      initialValue: controller.koreanName,
      onChanged: (String value) {
        if (regExp.hasMatch(value)) {
          controller.koreanName = value;
        }
      },
      margin: getMargin(top: 4),
      autofillHints: const [AutofillHints.newUsername],
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: l10ns.pleaseEnterYourName,
      inputFormatters: <TextInputFormatter>[
        /// 테스트를 위해 입력할 수 있는 글자를 제한해 봄. 숫자 입력 못하게 함.
        FilteringTextInputFormatter.allow(regExp),
      ],
      filled: true,
      fillColor: Colors.white,
    );
  }
}
