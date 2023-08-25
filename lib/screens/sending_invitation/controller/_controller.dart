// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the SendingCrewInvitationDialog.
///
/// This class manages the state of the SendingCrewInvitationDialog, including the
/// current sendingCrewInvitationModelObj
class SendingCrewInvitationController extends GetxController {
  static SendingCrewInvitationController get to =>
      Get.isRegistered<SendingCrewInvitationController>()
          ? Get.find<SendingCrewInvitationController>()
          : Get.put(SendingCrewInvitationController());
  TextEditingController invitationCodeController = TextEditingController();
  @override
  void onClose() {
    super.onClose();
    invitationCodeController.dispose();
  }
}
