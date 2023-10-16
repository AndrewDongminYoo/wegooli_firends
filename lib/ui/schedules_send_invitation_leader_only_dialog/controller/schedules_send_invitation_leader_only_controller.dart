// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_send_invitation_leader_only_dialog/models/schedules_send_invitation_leader_only_model.dart';

class SchedulesSendInvitationLeaderOnlyController extends GetxController {
  TextEditingController valueoneController = TextEditingController();

  Rx<SchedulesSendInvitationLeaderOnlyModel> schedulesSendInvitationLeaderOnly =
      SchedulesSendInvitationLeaderOnlyModel().obs;

  @override
  void onClose() {
    super.onClose();
    valueoneController.dispose();
  }
}
