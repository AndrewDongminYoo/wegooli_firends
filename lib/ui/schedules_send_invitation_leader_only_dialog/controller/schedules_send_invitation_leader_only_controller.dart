// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class SchedulesSendInvitationLeaderOnlyController extends GetxController {
  TextEditingController teamCode =
      TextEditingController(text: 'asdf-asdf-asdf-asdf');

  @override
  void onClose() {
    super.onClose();
    teamCode.dispose();
  }
}
