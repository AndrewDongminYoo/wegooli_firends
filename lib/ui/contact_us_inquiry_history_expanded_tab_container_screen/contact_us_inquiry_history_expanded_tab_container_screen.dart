// 🐦 Flutter imports:
import 'controller/contact_us_inquiry_history_expanded_tab_container_controller.dart';
import '/core/app_export.dart';
import '/ui/contact_us_inquiry_history_expanded_page/contact_us_inquiry_history_expanded_page.dart';
import '/ui/contact_us_inquiry_history_page/contact_us_inquiry_history_page.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ContactUsInquiryHistoryExpandedTabContainerScreen
    extends GetWidget<ContactUsInquiryHistoryExpandedTabContainerController> {
  const ContactUsInquiryHistoryExpandedTabContainerScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl136'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 65.v,
                      width: double.maxFinite,
                      child: TabBar(
                          controller: controller.tabviewController,
                          isScrollable: true,
                          labelColor: theme.colorScheme.onPrimary,
                          unselectedLabelColor:
                              theme.colorScheme.onPrimary.withOpacity(0.4),
                          tabs: [
                            Tab(
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 46.h, vertical: 11.v),
                                    decoration: AppDecoration.outlinePrimary,
                                    child: Column(children: [
                                      Text('lbl142'.tr),
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.v),
                                          child: Text('lbl_102'.tr))
                                    ]))),
                            Tab(
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 11.v),
                                    decoration: AppDecoration.outlineAmberA,
                                    child: Column(children: [
                                      Text('lbl140'.tr),
                                      Padding(
                                          padding: EdgeInsets.only(top: 6.v),
                                          child: Text('lbl_102'.tr))
                                    ]))),
                            Tab(
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 39.h, vertical: 11.v),
                                    decoration: AppDecoration.outlineAmberA,
                                    child: Column(children: [
                                      Text('lbl139'.tr),
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.v),
                                          child: Text('lbl_102'.tr))
                                    ])))
                          ])),
                  SizedBox(
                      height: 592.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            ContactUsInquiryHistoryExpandedPage(),
                            ContactUsInquiryHistoryExpandedPage(),
                            ContactUsInquiryHistoryPage()
                          ]))
                ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
