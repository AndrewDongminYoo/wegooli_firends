// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';
import '/ui/one_on_one_screen/models/one_on_one_model.dart';

class OneOnOneController extends GetxController {
  TextEditingController inquiryContent = TextEditingController();

  Rx<OneOnOneModel> oneOnOne = OneOnOneModel().obs;
  DropdownData? inquiryType;

  @override
  void onClose() {
    super.onClose();
    inquiryContent.dispose();
  }
}
