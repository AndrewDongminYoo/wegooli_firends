// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class SigninPageController extends GetxController {
  TextEditingController loginName = TextEditingController();
  TextEditingController loginPass = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    loginName.dispose();
    loginPass.dispose();
  }
}
