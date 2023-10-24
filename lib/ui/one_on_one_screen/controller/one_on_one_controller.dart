// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/one_on_one_screen/models/one_on_one_model.dart';

class OneOnOneController extends GetxController {
  TextEditingController inquiryContent = TextEditingController();

  Rx<OneOnOneModel> oneOnOne = OneOnOneModel().obs;
  DropdownData? choice;

  @override
  void onClose() {
    super.onClose();
    inquiryContent.dispose();
  }

  void onSelected(dynamic value) {
    for (final element in oneOnOne.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    oneOnOne.value.choices.refresh();
  }
}
