import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/accept_terms_screen/models/accept_terms_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AcceptTermsScreen.
///
/// This class manages the state of the AcceptTermsScreen, including the
/// current acceptTermsModelObj
class AcceptTermsController extends GetxController {
  TextEditingController cardnumbervalueController = TextEditingController();

  TextEditingController expirationdatevController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  Rx<AcceptTermsModel> acceptTermsModelObj = AcceptTermsModel().obs;

  Rx<bool> tf = false.obs;

  @override
  void onClose() {
    super.onClose();
    cardnumbervalueController.dispose();
    expirationdatevController.dispose();
    zipcodeController.dispose();
  }
}
