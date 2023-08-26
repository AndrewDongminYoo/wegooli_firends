import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/register_zip_code_screen/models/register_zip_code_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterZipCodeScreen.
///
/// This class manages the state of the RegisterZipCodeScreen, including the
/// current registerZipCodeModelObj
class RegisterZipCodeController extends GetxController {
  TextEditingController zipcodeoneController = TextEditingController();

  TextEditingController defaultaddressController = TextEditingController();

  TextEditingController detailedaddressController = TextEditingController();

  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordcomboController = TextEditingController();

  TextEditingController passwordreenterController = TextEditingController();

  TextEditingController nicknameinputController = TextEditingController();

  Rx<RegisterZipCodeModel> registerZipCodeModelObj = RegisterZipCodeModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    zipcodeoneController.dispose();
    defaultaddressController.dispose();
    detailedaddressController.dispose();
    emailaddressController.dispose();
    passwordcomboController.dispose();
    passwordreenterController.dispose();
    nicknameinputController.dispose();
  }
}
