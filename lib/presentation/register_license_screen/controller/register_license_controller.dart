import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/register_license_screen/models/register_license_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterLicenseScreen.
///
/// This class manages the state of the RegisterLicenseScreen, including the
/// current registerLicenseModelObj
class RegisterLicenseController extends GetxController {
  TextEditingController licensenumberController = TextEditingController();

  TextEditingController expirationdateController = TextEditingController();

  TextEditingController licensenumberController1 = TextEditingController();

  Rx<RegisterLicenseModel> registerLicenseModelObj = RegisterLicenseModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onClose() {
    super.onClose();
    licensenumberController.dispose();
    expirationdateController.dispose();
    licensenumberController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in registerLicenseModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerLicenseModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in registerLicenseModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerLicenseModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in registerLicenseModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerLicenseModelObj.value.dropdownItemList2.refresh();
  }
}
