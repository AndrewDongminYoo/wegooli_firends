// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class CardRegisterController extends GetxController {
  TextEditingController cardNum = TextEditingController();
  TextEditingController cardExp = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController cardPin = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    cardNum.dispose();
    cardExp.dispose();
    birthday.dispose();
    cardPin.dispose();
  }
}
