// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class TermsOfUseController extends GetxController {
  TextEditingController nameinputone = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    nameinputone.dispose();
  }
}
