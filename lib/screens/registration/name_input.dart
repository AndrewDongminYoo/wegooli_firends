// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class NameTextInput extends StatelessWidget {
  const NameTextInput({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller.fullName,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeNotoSansKRGray700,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: "이름을 입력해주세요.",
        textInputAction: TextInputAction.next,
        inputFormatters: [
          /// 테스트를 위해 입력할 수 있는 글자를 제한해 봄. 숫자 입력 못하게 함.
          FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z가-힣ㄱ-ㅎ, ]+'))
        ],
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }
}
