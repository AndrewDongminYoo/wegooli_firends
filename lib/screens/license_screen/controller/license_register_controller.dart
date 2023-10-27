// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../models/license_register_model.dart';
import '/core/utils/logger.dart';
import '/data/common/dropdown_data.dart';

class LicenseRegisterController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static LicenseRegisterController get to =>
      GetIt.I.isRegistered<LicenseRegisterController>()
          ? GetIt.I.get<LicenseRegisterController>()
          : GetIt.I.registerSingleton(LicenseRegisterController());

  final licenseNums = TextEditingController();
  final validPeriod = TextEditingController();
  final firstIssued = TextEditingController();

  final license = LicenseRegisterModel().obs;
  DropdownData? licenseType;
  DropdownData? issuedYear;
  final canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    licenseNums.dispose();
    validPeriod.dispose();
    firstIssued.dispose();
  }

  void printFormFields() {
    logger.i('면허증번호: ${licenseNums.text}\t'
        '유효기간: ${validPeriod.text}\t'
        '최초발급년도: ${firstIssued.text}');
  }
}
