// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_filled_screen/models/identity_verification_filled_model.dart';

/// A controller class for the IdentityVerificationFilledScreen.
///
/// This class manages the state of the IdentityVerificationFilledScreen, including the
/// current identityVerificationFilledModelObj
class IdentityVerificationFilledController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController phoneinfooneController = TextEditingController();

  Rx<IdentityVerificationFilledModel> identityVerificationFilledModelObj =
      IdentityVerificationFilledModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phoneinfooneController.dispose();
  }
}
