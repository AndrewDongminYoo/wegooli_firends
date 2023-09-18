// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseController extends GetxController {
  final _service = LicenseCardService();
  // ignore: prefer_constructors_over_static_methods
  static LicenseController get to => Get.isRegistered<LicenseController>()
      ? Get.find<LicenseController>()
      : Get.put(LicenseController());

  // 운전면허증 일련번호
  TextEditingController licenseNumbers = TextEditingController();
  // 운전면허증 만료일자
  TextEditingController expirationDate = TextEditingController();
  // 운전면허증 최초발급년도
  TextEditingController firstIssueYear = TextEditingController();

  final bool _licenseInputSucceed = true;
  bool get licenseInputSucceed => _licenseInputSucceed;
  Future<int> inputLicenseInput() async {
    return _service.registerDrivingLicense();
  }

  @override
  void onClose() {
    super.onClose();
    licenseNumbers.dispose();
    expirationDate.dispose();
    firstIssueYear.dispose();
  }
}
