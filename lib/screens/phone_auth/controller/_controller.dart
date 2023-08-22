// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the LoginValidatePhoneAuthScreen.
///
/// This class manages the state of the LoginValidatePhoneAuthScreen, including the
/// current validatePhoneAuthModelObj
class ValidatePhoneController extends GetxController {
  TextEditingController namePromptController = TextEditingController();
  TextEditingController ageFormatController = TextEditingController();
  TextEditingController languageController = TextEditingController();
  TextEditingController phoneProviderController = TextEditingController();

  Rx<LoginValidatePhoneAuthModel> validatePhoneAuthModelObj =
      LoginValidatePhoneAuthModel().obs;

  @override
  void onClose() {
    super.onClose();
    namePromptController.dispose();
    ageFormatController.dispose();
    languageController.dispose();
    phoneProviderController.dispose();
  }
}
