// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/personal_info_form_zip_code_screen/models/personal_info_form_zip_code_model.dart';

class PersonalInfoFormZipCodeController extends GetxController {
  TextEditingController postalcodeoneController = TextEditingController();

  TextEditingController defaultaddressController = TextEditingController();

  TextEditingController detailedaddressController = TextEditingController();

  TextEditingController emailaddressController = TextEditingController();

  TextEditingController eyecrossedoutController = TextEditingController();

  TextEditingController passwordreentryController = TextEditingController();

  TextEditingController nicknameinputController = TextEditingController();

  Rx<PersonalInfoFormZipCodeModel> personalInfoFormZipCode =
      PersonalInfoFormZipCodeModel().obs;

  @override
  void onClose() {
    super.onClose();
    postalcodeoneController.dispose();
    defaultaddressController.dispose();
    detailedaddressController.dispose();
    emailaddressController.dispose();
    eyecrossedoutController.dispose();
    passwordreentryController.dispose();
    nicknameinputController.dispose();
  }
}
