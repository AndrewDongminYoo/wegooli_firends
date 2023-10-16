// 🐦 Flutter imports:
import 'controller/unsubscribe_confirm_controller.dart';
import '/core/app_export.dart';
import '/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UnsubscribeConfirmDialog extends StatelessWidget {
  UnsubscribeConfirmDialog(this.controller, {Key? key}) : super(key: key);

  UnsubscribeConfirmController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 267.v),
            decoration: AppDecoration.shadow
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.h, top: 21.v, right: 25.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('lbl34'.tr,
                                style: CustomTextStyles.titleMedium18),
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                                onTap: Get.back)
                          ])),
                  Container(
                      width: 278.h,
                      margin:
                          EdgeInsets.only(left: 25.h, top: 38.v, right: 25.h),
                      child: Text('msg'.tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 20.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomElevatedButton(
                        width: 164.h,
                        text: 'lbl32'.tr,
                        buttonStyle: CustomButtonStyles.fillGrayBL10,
                        buttonTextStyle: theme.textTheme.titleMedium),
                    CustomElevatedButton(
                        width: 164.h,
                        text: 'lbl35'.tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryBR10,
                        buttonTextStyle: theme.textTheme.titleMedium)
                  ])
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapImgCloseone() {
    Get.back();
  }
}
