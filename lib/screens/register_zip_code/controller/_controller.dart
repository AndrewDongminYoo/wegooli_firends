// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the RegisterZipCodeScreen.
///
/// This class manages the state of the RegisterZipCodeScreen, including the
/// current registerZipCodeModelObj
class RegisterZipCodeController extends GetxController {
  static RegisterZipCodeController get to =>
      Get.isRegistered<RegisterZipCodeController>()
          ? Get.find<RegisterZipCodeController>()
          : Get.put(RegisterZipCodeController());
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController primaryAddressController = TextEditingController();
  TextEditingController detailedAddressController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  // Rx<RegisterZipCodeModel> registerZipCodeModelObj = RegisterZipCodeModel().obs;
  RxBool isShowPassword = false.obs;
  RxBool isShowConfirmPassword = false.obs;

  bool get isValid =>
      postalCodeController.text.length > 0 &&
      primaryAddressController.text.length > 0 &&
      detailedAddressController.text.length > 0 &&
      emailAddressController.text.isEmail &&
      passwordController.text.length > 0 &&
      nicknameController.text.length > 0 &&
      confirmPasswordController.text.length > 0 &&
      (passwordController.text == confirmPasswordController.text);

  @override
  void onClose() {
    super.onClose();
    postalCodeController.dispose();
    primaryAddressController.dispose();
    detailedAddressController.dispose();
    emailAddressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nicknameController.dispose();
  }
}
