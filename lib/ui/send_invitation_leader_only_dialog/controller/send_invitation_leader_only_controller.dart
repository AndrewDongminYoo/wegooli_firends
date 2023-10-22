// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class SendInvitationLeaderOnlyController extends GetxController {
  TextEditingController invitationcode = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    invitationcode.dispose();
  }
}
