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
  String _token = '';
  String get token {
    _token = PrefUtils.storage.getToken();
    if (_token.isEmpty) {
      return _token;
    } else {
      // userController.currentUser.value.memberSeq;
      return _token;
    }
  }
  set token(String value) {
    _token = value;
  }

  RxList<PaymentCardModel> _paymentCards = <PaymentCardModel>[].obs;
  RxList<PaymentCardModel> get paymentCards => _paymentCards;
  // Rx<PaymentCardModel> paymentCard = PaymentCardModel().obs;
  // RxList<PaymentCardModel> paymentCards = RxList.of([PaymentCardModel()]);
  // RxList<PaymentCardModel> get paymentCards => _paymentCards.obs;

  @override
  void onInit() async {
    super.onInit();
  }

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
}
