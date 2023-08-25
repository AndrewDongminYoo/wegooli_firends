// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the RegisterCreditCardScreen.
///
/// This class manages the state of the RegisterCreditCardScreen, including the
/// current registerCreditCardModelObj
class RegisterCreditCardController extends GetxController {
  static RegisterCreditCardController get to =>
      Get.isRegistered<RegisterCreditCardController>()
          ? Get.find<RegisterCreditCardController>()
          : Get.put(RegisterCreditCardController());
  TextEditingController cardNumController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController firstsixdigitsoController = TextEditingController();
  TextEditingController grouptwentynineController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    cardNumController.dispose();
    expDateController.dispose();
    firstsixdigitsoController.dispose();
    grouptwentynineController.dispose();
  }
}
