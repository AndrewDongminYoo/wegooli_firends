// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class ContactUsInquiryHistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
