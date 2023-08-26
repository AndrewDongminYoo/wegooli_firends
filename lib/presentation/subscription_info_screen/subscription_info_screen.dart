import 'controller/subscription_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class SubscriptionInfoScreen extends GetWidget<SubscriptionInfoController> {
  const SubscriptionInfoScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl81".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 22),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 2),
                                  child: Text("lbl101".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack900)),
                              Container(
                                  margin: getMargin(top: 12),
                                  padding: getPadding(
                                      left: 10, top: 20, right: 10, bottom: 20),
                                  decoration: AppDecoration.outlineOnError
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.img21,
                                            height: getVerticalSize(96),
                                            width: getHorizontalSize(167),
                                            margin: getMargin(top: 10)),
                                        Padding(
                                            padding: getPadding(top: 30),
                                            child: Divider()),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 21, right: 9),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl102".tr,
                                                      style: CustomTextStyles
                                                          .titleMedium18),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4, bottom: 2),
                                                      child: Text(
                                                          "lbl_12_34562".tr,
                                                          style: theme.textTheme
                                                              .bodySmall))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 13, right: 9),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl103".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeOnPrimary),
                                                  Text("lbl_150_0003".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge)
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 3, right: 9),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl104".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeOnPrimary),
                                                  Text(
                                                      "msg_2023_07_01_2023_08_01"
                                                          .tr,
                                                      style: theme
                                                          .textTheme.bodyLarge)
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 9, top: 3, right: 9),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl105".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeOnPrimary),
                                                  Text("lbl_2023_08_20".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge)
                                                ])),
                                        CustomElevatedButton(
                                            height: getVerticalSize(48),
                                            width: getHorizontalSize(160),
                                            text: "lbl106".tr,
                                            margin:
                                                getMargin(top: 21, right: 9),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL5,
                                            buttonTextStyle:
                                                theme.textTheme.titleMedium!,
                                            alignment: Alignment.centerRight)
                                      ]))
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
