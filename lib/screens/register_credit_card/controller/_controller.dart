// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the RegisterCreditCardScreen.
///
/// This class manages the state of the RegisterCreditCardScreen, including the
/// current registerCreditCardModelObj
class PaymentCardController extends GetxController {
  static PaymentCardController get to =>
      Get.isRegistered<PaymentCardController>()
          ? Get.find<PaymentCardController>()
          : Get.put(PaymentCardController());
  TextEditingController cardNumController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController firstsixdigitsoController = TextEditingController();
  TextEditingController grouptwentynineController = TextEditingController();
  Rx<String> radioGroup = "".obs;
  Rx<String> radioGroup1 = "".obs;
  Rx<String> selected = "".obs;

  @override
  void onClose() {
    super.onClose();
    cardNumController.dispose();
    expDateController.dispose();
    firstsixdigitsoController.dispose();
    grouptwentynineController.dispose();
  }
}
