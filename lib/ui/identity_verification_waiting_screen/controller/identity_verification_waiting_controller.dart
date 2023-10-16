// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/identity_verification_waiting_screen/models/identity_verification_waiting_model.dart';

class IdentityVerificationWaitingController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  Rx<IdentityVerificationWaitingModel> identityVerificationWaiting =
      IdentityVerificationWaitingModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    zipcodeController.dispose();
    phonenumberoneController.dispose();
  }
}
