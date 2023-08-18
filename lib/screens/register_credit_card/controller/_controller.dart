// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/register_credit_card/models/_model.dart';

/// A controller class for the LoginRegisterCreditCardScreen.
///
/// This class manages the state of the LoginRegisterCreditCardScreen, including the
/// current registerCreditCardModelObj
class RegisterCreditCardController extends GetxController {
  TextEditingController cardNumController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController firstsixdigitsoController = TextEditingController();
  TextEditingController grouptwentynineController = TextEditingController();

  Rx<LoginRegisterCreditCardModel> registerCreditCardModelObj =
      LoginRegisterCreditCardModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumController.dispose();
    expDateController.dispose();
    firstsixdigitsoController.dispose();
    grouptwentynineController.dispose();
  }
}