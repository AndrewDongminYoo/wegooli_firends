// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class CreditCardFormField extends StatelessWidget {
  const CreditCardFormField({
    super.key,
    required this.controller,
  });

  final PaymentCardController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller.creditCardNum,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        autofillHints: const [AutofillHints.creditCardNumber],
inputFormatters: <TextInputFormatter>[
          SeperateTextFormatter(sample: 'XXXX XXXX XXXX XXXX', separator: ' '),
        ],
        hintText: '0000\t0000\t0000\t0000',
        filled: true,
        fillColor: Colors.white);
  }
}
