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
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 25, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgSort,
                          height: getVerticalSize(16),
                          width: getHorizontalSize(43),
                          margin: getMargin(left: 16)),
                      CustomImageView(
                          svgPath: ImageConstant.img01012345678,
                          height: getVerticalSize(11),
                          width: getHorizontalSize(112),
                          margin: getMargin(left: 16, top: 11)),
                      Container(
                          height: getVerticalSize(8),
                          width: double.maxFinite,
                          margin: getMargin(top: 25),
                          decoration: BoxDecoration(color: appTheme.gray100)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 22, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgBlack90013x106,
                                        height: getVerticalSize(13),
                                        width: getHorizontalSize(106),
                                        margin: getMargin(top: 3, bottom: 2)),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch.value,
                                        onChange: (value) {
                                          controller.isSelectedSwitch.value =
                                              value;
                                        }))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSms,
                                        height: getVerticalSize(13),
                                        width: getHorizontalSize(94),
                                        margin: getMargin(top: 3, bottom: 2)),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch1.value,
                                        onChange: (value) {
                                          controller.isSelectedSwitch1.value =
                                              value;
                                        }))
                                  ]))),
                      CustomImageView(
                          svgPath: ImageConstant.imgOnprimary10x264,
                          height: getVerticalSize(10),
                          width: getHorizontalSize(264),
                          margin: getMargin(left: 16, top: 25, bottom: 5))
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
