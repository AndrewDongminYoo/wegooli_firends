// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/send_bird_chat_page/models/send_bird_chat_model.dart';

/// A controller class for the SendBirdChatPage.
///
/// This class manages the state of the SendBirdChatPage, including the
/// current sendBirdChatModelObj
class SendBirdChatController extends GetxController {
  SendBirdChatController(this.sendBirdChatModelObj);

  TextEditingController chatinputoneController = TextEditingController();

  Rx<SendBirdChatModel> sendBirdChatModelObj;

  @override
  void onClose() {
    super.onClose();
    chatinputoneController.dispose();
  }
}
