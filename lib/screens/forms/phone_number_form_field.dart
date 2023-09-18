// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class PhoneNumberFormField extends StatelessWidget {
  const PhoneNumberFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        width: getHorizontalSize(198),
        controller: controller,
        margin: getMargin(top: 4),
        autofill: true,
        autofillHints: const [AutofillHints.telephoneNumberLocal],
        textInputType: TextInputType.phone,
        contentPadding: getPadding(all: 12),
        inputFormatters: <TextInputFormatter>[
          SeperateTextFormatter(sample: 'XXX-XXXX-XXXX', separator: '-'),
        ],
        hintText: '010-1234-5678',
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        filled: true,
        fillColor: Colors.white);
  }
}
