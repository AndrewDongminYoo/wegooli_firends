// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class AcceptTerms extends GetWidget<AcceptTermsController> {
  const AcceptTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: AppbarImage(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTapArrowleft();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl6".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 11, top: 31, right: 11, bottom: 31),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => CustomCheckboxButton(
                          text: "lbl7".tr,
                          iconSize: getHorizontalSize(20),
                          value: controller.isAcceptedTerm0.value,
                          margin: getMargin(left: 5),
                          textStyle: theme.textTheme.bodyLarge!,
                          onChange: (value) {
                            controller.isAcceptedTerm0.value = value;
                          })),
                      Padding(
                          padding: getPadding(left: 5, top: 53),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomCheckboxButton(
                                    text: "lbl8".tr,
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isAcceptedTerm1.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.isAcceptedTerm1.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 2))
                              ])),
                      Padding(
                          padding: getPadding(left: 5, top: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomCheckboxButton(
                                    text: "lbl9".tr,
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isAcceptedTerm2.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.isAcceptedTerm2.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 2))
                              ])),
                      Padding(
                          padding: getPadding(left: 5, top: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomCheckboxButton(
                                    text: "자동차 대여약관 (필수)",
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isAcceptedTerm3.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.isAcceptedTerm3.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 2))
                              ])),
                      Padding(
                          padding: getPadding(left: 5, top: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomCheckboxButton(
                                    text: "msg".tr,
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isAcceptedTerm4.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.isAcceptedTerm4.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 2))
                              ])),
                      Padding(
                          padding: getPadding(left: 5, top: 14),
                          child: Row(children: [
                            Expanded(
                                child: Obx(() => CustomCheckboxButton(
                                    text: "msg2".tr,
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isAcceptedTerm5.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.isAcceptedTerm5.value = value;
                                    }))),
                            CustomImageView(
                                svgPath: Assets.svg.imgArrowLeft.path,
                                height: getSize(18),
                                width: getSize(18),
                                margin: getMargin(left: 10, top: 1, bottom: 2))
                          ])),
                      Padding(
                          padding: getPadding(left: 5, top: 14, bottom: 5),
                          child: Row(children: [
                            Expanded(
                                child: Obx(() => CustomCheckboxButton(
                                    text: "msg3".tr,
                                    iconSize: getHorizontalSize(20),
                                    value: controller.isAcceptedTerm6.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.isAcceptedTerm6.value = value;
                                    }))),
                            CustomImageView(
                                svgPath: Assets.svg.imgArrowLeft.path,
                                height: getSize(18),
                                width: getSize(18),
                                margin: getMargin(left: 40, top: 1, bottom: 2))
                          ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "동의 완료",
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(52)))),
                    buttonTextStyle: CustomTextStyles.titleMedium18))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft() {
    Get.back();
  }
}
