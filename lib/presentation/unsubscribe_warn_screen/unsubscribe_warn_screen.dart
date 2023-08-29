import 'controller/unsubscribe_warn_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class UnsubscribeWarnScreen extends GetWidget<UnsubscribeWarnController> {
  const UnsubscribeWarnScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl126".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 50, right: 16, bottom: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.img157x120,
                          height: getVerticalSize(157),
                          width: getHorizontalSize(120)),
                      CustomImageView(
                          svgPath: ImageConstant.imgBlack90042x176,
                          height: getVerticalSize(42),
                          width: getHorizontalSize(176),
                          margin: getMargin(top: 24)),
                      CustomImageView(
                          svgPath: ImageConstant.img202384,
                          height: getVerticalSize(14),
                          width: getHorizontalSize(274),
                          margin: getMargin(top: 30)),
                      Padding(
                          padding: getPadding(top: 84, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomElevatedButton(
                                    width: getHorizontalSize(104),
                                    text: "lbl86".tr,
                                    buttonStyle: CustomButtonStyles.fillGray),
                                CustomElevatedButton(
                                    width: getHorizontalSize(216),
                                    text: "lbl127".tr)
                              ]))
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
