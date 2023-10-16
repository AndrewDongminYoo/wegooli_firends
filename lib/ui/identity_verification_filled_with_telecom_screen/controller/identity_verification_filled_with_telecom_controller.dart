import '/core/app_export.dart';
import '/ui/identity_verification_filled_with_telecom_screen/models/identity_verification_filled_with_telecom_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IdentityVerificationFilledWithTelecomScreen.
///
/// This class manages the state of the IdentityVerificationFilledWithTelecomScreen, including the
/// current identityVerificationFilledWithTelecomModelObj
class IdentityVerificationFilledWithTelecomController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  Rx<IdentityVerificationFilledWithTelecomModel>
      identityVerificationFilledWithTelecomModelObj =
      IdentityVerificationFilledWithTelecomModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phonenumberoneController.dispose();
  }
}
