// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/personal_info_form_zip_code_screen/models/personal_info_form_zip_code_model.dart';

class PersonalInfoFormZipCodeController extends GetxController {
  TextEditingController postalcodeone = TextEditingController();
  TextEditingController defaultaddress = TextEditingController();
  TextEditingController detailedaddress = TextEditingController();
  TextEditingController emailaddress = TextEditingController();
  TextEditingController eyecrossedout = TextEditingController();
  TextEditingController passwordreentry = TextEditingController();
  TextEditingController nicknameinput = TextEditingController();

  Rx<PersonalInfoFormZipCodeModel> personalInfoFormZipCode =
      PersonalInfoFormZipCodeModel().obs;

  @override
  void onClose() {
    super.onClose();
    postalcodeone.dispose();
    defaultaddress.dispose();
    detailedaddress.dispose();
    emailaddress.dispose();
    eyecrossedout.dispose();
    passwordreentry.dispose();
    nicknameinput.dispose();
  }
}
