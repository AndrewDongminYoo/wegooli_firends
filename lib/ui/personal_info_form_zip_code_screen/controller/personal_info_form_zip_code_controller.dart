// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class PersonalInfoFormZipCodeController extends GetxController {
  TextEditingController postCode = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController usermail = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passpass = TextEditingController();
  TextEditingController nickname = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    postCode.dispose();
    address1.dispose();
    address2.dispose();
    usermail.dispose();
    password.dispose();
    passpass.dispose();
    nickname.dispose();
  }
}
