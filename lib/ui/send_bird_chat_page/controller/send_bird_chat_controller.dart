// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/send_bird_chat_page/models/send_bird_chat_model.dart';

class SendBirdChatController extends GetxController {
  SendBirdChatController(this.sendBirdChat);
  TextEditingController chatinputone = TextEditingController();

  Rx<SendBirdChatModel> sendBirdChat;

  @override
  void onClose() {
    super.onClose();
    chatinputone.dispose();
  }
}
