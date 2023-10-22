// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/verification_filled_screen/models/verification_filled_model.dart';

class VerificationFilledController extends GetxController {
  TextEditingController nameoneController = TextEditingController();
  TextEditingController phonenumberone = TextEditingController();

  Rx<VerificationFilledModel> identityVerificationFilled =
      VerificationFilledModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phonenumberone.dispose();
  }
}
