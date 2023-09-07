// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CreditCardFormField extends StatelessWidget {
  const CreditCardFormField({
    super.key,
    required this.controller,
  });

  final PaymentCardController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
        controller: controller.creditCardId,
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        inputFormatters: <TextInputFormatter>[
          SeperateTextFormatter(sample: 'XXXX XXXX XXXX XXXX', separator: ' '),
          LengthLimitingTextInputFormatter(19),
          FilteringTextInputFormatter.allow(r'[0-9 ]'),
        ],
        hintText: "0000\t0000\t0000\t0000",
        textInputAction: TextInputAction.next,
        filled: true,
        fillColor: theme.colorScheme.onPrimaryContainer));
  }
}
