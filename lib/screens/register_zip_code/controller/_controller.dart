// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the RegisterZipCodeScreen.
///
/// This class manages the state of the RegisterZipCodeScreen, including the
/// current registerZipCodeModelObj
class RegisterZipCodeController extends GetxController {
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController primaryAddressController = TextEditingController();
  TextEditingController detailedAddressController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  Rx<RegisterZipCodeModel> registerZipCodeModelObj = RegisterZipCodeModel().obs;

  @override
  void onClose() {
    super.onClose();
    postalCodeController.dispose();
    primaryAddressController.dispose();
    detailedAddressController.dispose();
    emailAddressController.dispose();
  }
}
