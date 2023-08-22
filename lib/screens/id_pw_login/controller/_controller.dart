// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

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
