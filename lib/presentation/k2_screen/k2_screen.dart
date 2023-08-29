import 'controller/k2_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_radio_button.dart';

class K2Screen extends GetWidget<K2Controller> {
  const K2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(34),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimary,
                    margin: getMargin(left: 16, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl51".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomRadioButton(
                                    text: "lbl_7210".tr,
                                    value: "lbl_7210".tr,
                                    groupValue: controller.radioGroup.value,
                                    textStyle: theme.textTheme.bodyLarge,
                                    onChange: (value) {
                                      controller.radioGroup.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getSize(18),
                                    width: getSize(18))
                              ])),
                      Padding(
                          padding: getPadding(top: 13, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getSize(20),
                                    width: getSize(20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10)))),
                                Padding(
                                    padding: getPadding(left: 14),
                                    child: Obx(() => CustomRadioButton(
                                        text: "lbl_1210".tr,
                                        value: "lbl_1210".tr,
                                        groupValue:
                                            controller.radioGroup1.value,
                                        margin: getMargin(left: 14),
                                        textStyle: theme.textTheme.bodyLarge,
                                        onChange: (value) {
                                          controller.radioGroup1.value = value;
                                        }))),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getSize(18),
                                    width: getSize(18))
                              ])),
                      CustomElevatedButton(
                          text: "lbl98".tr,
                          margin: getMargin(top: 31, bottom: 5))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
