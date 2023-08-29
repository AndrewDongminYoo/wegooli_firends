import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/id_pw_login_screen/models/id_pw_login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IdPwLoginScreen.
///
/// This class manages the state of the IdPwLoginScreen, including the
/// current idPwLoginModelObj
class IdPwLoginController extends GetxController {
  TextEditingController tfController = TextEditingController();

  TextEditingController oneController = TextEditingController();

  Rx<IdPwLoginModel> idPwLoginModelObj = IdPwLoginModel().obs;

  @override
  void onClose() {
    super.onClose();
    tfController.dispose();
    oneController.dispose();
  }
}
