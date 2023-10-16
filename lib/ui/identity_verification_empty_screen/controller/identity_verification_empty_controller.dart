// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_empty_screen/models/identity_verification_empty_model.dart';

/// A controller class for the IdentityVerificationEmptyScreen.
///
/// This class manages the state of the IdentityVerificationEmptyScreen, including the
/// current identityVerificationEmptyModelObj
class IdentityVerificationEmptyController extends GetxController {
  TextEditingController nameinputoneController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  Rx<IdentityVerificationEmptyModel> identityVerificationEmptyModelObj =
      IdentityVerificationEmptyModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameinputoneController.dispose();
    phonenumberoneController.dispose();
  }
}
