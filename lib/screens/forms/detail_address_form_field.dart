// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class DetailAddressFormField extends StatelessWidget {
  const DetailAddressFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomTextFormField(
      initialValue: controller.detailAddress,
      onChanged: (String value) => controller.detailAddress = value,
      validator: (String? v) => v != null ? null : '상세 주소를 입력해주세요.',
      inputFormatters: const [],
      textInputType: TextInputType.streetAddress,
      margin: getMargin(top: 10),
      autofillHints: const [AutofillHints.fullStreetAddress],
      contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
      textStyle: CustomTextStyles.bodyLargeGray50003,
      hintText: '동·호수 등 상세 주소',
      hintStyle: CustomTextStyles.bodyLargeGray50003,
      filled: true,
      fillColor: Colors.white,
    );
  }
}
