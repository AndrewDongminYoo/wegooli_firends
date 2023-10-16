// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/signin_page_screen/models/signin_page_model.dart';

class SigninPageController extends GetxController {
  TextEditingController emailinputoneController = TextEditingController();

  TextEditingController passwordinputController = TextEditingController();

  Rx<SigninPageModel> signinPage = SigninPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailinputoneController.dispose();
    passwordinputController.dispose();
  }
}
