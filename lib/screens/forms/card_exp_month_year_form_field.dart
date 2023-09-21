// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class CardExpMonthYearFormField extends StatelessWidget {
  const CardExpMonthYearFormField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = PaymentCardController.to;
    return CustomTextFormField(
      initialValue: controller.creditCardExp,
      onChanged: (String value) {
        if (value.isNotEmpty) {
          controller.creditCardExp = value;
        }
      },
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
