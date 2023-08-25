// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the DashChatWithFriendsPage.
///
/// This class manages the state of the DashChatWithFriendsPage, including the
/// current dashChatWithFriendsModelObj
class DashChatWithFriendsController extends GetxController {
  static DashChatWithFriendsController get to =>
      Get.isRegistered<DashChatWithFriendsController>()
          ? Get.find<DashChatWithFriendsController>()
          : Get.put(DashChatWithFriendsController());

  TextEditingController group1104Controller = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    group1104Controller.dispose();
  }
}
