// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_filled_with_telecom_screen/models/identity_verification_filled_with_telecom_model.dart';

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
