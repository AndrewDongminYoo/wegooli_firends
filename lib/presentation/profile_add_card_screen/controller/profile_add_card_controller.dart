import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/profile_add_card_screen/models/profile_add_card_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileAddCardScreen.
///
/// This class manages the state of the ProfileAddCardScreen, including the
/// current profileAddCardModelObj
class ProfileAddCardController extends GetxController {
  TextEditingController cardnumberoneController = TextEditingController();

  TextEditingController expirationdateController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  Rx<ProfileAddCardModel> profileAddCardModelObj = ProfileAddCardModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardnumberoneController.dispose();
    expirationdateController.dispose();
    zipcodeController.dispose();
    edittextController.dispose();
  }
}
