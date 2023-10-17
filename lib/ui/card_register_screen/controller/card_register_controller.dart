// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/card_register_screen/models/card_register_model.dart';

class CardRegisterController extends GetxController {
  TextEditingController cardnumbervalue = TextEditingController();
  TextEditingController expirationdatev = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController edittextController = TextEditingController();

  Rx<CardRegisterModel> cardRegister = CardRegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardnumbervalue.dispose();
    expirationdatev.dispose();
    zipcodeController.dispose();
    edittextController.dispose();
  }
}
