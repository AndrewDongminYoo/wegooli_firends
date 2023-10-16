// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/contact_us_inquiry_history_expanded_tab_container_screen/models/contact_us_inquiry_history_expanded_tab_container_model.dart';

class ContactUsInquiryHistoryExpandedTabContainerController
    extends GetxController with GetSingleTickerProviderStateMixin {
  Rx<ContactUsInquiryHistoryExpandedTabContainerModel>
      contactUsInquiryHistoryExpandedTabContainer =
      ContactUsInquiryHistoryExpandedTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
