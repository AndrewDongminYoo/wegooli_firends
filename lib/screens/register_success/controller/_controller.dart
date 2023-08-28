// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the RegisterSuccessPageScreen.
///
/// This class manages the state of the RegisterSuccessPageScreen, including the
/// current registerSuccessPageModelObj
class RegisterSuccessController extends GetxController {
  static RegisterSuccessController get to =>
      Get.isRegistered<RegisterSuccessController>()
          ? Get.find<RegisterSuccessController>()
          : Get.put(RegisterSuccessController());
  TextEditingController codeController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    codeController.dispose();
  }
}
