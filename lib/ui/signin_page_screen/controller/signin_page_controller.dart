// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/signin_page_screen/models/signin_page_model.dart';

/// A controller class for the SigninPageScreen.
///
/// This class manages the state of the SigninPageScreen, including the
/// current signinPageModelObj
class SigninPageController extends GetxController {
  TextEditingController emailinputoneController = TextEditingController();

  TextEditingController passwordinputController = TextEditingController();

  Rx<SigninPageModel> signinPageModelObj = SigninPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailinputoneController.dispose();
    passwordinputController.dispose();
  }
}
