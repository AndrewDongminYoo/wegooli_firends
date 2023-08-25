// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/terminal_model.dart';

/// A controller class for the SmartKeyAvailablePage.
///
/// This class manages the state of the SmartKeyAvailablePage, including the
/// current smartKeyAvailableModelObj
class SmartKeyAvailableController extends GetxController {
  static SmartKeyAvailableController get to =>
      Get.isRegistered<SmartKeyAvailableController>()
          ? Get.find<SmartKeyAvailableController>()
          : Get.put(SmartKeyAvailableController());

  Rx<TerminalModel> terminalModelObj = TerminalModel().obs;
  RxBool isUsed = false.obs;
  TextEditingController clientName = TextEditingController();
  @override
  void onClose() {
    super.onClose();
    clientName.dispose();
  }
}
