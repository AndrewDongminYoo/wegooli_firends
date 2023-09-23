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

  String? creditCardNum;
  String? creditCardPin;
  String? cardExpMonth;
  String? cardExpYear;
  String? birthDay;
  Rx<String> selected = ''.obs;

  final RxList<PaymentCardModel> _paymentCards = <PaymentCardModel>[].obs;
  RxList<PaymentCardModel> get paymentCards => _paymentCards;

  Future<void> retrieveCards() async {
    final data = await _service.loadCreditCardList(goolier);
    _paymentCards(data);
  }

  Future<bool> registerCard() async {
    final result = await _service.registerCard(
      creditCardNum!,
      creditCardPin!,
      birthDay!,
      cardExpMonth!,
      cardExpYear!,
    );
    if (result != 'true') {
      await Get.dialog(const AlertDialog(
        title: Text('결제수단 등록'),
        content: Text('결제수단 등록에 실패하였습니다.\n 다시 확인해주세요.'),
        actions: <Widget>[
          TextButton(onPressed: goBack, child: Text('예')),
        ],
      ));
      return false;
    } else {
      await retrieveCards();
      return PrefUtils.saveDefaultCard(paymentCards.first);
    }
  }
}
