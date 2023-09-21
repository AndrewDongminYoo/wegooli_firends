// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class CardPinNumberFormField extends StatelessWidget {
  const CardPinNumberFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PaymentCardController.to;
    return CustomTextFormField(
        initialValue: controller.creditCardPin,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.creditCardPin = value;
          }
        },
        autofillHints: const [AutofillHints.creditCardSecurityCode],
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 2,
        margin: getMargin(top: 4),
        filled: true,
        fillColor: Colors.white);
  }
}
