// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class SendBirdChatController extends GetxController {
  SendBirdChatController();
  TextEditingController chatinputone = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    chatinputone.dispose();
  }
}
