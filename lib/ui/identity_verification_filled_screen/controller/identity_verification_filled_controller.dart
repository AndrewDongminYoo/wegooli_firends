// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_filled_screen/models/identity_verification_filled_model.dart';

class VerificationFilledController extends GetxController {
  TextEditingController nameoneController = TextEditingController();
  TextEditingController phoneinfoone = TextEditingController();

  Rx<VerificationFilledModel> identityVerificationFilled =
      VerificationFilledModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phoneinfoone.dispose();
  }
}
