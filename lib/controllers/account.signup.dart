// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class RegisterSuccessController extends GetxController {
  static RegisterSuccessController get to =>
      Get.isRegistered<RegisterSuccessController>()
          ? Get.find<RegisterSuccessController>()
          : Get.put(RegisterSuccessController());
  TextEditingController inviteCode = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    inviteCode.dispose();
  }
}
