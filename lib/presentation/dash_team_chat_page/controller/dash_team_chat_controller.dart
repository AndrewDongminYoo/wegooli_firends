import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/dash_team_chat_page/models/dash_team_chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashTeamChatPage.
///
/// This class manages the state of the DashTeamChatPage, including the
/// current dashTeamChatModelObj
class DashTeamChatController extends GetxController {
  DashTeamChatController(this.dashTeamChatModelObj);

  TextEditingController chatinputoneController = TextEditingController();

  Rx<DashTeamChatModel> dashTeamChatModelObj;

  @override
  void onClose() {
    super.onClose();
    chatinputoneController.dispose();
  }
}
