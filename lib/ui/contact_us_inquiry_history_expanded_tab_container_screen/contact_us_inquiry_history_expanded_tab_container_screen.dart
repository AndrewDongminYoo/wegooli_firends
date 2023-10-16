// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/contact_us_inquiry_history_expanded_page/contact_us_inquiry_history_expanded_page.dart';
import '/ui/contact_us_inquiry_history_page/contact_us_inquiry_history_page.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'controller/contact_us_inquiry_history_expanded_tab_container_controller.dart';

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
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
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
                    labelColor: defaultColors.onPrimary,
                    unselectedLabelColor:
                        defaultColors.onPrimary.withOpacity(0.4),
                    tabs: [
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 46.h, vertical: 11.v),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: defaultColors.primary,
                                width: 2.h,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text('lbl142'.tr),
                              Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text('lbl_102'.tr))
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 11.v),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0x33FFE142),
                                width: 1.h,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text('lbl140'.tr),
                              Padding(
                                  padding: EdgeInsets.only(top: 6.v),
                                  child: Text('lbl_102'.tr))
                            ],
                          ),
                        ),
                      ),
                      Tab(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 39.h, vertical: 11.v),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color(0x33FFE142),
                                    width: 1.h,
                                  ),
                                ),
                              ),
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
          ])),
        ),
      ),
    );
  }
}
