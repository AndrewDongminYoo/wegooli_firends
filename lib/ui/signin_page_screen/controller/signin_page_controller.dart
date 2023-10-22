// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class SigninPageController extends GetxController {
  TextEditingController emailinputone = TextEditingController();
  TextEditingController passwordinput = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    emailinputone.dispose();
    passwordinput.dispose();
  }
}
