import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/personal_info_screen/models/personal_info_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PersonalInfoScreen.
///
/// This class manages the state of the PersonalInfoScreen, including the
/// current personalInfoModelObj
class PersonalInfoController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController currentnicknameController = TextEditingController();

  TextEditingController tfController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController addresssearchController = TextEditingController();

  TextEditingController oneController = TextEditingController();

  TextEditingController twoController = TextEditingController();

  TextEditingController eyecrossedoutController = TextEditingController();

  TextEditingController passwordreenterController = TextEditingController();

  Rx<PersonalInfoModel> personalInfoModelObj = PersonalInfoModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    currentnicknameController.dispose();
    tfController.dispose();
    zipcodeController.dispose();
    addresssearchController.dispose();
    oneController.dispose();
    twoController.dispose();
    eyecrossedoutController.dispose();
    passwordreenterController.dispose();
  }
}
