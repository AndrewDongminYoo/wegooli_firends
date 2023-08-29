import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/modify_profile_screen/models/modify_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ModifyProfileScreen.
///
/// This class manages the state of the ModifyProfileScreen, including the
/// current modifyProfileModelObj
class ModifyProfileController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController currentnicknameController = TextEditingController();

  TextEditingController tfController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController addresssearchController = TextEditingController();

  TextEditingController oneController = TextEditingController();

  TextEditingController twoController = TextEditingController();

  TextEditingController eyecrossedoutController = TextEditingController();

  TextEditingController passwordreenterController = TextEditingController();

  Rx<ModifyProfileModel> modifyProfileModelObj = ModifyProfileModel().obs;

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
