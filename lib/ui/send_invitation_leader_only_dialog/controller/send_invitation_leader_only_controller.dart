import '/core/app_export.dart';
import '/ui/send_invitation_leader_only_dialog/models/send_invitation_leader_only_model.dart';
import 'package:flutter/material.dart';

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
