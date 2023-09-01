// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class PaymentCardController extends GetxController {
  static PaymentCardController get to =>
      Get.isRegistered<PaymentCardController>()
          ? Get.find<PaymentCardController>()
          : Get.put(PaymentCardController());
  TextEditingController creditCardId = TextEditingController();
  TextEditingController expirationDT = TextEditingController();
  TextEditingController birthNumber6 = TextEditingController();
  TextEditingController cardPassword = TextEditingController();
  Rx<String> radioGroup = "".obs;
  Rx<String> radioGroup1 = "".obs;
  Rx<String> selected = "".obs;

  final api = WegooliFriends.client.getPaymentCardControllerApi();
  bool get cardInputSucceed => false;
  // api.insertPaymentCard();
  // api.selectPaymentCard();
  // api.selectPaymentCardList();
  // api.updatePaymentCard();

  @override
  void onClose() {
    super.onClose();
    creditCardId.dispose();
    expirationDT.dispose();
    birthNumber6.dispose();
    cardPassword.dispose();
  }
}
