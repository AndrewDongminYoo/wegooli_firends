import 'controller/accept_terms_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_checkbox_button.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class AcceptTermsScreen extends GetWidget<AcceptTermsController> {
  const AcceptTermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(42),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimary,
                    margin: getMargin(left: 24, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl144".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 29),
                    child: Padding(
                        padding: getPadding(left: 23, right: 23, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(20),
                                  width: getHorizontalSize(126),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Obx(() => CustomCheckboxButton(
                                          alignment: Alignment.center,
                                          text: "lbl65".tr,
                                          value:
                                              controller.totalAgreement.value,
                                          onChange: (value) {
                                            controller.totalAgreement.value =
                                                value;
                                          })))),
                              Padding(
                                  padding: getPadding(top: 53),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: "lbl145".tr,
                                            value: controller
                                                .serviceAgreemen.value,
                                            onChange: (value) {
                                              controller.serviceAgreemen.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftOnprimary,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: "lbl146".tr,
                                            value:
                                                controller.privacyPolicy.value,
                                            onChange: (value) {
                                              controller.privacyPolicy.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftOnprimary,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: "lbl147".tr,
                                            value: controller
                                                .rentalAgreement.value,
                                            onChange: (value) {
                                              controller.rentalAgreement.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftOnprimary,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: "msg23".tr,
                                            value: controller
                                                .locationAgreeme.value,
                                            onChange: (value) {
                                              controller.locationAgreeme.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftOnprimary,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(children: [
                                    Expanded(
                                        child: Obx(() => CustomCheckboxButton(
                                            text: "msg24".tr,
                                            value: controller.bookmarktwo.value,
                                            onChange: (value) {
                                              controller.bookmarktwo.value =
                                                  value;
                                            }))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftOnprimary,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 10, bottom: 2))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(children: [
                                    Expanded(
                                        child: Obx(() => CustomCheckboxButton(
                                            text: "msg25".tr,
                                            value:
                                                controller.bookmarkthree.value,
                                            onChange: (value) {
                                              controller.bookmarkthree.value =
                                                  value;
                                            }))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftOnprimary,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 40, bottom: 2))
                                  ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 28, bottom: 41),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "lbl148".tr,
                    buttonStyle: CustomButtonStyles.fillAmberATL26,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
