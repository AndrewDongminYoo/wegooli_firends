import '/core/app_export.dart';
import '/ui/identity_verification_waiting_screen/models/identity_verification_waiting_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IdentityVerificationWaitingScreen.
///
/// This class manages the state of the IdentityVerificationWaitingScreen, including the
/// current identityVerificationWaitingModelObj
class IdentityVerificationWaitingController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  Rx<IdentityVerificationWaitingModel> identityVerificationWaitingModelObj =
      IdentityVerificationWaitingModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    zipcodeController.dispose();
    phonenumberoneController.dispose();
  }
}
