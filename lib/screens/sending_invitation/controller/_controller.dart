// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/app_export.dart';

/// A controller class for the SendingCrewInvitationDialog.
///
/// This class manages the state of the SendingCrewInvitationDialog, including the
/// current sendingCrewInvitationModelObj
class DeviceController extends GetxController {
  static DeviceController get to =>
      Get.isRegistered<DeviceController>()
          ? Get.find<DeviceController>()
          : Get.put(DeviceController());
  TextEditingController clientName = TextEditingController();
  TextEditingController invitationCodeController = TextEditingController();
  Rx<TerminalModel> terminalModelObj = TerminalModel().obs;
  RxBool isUsed = false.obs;

  @override
  void onClose() {
    super.onClose();
    clientName.dispose();
    invitationCodeController.dispose();
  }
}
