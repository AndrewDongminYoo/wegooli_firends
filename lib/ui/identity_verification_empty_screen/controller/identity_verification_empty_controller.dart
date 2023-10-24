// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class VerificationEmptyController extends GetxController {
  TextEditingController realname = TextEditingController();
  TextEditingController phonenum = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    realname.dispose();
    phonenum.dispose();
  }
}
