// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_waiting_screen/models/identity_verification_waiting_model.dart';

class VerificationWaitingController extends GetxController {
  TextEditingController nameoneController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController phonenumberone = TextEditingController();

  Rx<VerificationWaitingModel> identityVerificationWaiting =
      VerificationWaitingModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    zipcodeController.dispose();
    phonenumberone.dispose();
  }
}
