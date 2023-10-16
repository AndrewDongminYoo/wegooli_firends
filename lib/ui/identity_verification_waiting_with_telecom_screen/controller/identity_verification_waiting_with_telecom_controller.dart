import '/core/app_export.dart';
import '/ui/identity_verification_waiting_with_telecom_screen/models/identity_verification_waiting_with_telecom_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IdentityVerificationWaitingWithTelecomScreen.
///
/// This class manages the state of the IdentityVerificationWaitingWithTelecomScreen, including the
/// current identityVerificationWaitingWithTelecomModelObj
class IdentityVerificationWaitingWithTelecomController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  Rx<IdentityVerificationWaitingWithTelecomModel>
      identityVerificationWaitingWithTelecomModelObj =
      IdentityVerificationWaitingWithTelecomModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    phonenumberoneController.dispose();
  }

  void onSelected(dynamic value) {
    for (final element in identityVerificationWaitingWithTelecomModelObj
        .value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    identityVerificationWaitingWithTelecomModelObj.value.dropdownItemList
        .refresh();
  }
}
