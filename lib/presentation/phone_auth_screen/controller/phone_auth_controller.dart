import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/phone_auth_screen/models/phone_auth_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PhoneAuthScreen.
///
/// This class manages the state of the PhoneAuthScreen, including the
/// current phoneAuthModelObj
class PhoneAuthController extends GetxController {
  TextEditingController nameinputoneController = TextEditingController();

  TextEditingController birthdateoneController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController phonenumberinpuController = TextEditingController();

  Rx<PhoneAuthModel> phoneAuthModelObj = PhoneAuthModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    nameinputoneController.dispose();
    birthdateoneController.dispose();
    edittextController.dispose();
    phonenumberoneController.dispose();
    phonenumberinpuController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in phoneAuthModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    phoneAuthModelObj.value.dropdownItemList.refresh();
  }
}
