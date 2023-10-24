// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class ContactUsHistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
