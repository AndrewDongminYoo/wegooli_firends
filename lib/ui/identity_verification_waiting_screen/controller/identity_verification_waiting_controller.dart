// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class VerificationWaitingController extends GetxController {
  TextEditingController realname = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController phonenum = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    realname.dispose();
    birthday.dispose();
    phonenum.dispose();
  }
}
