// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class DetailAddressFormField extends StatelessWidget {
  const DetailAddressFormField({
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
        controller.detailAddress = handler.text;
      }
    });
    return CustomTextFormField(
      focusNode: focusNode,
      onEditingComplete: nextFocus.requestFocus,
      controller: handler,
      validator: (String? v) => v != null ? null : '상세 주소를 입력해주세요.',
      inputFormatters: const [],
      textInputType: TextInputType.streetAddress,
      margin: getMargin(top: 10),
      autofillHints: const [AutofillHints.fullStreetAddress],
      contentPadding: getPadding(horizontal: 12, vertical: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: '동·호수 등 상세 주소',
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
    );
  }
}
