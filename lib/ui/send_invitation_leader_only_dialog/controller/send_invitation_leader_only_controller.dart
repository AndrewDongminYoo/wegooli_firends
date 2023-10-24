// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

class SendInvitationLeaderOnlyController extends GetxController {
  TextEditingController invitationCode = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    invitationCode.dispose();
  }
}
