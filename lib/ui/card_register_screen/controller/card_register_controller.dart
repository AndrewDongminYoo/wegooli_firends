// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class CardRegisterController extends GetxController {
  TextEditingController cardnumbervalue = TextEditingController();
  TextEditingController expirationdatev = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController edittextController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    cardnumbervalue.dispose();
    expirationdatev.dispose();
    zipcodeController.dispose();
    edittextController.dispose();
  }
}
