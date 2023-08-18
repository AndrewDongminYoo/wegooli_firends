// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

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
