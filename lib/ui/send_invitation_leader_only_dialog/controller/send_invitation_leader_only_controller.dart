// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/send_invitation_leader_only_dialog/models/send_invitation_leader_only_model.dart';

class SendInvitationLeaderOnlyController extends GetxController {
  TextEditingController invitationcode = TextEditingController();

  Rx<SendInvitationLeaderOnlyModel> sendInvitationLeaderOnly =
      SendInvitationLeaderOnlyModel().obs;

  @override
  void onClose() {
    super.onClose();
    invitationcode.dispose();
  }
}
