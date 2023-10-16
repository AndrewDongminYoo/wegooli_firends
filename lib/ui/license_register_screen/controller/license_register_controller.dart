import '/core/app_export.dart';
import '/ui/license_register_screen/models/license_register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LicenseRegisterScreen.
///
/// This class manages the state of the LicenseRegisterScreen, including the
/// current licenseRegisterModelObj
class LicenseRegisterController extends GetxController {
  TextEditingController tfController = TextEditingController();

  TextEditingController validityperiodiController = TextEditingController();

  TextEditingController oneController = TextEditingController();

  Rx<LicenseRegisterModel> licenseRegisterModelObj = LicenseRegisterModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    tfController.dispose();
    validityperiodiController.dispose();
    oneController.dispose();
  }

  void onSelected(dynamic value) {
    for (final element
        in licenseRegisterModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    licenseRegisterModelObj.value.dropdownItemList.refresh();
  }

  void onSelected1(dynamic value) {
    for (final element
        in licenseRegisterModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    licenseRegisterModelObj.value.dropdownItemList1.refresh();
  }
}
