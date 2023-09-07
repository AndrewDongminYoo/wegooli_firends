// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PaymentCardController extends GetxController {
  final wegooli = WegooliFriends.client;
  static PaymentCardController get to =>
      Get.isRegistered<PaymentCardController>()
          ? Get.find<PaymentCardController>()
          : Get.put(PaymentCardController());

  TextEditingController creditCardId = TextEditingController();
  TextEditingController expirationDT = TextEditingController();
  TextEditingController birthNumber6 = TextEditingController();
  TextEditingController cardPassword = TextEditingController();
  Rx<String> selected = "".obs;

  bool get cardInputSucceed => false;
  final userController = UserController.to;
  String? token;

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
    if (userController.currentUser.value.memberSeq != null) {
      final paymentCardControllerApi = wegooli.getPaymentCardControllerApi();
      final response = await paymentCardControllerApi.selectPaymentCardList(
          memberSeq: userController.currentUser.value.memberSeq!);
      print('response => ${response.data}');
      if (response.data != null) {
        _paymentCards.clear();
        _paymentCards.addAll(response.data!.toList());
      }
    }
  }

  Future<String> registerCard() async {
    PaymentCardRequest paymentCardRequest = PaymentCardRequest(
        cardNumber: creditCardId.text,
        password: cardPassword.text,
        rrn: birthNumber6.text,
        expirationMonth: expirationDT.text.substring(0, 2),
        expirationYear: expirationDT.text.substring(2));

    final response = await wegooli
        .getPaymentCardControllerApi()
        .insertPaymentCard(paymentCardRequest: paymentCardRequest);
    print('response.data : ${response.data}');
    return response.data ?? 'false';
  }
}
