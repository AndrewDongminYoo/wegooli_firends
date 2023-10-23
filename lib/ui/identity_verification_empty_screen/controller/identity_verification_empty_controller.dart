// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class VerificationEmptyController extends GetxController {
  TextEditingController nameinputone = TextEditingController();
  TextEditingController phonenumberone = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    nameinputone.dispose();
    phonenumberone.dispose();
  }
}
