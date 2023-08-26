import 'controller/unsubscription_warn_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class UnsubscriptionWarnDialog extends StatelessWidget {
  UnsubscriptionWarnDialog(this.controller, {Key? key}) : super(key: key);

  UnsubscriptionWarnController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: getMargin(left: 16, right: 16, bottom: 265),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgCloseGray400,
                      height: getSize(15),
                      width: getSize(15),
                      alignment: Alignment.centerRight,
                      margin: getMargin(top: 20, right: 20),
                      onTap: () {
                        onTapImgCloseone();
                      }),
                  Padding(
                      padding: getPadding(left: 20, top: 7),
                      child: Text("lbl126".tr,
                          style: CustomTextStyles.titleMedium18)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: getHorizontalSize(288),
                          margin: getMargin(left: 20, top: 17, right: 20),
                          child: Text("msg22".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(height: 1.50)))),
                  Padding(
                      padding: getPadding(top: 25),
                      child: Row(children: [
                        CustomElevatedButton(
                            width: getHorizontalSize(164),
                            text: "lbl86".tr,
                            buttonStyle: CustomButtonStyles.fillOnErrorBL10,
                            buttonTextStyle: theme.textTheme.titleMedium!),
                        CustomElevatedButton(
                            width: getHorizontalSize(164),
                            text: "lbl106".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryBR10,
                            buttonTextStyle: theme.textTheme.titleMedium!)
                      ]))
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapImgCloseone() {
    Get.back();
  }
}
