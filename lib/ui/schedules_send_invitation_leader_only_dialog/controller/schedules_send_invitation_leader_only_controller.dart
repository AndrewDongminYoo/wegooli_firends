import '/core/app_export.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/models/schedules_send_invitation_leader_only_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SchedulesSendInvitationLeaderOnlyDialog.
///
/// This class manages the state of the SchedulesSendInvitationLeaderOnlyDialog, including the
/// current schedulesSendInvitationLeaderOnlyModelObj
class SchedulesSendInvitationLeaderOnlyController extends GetxController {
  TextEditingController valueoneController = TextEditingController();

  Rx<SchedulesSendInvitationLeaderOnlyModel>
      schedulesSendInvitationLeaderOnlyModelObj =
      SchedulesSendInvitationLeaderOnlyModel().obs;

  @override
  void onClose() {
    super.onClose();
    valueoneController.dispose();
  }
}
