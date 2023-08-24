// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class RegisteredCreditCardList
    extends GetWidget<RegisteredCreditCardListController> {
  const RegisteredCreditCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: CustomImageView(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl37".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomRadioButton(
                                    text: "신한 7210 / 개인",
                                    iconSize: getHorizontalSize(20),
                                    value: "신한 7210 / 개인",
                                    groupValue: controller.radioGroup.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.radioGroup.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: Assets.svg.imgClose.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 13, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() => CustomRadioButton(
                                    text: "신한 1210 / 법인", // FIXME 임시 텍스트
                                    iconSize: getHorizontalSize(20),
                                    value: "신한 1210 / 법인",
                                    groupValue: controller.radioGroup1.value,
                                    textStyle: theme.textTheme.bodyLarge!,
                                    onChange: (value) {
                                      controller.radioGroup1.value = value;
                                    })),
                                CustomImageView(
                                    svgPath: Assets.svg.imgClose.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 1))
                              ])),
                      CustomElevatedButton(
                          text: "lbl79".tr,
                          margin: getMargin(top: 51, bottom: 5),
                          buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, getVerticalSize(52)))),
                          buttonTextStyle: CustomTextStyles.titleMedium18)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
