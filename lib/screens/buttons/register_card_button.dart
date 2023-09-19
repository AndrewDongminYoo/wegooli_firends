// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterCardButton extends StatelessWidget {
  const RegisterCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PaymentCardController.to;
    return CustomElevatedButton(
        text: l10ns.register,
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: () async {
          // TODO 카드 검증 필요함.
          await controller.registerCard();
          if (controller.paymentCards.isEmpty) {
            await goRegisterSuccess();
          } else {
            // TODO 카드 등록 로직
            goBack();
          }
        });
  }
}
