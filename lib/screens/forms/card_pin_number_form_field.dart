// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CardPinNumberFormField extends StatelessWidget {
  const CardPinNumberFormField({
    super.key,
    required this.controller,
  });

  final PaymentCardController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller.cardPassword,
        autofillHints: const [AutofillHints.creditCardSecurityCode],
        inputFormatters: [
          LengthLimitingTextInputFormatter(2),
          FilteringTextInputFormatter.digitsOnly,
        ],
        margin: getMargin(top: 4),
        filled: true,
        fillColor: Colors.white);
  }
}
