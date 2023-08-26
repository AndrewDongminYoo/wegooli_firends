import 'controller/terms_dialog_checked_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_checkbox_button.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TermsDialogCheckedScreen extends GetWidget<TermsDialogCheckedController> {
  const TermsDialogCheckedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                padding: getPadding(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 10,
                ),
                decoration: AppDecoration.outlineBluegray30033,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLine45,
                      height: getVerticalSize(1),
                      width: getHorizontalSize(40),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 31,
                        bottom: 12,
                      ),
                      child: Text(
                        "lbl64".tr,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Obx(
                  () => CustomCheckboxButton(
                    alignment: Alignment.centerLeft,
                    text: "lbl65".tr,
                    value: controller.totalAgreement.value,
                    margin: getMargin(
                      left: 15,
                      top: 22,
                    ),
                    onChange: (value) {
                      controller.totalAgreement.value = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 24,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getSize(19),
                          width: getSize(19),
                          padding: getPadding(
                            left: 2,
                            top: 5,
                            right: 2,
                            bottom: 5,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(14),
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                          ),
                          child: Text(
                            "lbl66".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getSize(19),
                          width: getSize(19),
                          padding: getPadding(
                            left: 2,
                            top: 5,
                            right: 2,
                            bottom: 5,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(14),
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                          ),
                          child: Text(
                            "lbl67".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getSize(19),
                          width: getSize(19),
                          padding: getPadding(
                            left: 2,
                            top: 5,
                            right: 2,
                            bottom: 5,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(14),
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                          ),
                          child: Text(
                            "lbl68".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getSize(19),
                          width: getSize(19),
                          padding: getPadding(
                            left: 2,
                            top: 5,
                            right: 2,
                            bottom: 5,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(14),
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                          ),
                          child: Text(
                            "msg13".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getSize(19),
                            width: getSize(19),
                            padding: getPadding(
                              left: 2,
                              top: 5,
                              right: 2,
                              bottom: 5,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                              height: getVerticalSize(7),
                              width: getHorizontalSize(14),
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "msg14".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 11,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 14,
                  right: 15,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Obx(
                        () => CustomCheckboxButton(
                          text: "msg15".tr,
                          value: controller.computer.value,
                          onChange: (value) {
                            controller.computer.value = value;
                          },
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 16,
            right: 16,
            bottom: 29,
          ),
          decoration: AppDecoration.shadow,
          child: CustomElevatedButton(
            text: "lbl69".tr,
          ),
        ),
      ),
    );
  }
}
