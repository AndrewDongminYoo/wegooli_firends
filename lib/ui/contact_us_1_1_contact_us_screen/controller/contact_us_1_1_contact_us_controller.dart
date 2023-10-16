import '/core/app_export.dart';
import '/ui/contact_us_1_1_contact_us_screen/models/contact_us_1_1_contact_us_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ContactUs11ContactUsScreen.
///
/// This class manages the state of the ContactUs11ContactUsScreen, including the
/// current contactUs11ContactUsModelObj
class ContactUs11ContactUsController extends GetxController {
  TextEditingController groupTwentySeveController = TextEditingController();

  Rx<ContactUs11ContactUsModel> contactUs11ContactUsModelObj =
      ContactUs11ContactUsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    groupTwentySeveController.dispose();
  }

  void onSelected(dynamic value) {
    for (final element
        in contactUs11ContactUsModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    contactUs11ContactUsModelObj.value.dropdownItemList.refresh();
  }
}
