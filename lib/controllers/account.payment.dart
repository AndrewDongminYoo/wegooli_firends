// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PaymentCardController extends GetxController {
  final _service = PaymentCardService();
  static PaymentCardController get to =>
      Get.isRegistered<PaymentCardController>()
          ? Get.find<PaymentCardController>()
          : Get.put(PaymentCardController());

  TextEditingController creditCardId = TextEditingController();
  TextEditingController expirationDT = TextEditingController();
  TextEditingController birthNumber6 = TextEditingController();
  TextEditingController cardPassword = TextEditingController();
  Rx<String> selected = ''.obs;

  final RxList<PaymentCardModel> _paymentCards = <PaymentCardModel>[].obs;
  RxList<PaymentCardModel> get paymentCards => _paymentCards;

  @override
  void onClose() {
    super.onClose();
    creditCardId.dispose();
    expirationDT.dispose();
    birthNumber6.dispose();
    cardPassword.dispose();
  }

  Future<void> retrieveCards() async {
    final userController = UserController.to;
    final data = await _service.loadCreditCardList(userController.currentUser);
    _paymentCards.clear();
    _paymentCards.addAll(data);
  }

  Future<void> registerCard() async {
    await _service
        .registerCard(creditCardId.text, cardPassword.text, birthNumber6.text,
            expirationDT.text.substring(0, 2), expirationDT.text.substring(2))
        .then((result) {
      if (result != 'true') {
        Get.dialog(const AlertDialog(
          title: Text('결제수단 등록'),
          content: Text('결제수단 등록에 실패하였습니다.\n 다시 확인해주세요.'),
          actions: <Widget>[
            TextButton(
              onPressed: goBack,
              child: Text('예'),
            ),
          ],
        ));
      } else {
        goRegisterSuccess();
      }
    });
  }
}
