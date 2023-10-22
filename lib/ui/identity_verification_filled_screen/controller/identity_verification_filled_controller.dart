// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class VerificationFilledController extends GetxController {
  TextEditingController nameoneController = TextEditingController();
  TextEditingController phoneinfoone = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phoneinfoone.dispose();
  }
}
