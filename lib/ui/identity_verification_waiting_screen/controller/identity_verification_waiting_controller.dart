// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class VerificationWaitingController extends GetxController {
  TextEditingController realName = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController phoneNum = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    realName.dispose();
    birthday.dispose();
    phoneNum.dispose();
  }
}
