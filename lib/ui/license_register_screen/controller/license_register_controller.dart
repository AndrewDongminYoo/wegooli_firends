// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/data/common/dropdown_data.dart';
import '/ui/license_register_screen/models/license_register_model.dart';

class LicenseRegisterController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static LicenseRegisterController get to =>
      GetIt.I.isRegistered<LicenseRegisterController>()
          ? GetIt.I.get<LicenseRegisterController>()
          : GetIt.I.registerSingleton(LicenseRegisterController());

  TextEditingController licenseNums = TextEditingController();
  TextEditingController validPeriod = TextEditingController();
  TextEditingController firstIssued = TextEditingController();

  Rx<LicenseRegisterModel> license = LicenseRegisterModel().obs;
  DropdownData? licenseType;
  DropdownData? issuedYear;
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    licenseNums.dispose();
    validPeriod.dispose();
    firstIssued.dispose();
  }
}
