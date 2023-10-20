// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/identity_verification_waiting_with_telecom_screen/models/identity_verification_waiting_with_telecom_model.dart';

class VerificationWaitingController extends GetxController {
  TextEditingController nameoneController = TextEditingController();
  TextEditingController phonenumberone = TextEditingController();

  Rx<VerificationWaitingModel> identityVerificationWaiting =
      VerificationWaitingModel().obs;
  DropdownData? choice;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phonenumberone.dispose();
  }

  void onSelected(dynamic value) {
    for (final element in identityVerificationWaiting.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    identityVerificationWaiting.value.choices.refresh();
  }
}
