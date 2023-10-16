// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/send_invitation_leader_only_dialog/models/send_invitation_leader_only_model.dart';

/// A controller class for the SendInvitationLeaderOnlyDialog.
///
/// This class manages the state of the SendInvitationLeaderOnlyDialog, including the
/// current sendInvitationLeaderOnlyModelObj
class SendInvitationLeaderOnlyController extends GetxController {
  TextEditingController invitationcodeController = TextEditingController();

  Rx<SendInvitationLeaderOnlyModel> sendInvitationLeaderOnlyModelObj =
      SendInvitationLeaderOnlyModel().obs;

  @override
  void onClose() {
    super.onClose();
    invitationcodeController.dispose();
  }
}
