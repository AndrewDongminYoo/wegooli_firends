// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:credit_card_validator/credit_card_validator.dart';

// 🌎 Project imports:
import '/lib.dart';

class CreditCardFormField extends StatelessWidget {
  const CreditCardFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PaymentCardController.to;
    return CustomTextFormField(
        initialValue: controller.creditCardNum,
        onChanged: (String value) {
          if (value.isNotEmpty && value.length >= 16) {
            controller.creditCardNum = value;
          }
        },
        validator: (String? value) {
          if (value.isNullOrEmpty) {
            return '카드 번호 16자리를 입력해주세요.';
          } else {
            final valid = CreditCardValidator().validateCCNum(value!);
            if (!valid.isValid) {
              console.info('why its not valid?: ${valid.message}');
              console.info('potentially valid?: ${valid.isPotentiallyValid}');
              return '카드 번호가 올바르지 않습니다.';
            } else {
              console.info('The creditCardType: ${valid.ccType}');
              return null;
            }
          }
        },
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        autofillHints: const [AutofillHints.creditCardNumber],
        inputFormatters: const <TextInputFormatter>[
          SeperateTextFormatter(sample: 'XXXX XXXX XXXX XXXX', separator: ' '),
        ],
        hintText: '0000\t0000\t0000\t0000',
        filled: true,
        fillColor: Colors.white);
  }
}
