// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';
import '/ui/license_register_screen/models/license_register_model.dart';

class LicenseRegisterController extends GetxController {
  TextEditingController licenseNums = TextEditingController();
  TextEditingController validPeriod = TextEditingController();
  TextEditingController firstIssued = TextEditingController();

  Rx<LicenseRegisterModel> license = LicenseRegisterModel().obs;
  DropdownData? licenseType;
  DropdownData? issuedYear;

  @override
  void onClose() {
    super.onClose();
    licenseNums.dispose();
    validPeriod.dispose();
    firstIssued.dispose();
  }
}
