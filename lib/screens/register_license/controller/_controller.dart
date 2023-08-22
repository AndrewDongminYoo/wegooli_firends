// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the RegisterLicensePageScreen.
///
/// This class manages the state of the RegisterLicensePageScreen, including the
/// current registerLicensePageModelObj
class RegisterLicensePageController extends GetxController {
  TextEditingController frontNumberController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController backNumberController = TextEditingController();

  Rx<RegisterLicensePageModel> registerLicensePageModelObj =
      RegisterLicensePageModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onClose() {
    super.onClose();
    frontNumberController.dispose();
    expDateController.dispose();
    backNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in registerLicensePageModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerLicensePageModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in registerLicensePageModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerLicensePageModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element
        in registerLicensePageModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerLicensePageModelObj.value.dropdownItemList2.refresh();
  }
}
