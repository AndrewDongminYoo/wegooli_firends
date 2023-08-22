// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the SendingCrewInvitationDialog.
///
/// This class manages the state of the SendingCrewInvitationDialog, including the
/// current sendingCrewInvitationModelObj
class SendingCrewInvitationController extends GetxController {
  TextEditingController invitationCodeController = TextEditingController();

  Rx<SendingCrewInvitationModel> sendingCrewInvitationModelObj =
      SendingCrewInvitationModel().obs;

  @override
  void onClose() {
    super.onClose();
    invitationCodeController.dispose();
  }
}
