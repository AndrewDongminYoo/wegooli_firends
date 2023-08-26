import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_switch.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl79".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 22),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 16),
                                  child: Text("lbl39".tr,
                                      style: CustomTextStyles.titleMedium18)),
                              Padding(
                                  padding: getPadding(left: 16, top: 4),
                                  child: Text("lbl_010_1234_5678".tr,
                                      style: theme.textTheme.bodyLarge)),
                              Container(
                                  height: getVerticalSize(8),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 21),
                                  decoration:
                                      BoxDecoration(color: appTheme.gray100)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 22, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl88".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBlack900),
                                            Obx(() => CustomSwitch(
                                                value: controller
                                                    .isSelectedSwitch.value,
                                                onChange: (value) {
                                                  controller.isSelectedSwitch
                                                      .value = value;
                                                }))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_sms".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBlack900),
                                            Obx(() => CustomSwitch(
                                                value: controller
                                                    .isSelectedSwitch1.value,
                                                onChange: (value) {
                                                  controller.isSelectedSwitch1
                                                      .value = value;
                                                }))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 22),
                                  child: Text("msg16".tr,
                                      style: theme.textTheme.bodySmall))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
