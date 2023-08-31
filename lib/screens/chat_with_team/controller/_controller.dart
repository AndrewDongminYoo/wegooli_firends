// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/app_export.dart';

/// A controller class for the DashChatWithFriendsPage.
///
/// This class manages the state of the DashChatWithFriendsPage, including the
/// current dashChatWithFriendsModelObj
class TeamAccountConnectionController extends GetxController {
  static TeamAccountConnectionController get to =>
      Get.isRegistered<TeamAccountConnectionController>()
          ? Get.find<TeamAccountConnectionController>()
          : Get.put(TeamAccountConnectionController());

  TextEditingController group1104Controller = TextEditingController();
  RxString phoneNumber = ''.obs;
  var account = Account().obs;
  var userDetailInfo = UserDetailsDTO().obs;

  @override
  void onClose() {
    super.onClose();
    group1104Controller.dispose();
  }
}
