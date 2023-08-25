// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/data.dart';

/// A controller class for the LoginWithIdAndPasswordScreen.
///
/// This class manages the state of the LoginWithIdAndPasswordScreen, including the
/// current withIdAndPasswordModelObj
class LoginWithIdAndPasswordController extends GetxController {
  static LoginWithIdAndPasswordController get to =>
      Get.isRegistered<LoginWithIdAndPasswordController>()
          ? Get.find<LoginWithIdAndPasswordController>()
          : Get.put(LoginWithIdAndPasswordController());
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isAuthenticated = false.obs;
  RxBool isShowPassword = false.obs;
  Rx<UserDTO> currentUser = UserDTO().obs;
  RxList<TeamAccountModel> members = RxList<TeamAccountModel>([]);

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }
}
