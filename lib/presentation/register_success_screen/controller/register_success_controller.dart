import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/register_success_screen/models/register_success_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterSuccessScreen.
///
/// This class manages the state of the RegisterSuccessScreen, including the
/// current registerSuccessModelObj
class RegisterSuccessController extends GetxController {
  TextEditingController invitecodeprompController = TextEditingController();

  Rx<RegisterSuccessModel> registerSuccessModelObj = RegisterSuccessModel().obs;

  @override
  void onClose() {
    super.onClose();
    invitecodeprompController.dispose();
  }
}
