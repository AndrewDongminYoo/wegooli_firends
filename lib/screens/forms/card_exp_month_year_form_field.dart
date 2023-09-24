// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:credit_card_validator/credit_card_validator.dart';

// 🌎 Project imports:
import '/lib.dart';

class CardExpMonthYearFormField extends StatelessWidget {
  const CardExpMonthYearFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PaymentCardController.to;
    return CustomTextFormField(
        onChanged: (String value) {
          if (value.isNotEmpty) {
            controller.cardExpMonth = value.split('/')[0];
            controller.cardExpYear = value.split('/')[1];
            print('20${controller.cardExpYear}년 ${controller.cardExpMonth}월');
          }
        },
        margin: getMargin(top: 4),
        contentPadding: getPadding(left: 12, top: 14, right: 12, bottom: 14),
        textStyle: CustomTextStyles.bodyLargeGray50003,
        hintStyle: CustomTextStyles.bodyLargeGray50003,
        hintText: 'MM/YY',
        autofillHints: const [AutofillHints.creditCardExpirationDate],
        validator: (String? value) {
          if (value.isNullOrEmpty) {
            return '카드 유효기간을 입력해주세요.';
          } else {
            final valid = CreditCardValidator().validateExpDate(value!);
            if (!valid.isValid) {
              return '카드 유효기간이 올바르지 않습니다.';
            } else {
              return null;
            }
          }
        },
        inputFormatters: const <TextInputFormatter>[
          SeperateTextFormatter(sample: 'XX/XX', separator: '/'),
        ],
        filled: true,
        fillColor: Colors.white);
  }
}
