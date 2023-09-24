// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterCardButton extends StatelessWidget {
  const RegisterCardButton({
    super.key,
    required this.focusNode,
  });
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    final controller = PaymentCardController.to;
    return CustomElevatedButton(
        focusNode: focusNode,
        text: l10ns.register,
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: () async {
          final wasEmpty = controller.paymentCards.isEmpty;
          final isSuccess = await controller.registerCard();
          if (wasEmpty && isSuccess) {
            // 카드 최초 등록 완료
            await goRegisterSuccess();
          } else if (!wasEmpty) {
            // 카드 추가 등록 완료 후 카드 리스트로 이동
            await goRegisteredCardList();
          } else {
            // TODO: 재입력 요구/페이지 새로고침/or 건너뛰기 구현
            await signUpCreditCard();
          }
        });
  }
}
