import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_checkbox_button.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class VerificationBottomsheet extends StatelessWidget {
  VerificationBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  VerificationController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                      left: 16,
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
                  left: 16,
                  top: 23,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => CustomCheckboxButton(
                        text: "lbl66".tr,
                        value: controller.tf.value,
                        onChange: (value) {
                          controller.tf.value = value;
                        },
                      ),
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
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => CustomCheckboxButton(
                        text: "lbl67".tr,
                        value: controller.tf1.value,
                        onChange: (value) {
                          controller.tf1.value = value;
                        },
                      ),
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
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => CustomCheckboxButton(
                        text: "lbl68".tr,
                        value: controller.tf2.value,
                        onChange: (value) {
                          controller.tf2.value = value;
                        },
                      ),
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
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Obx(
                        () => CustomCheckboxButton(
                          text: "msg13".tr,
                          value: controller.tf3.value,
                          onChange: (value) {
                            controller.tf3.value = value;
                          },
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 80,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Obx(
                        () => CustomCheckboxButton(
                          text: "msg14".tr,
                          value: controller.tf4.value,
                          onChange: (value) {
                            controller.tf4.value = value;
                          },
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 9,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Obx(
                        () => CustomCheckboxButton(
                          text: "msg15".tr,
                          value: controller.tf5.value,
                          onChange: (value) {
                            controller.tf5.value = value;
                          },
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 39,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 20,
                ),
                padding: getPadding(
                  left: 16,
                  top: 29,
                  right: 16,
                  bottom: 29,
                ),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                  text: "lbl69".tr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
