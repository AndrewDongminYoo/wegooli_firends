// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/license_register_screen/models/license_register_model.dart';

class LicenseRegisterController extends GetxController {
  TextEditingController tfController = TextEditingController();
  TextEditingController validityperiodi = TextEditingController();
  TextEditingController oneController = TextEditingController();

  Rx<LicenseRegisterModel> licenseRegister = LicenseRegisterModel().obs;
  DropdownData? choice;
  DropdownData? choice1;

  @override
  void onClose() {
    super.onClose();
    tfController.dispose();
    validityperiodi.dispose();
    oneController.dispose();
  }

  void onSelected(dynamic value) {
    for (final element in licenseRegister.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    licenseRegister.value.choices.refresh();
  }

  void onSelected1(dynamic value) {
    for (final element in licenseRegister.value.choices1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    licenseRegister.value.choices1.refresh();
  }
}
