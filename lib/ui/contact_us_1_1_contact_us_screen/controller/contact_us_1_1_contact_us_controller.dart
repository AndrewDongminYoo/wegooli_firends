// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/contact_us_1_1_contact_us_screen/models/contact_us_1_1_contact_us_model.dart';

class ContactUs11ContactUsController extends GetxController {
  TextEditingController groupTwentySeveController = TextEditingController();

  Rx<ContactUs11ContactUsModel> contactUs11ContactUs =
      ContactUs11ContactUsModel().obs;

  DropdownData? choice;

  @override
  void onClose() {
    super.onClose();
    groupTwentySeveController.dispose();
  }

  void onSelected(dynamic value) {
    for (final element in contactUs11ContactUs.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    contactUs11ContactUs.value.choices.refresh();
  }
}
