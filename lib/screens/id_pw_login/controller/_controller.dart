// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the LoginWithIdAndPasswordScreen.
///
/// This class manages the state of the LoginWithIdAndPasswordScreen, including the
/// current withIdAndPasswordModelObj
class LoginWithIdAndPasswordController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isAuthenticated = false.obs;
  Rx<LoginWithIdAndPasswordModel> withIdAndPasswordModelObj =
      LoginWithIdAndPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }
}
