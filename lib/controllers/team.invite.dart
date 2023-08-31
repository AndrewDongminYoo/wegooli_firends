// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class VehicleController extends GetxController {
  static VehicleController get to =>
      Get.isRegistered<VehicleController>()
          ? Get.find<VehicleController>()
          : Get.put(VehicleController());
  TextEditingController clientName = TextEditingController();
  TextEditingController invitation = TextEditingController();
  Rx<TerminalModel> terminalDevice = TerminalModel().obs;
  RxBool isUsed = false.obs;

  @override
  void onClose() {
    super.onClose();
    clientName.dispose();
    invitation.dispose();
  }
}
