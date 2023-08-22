// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the RegisterZipCodeScreen.
///
/// This class manages the state of the RegisterZipCodeScreen, including the
/// current registerZipCodeModelObj
class RegisterZipCodeController extends GetxController {
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController defaultAddressController = TextEditingController();
  TextEditingController detailedAddressControllerA = TextEditingController();
  TextEditingController detailedAddressControllerB = TextEditingController();

  Rx<RegisterZipCodeModel> registerZipCodeModelObj = RegisterZipCodeModel().obs;

  @override
  void onClose() {
    super.onClose();
    postalCodeController.dispose();
    defaultAddressController.dispose();
    detailedAddressControllerA.dispose();
    detailedAddressControllerB.dispose();
  }
}
