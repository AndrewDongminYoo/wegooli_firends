// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class PersonalInfoFormZipCodeController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static PersonalInfoFormZipCodeController get to =>
      GetIt.I.isRegistered<PersonalInfoFormZipCodeController>()
          ? GetIt.I.get<PersonalInfoFormZipCodeController>()
          : GetIt.I.registerSingleton(PersonalInfoFormZipCodeController());

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
