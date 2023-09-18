// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class CardExpMonthYearFormField extends StatelessWidget {
  const CardExpMonthYearFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: 'MM/YY',
        autofillHints: const [AutofillHints.creditCardExpirationDate],
        inputFormatters: <TextInputFormatter>[
          SeperateTextFormatter(sample: 'XX/XX', separator: '/'),
        ],
        filled: true,
        fillColor: Colors.white);
  }
}
