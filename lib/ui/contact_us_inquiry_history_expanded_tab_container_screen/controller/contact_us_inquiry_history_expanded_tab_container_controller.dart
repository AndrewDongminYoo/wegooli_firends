import '/core/app_export.dart';
import '/ui/contact_us_inquiry_history_expanded_tab_container_screen/models/contact_us_inquiry_history_expanded_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ContactUsInquiryHistoryExpandedTabContainerScreen.
///
/// This class manages the state of the ContactUsInquiryHistoryExpandedTabContainerScreen, including the
/// current contactUsInquiryHistoryExpandedTabContainerModelObj
class ContactUsInquiryHistoryExpandedTabContainerController
    extends GetxController with GetSingleTickerProviderStateMixin {
  Rx<ContactUsInquiryHistoryExpandedTabContainerModel>
      contactUsInquiryHistoryExpandedTabContainerModelObj =
      ContactUsInquiryHistoryExpandedTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
