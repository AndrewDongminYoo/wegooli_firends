// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/screens/register_credit_card/models/_model.dart';

/// A controller class for the RegisterCreditCardScreen.
///
/// This class manages the state of the RegisterCreditCardScreen, including the
/// current registerCreditCardModelObj
class RegisterCreditCardController extends GetxController {
  TextEditingController cardNumController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController firstsixdigitsoController = TextEditingController();
  TextEditingController grouptwentynineController = TextEditingController();

  Rx<RegisterCreditCardModel> registerCreditCardModelObj =
      RegisterCreditCardModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumController.dispose();
    expDateController.dispose();
    firstsixdigitsoController.dispose();
    grouptwentynineController.dispose();
  }
}
