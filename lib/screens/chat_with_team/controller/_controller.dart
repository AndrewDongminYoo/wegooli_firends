// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the DashChatWithFriendsPage.
///
/// This class manages the state of the DashChatWithFriendsPage, including the
/// current dashChatWithFriendsModelObj
class DashChatWithFriendsController extends GetxController {
  DashChatWithFriendsController(this.dashChatWithFriendsModelObj);

  TextEditingController group1104Controller = TextEditingController();

  Rx<DashChatWithFriendsModel> dashChatWithFriendsModelObj;

  @override
  void onClose() {
    super.onClose();
    group1104Controller.dispose();
  }
}
