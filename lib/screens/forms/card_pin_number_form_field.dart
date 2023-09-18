// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class CardPinNumberFormField extends StatelessWidget {
  const CardPinNumberFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: controller,
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
