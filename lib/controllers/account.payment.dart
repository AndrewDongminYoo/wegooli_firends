// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class PaymentCardController extends GetxController {
  final _service = PaymentCardService();
  // ignore: prefer_constructors_over_static_methods
  static PaymentCardController get to =>
      Get.isRegistered<PaymentCardController>()
          ? Get.find<PaymentCardController>()
          : Get.put(PaymentCardController());

  TextEditingController creditCardNum = TextEditingController();
  TextEditingController creditCardPin = TextEditingController();
  TextEditingController creditCardExp = TextEditingController();
  TextEditingController birthDay = TextEditingController();
  Rx<String> selected = ''.obs;

  final RxList<PaymentCardModel> _paymentCards = <PaymentCardModel>[].obs;
  RxList<PaymentCardModel> get paymentCards => _paymentCards;

  @override
  void onClose() {
    super.onClose();
    creditCardNum.dispose();
    creditCardExp.dispose();
    birthDay.dispose();
    creditCardPin.dispose();
  }

  Future<void> retrieveCards() async {
    final userController = UserController.to;
    final data = await _service.loadCreditCardList(userController.currentUser);
    _paymentCards(data);
  }

  Future<void> registerCard() async {
    await _service
        .registerCard(creditCardNum.text, creditCardPin.text, birthDay.text,
            creditCardExp.text.substring(0, 2), creditCardExp.text.substring(2))
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
