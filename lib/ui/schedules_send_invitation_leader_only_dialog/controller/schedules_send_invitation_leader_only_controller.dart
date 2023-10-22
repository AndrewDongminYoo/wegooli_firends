// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class SchedulesSendInvitationLeaderOnlyController extends GetxController {
  TextEditingController valueoneController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    valueoneController.dispose();
  }
}
