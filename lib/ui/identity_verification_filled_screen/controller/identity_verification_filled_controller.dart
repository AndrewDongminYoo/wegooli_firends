// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_filled_screen/models/identity_verification_filled_model.dart';

class IdentityVerificationFilledController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController phoneinfooneController = TextEditingController();

  Rx<IdentityVerificationFilledModel> identityVerificationFilled =
      IdentityVerificationFilledModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phoneinfooneController.dispose();
  }
}
