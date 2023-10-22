// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class VerificationWaitingController extends GetxController {
  TextEditingController nameoneController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController phonenumberone = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    zipcodeController.dispose();
    phonenumberone.dispose();
  }
}
