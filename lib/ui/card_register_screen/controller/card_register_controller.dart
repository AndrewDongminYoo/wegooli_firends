// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/card_register_screen/models/card_register_model.dart';

class CardRegisterController extends GetxController {
  TextEditingController cardnumbervalueController = TextEditingController();

  TextEditingController expirationdatevController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  Rx<CardRegisterModel> cardRegister = CardRegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardnumbervalueController.dispose();
    expirationdatevController.dispose();
    zipcodeController.dispose();
    edittextController.dispose();
  }
}
