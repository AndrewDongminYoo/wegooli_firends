// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_radio_button.dart';
import 'controller/card_list_controller.dart';

class CardListScreen extends GetWidget<CardListController> {
  const CardListScreen({Key? key}) : super(key: key);

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
            title: AppbarTitle(text: 'lbl124'.tr)),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() => CustomRadioButton(
                                text: 'lbl_7210'.tr,
                                value: 'lbl_7210'.tr,
                                groupValue: controller.radioGroup.value,
                                onChange: (value) {
                                  controller.radioGroup.value = value;
                                })),
                            CustomImageView(
                                svgPath: ImageConstant.imgCloseGray700,
                                height: 18.adaptSize,
                                width: 18.adaptSize)
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 13.v, right: 1.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() => CustomRadioButton(
                                text: 'lbl_1210'.tr,
                                value: 'lbl_1210'.tr,
                                groupValue: controller.radioGroup1.value,
                                onChange: (value) {
                                  controller.radioGroup1.value = value;
                                })),
                            CustomImageView(
                                svgPath: ImageConstant.imgCloseGray700,
                                height: 18.adaptSize,
                                width: 18.adaptSize)
                          ])),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(text: 'lbl125'.tr)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
