import 'controller/unsubscribe_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class UnsubscribeScreen extends GetWidget<UnsubscribeController> {
  const UnsubscribeScreen({Key? key}) : super(key: key);

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
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 50),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.img157x120,
                                  height: getVerticalSize(157),
                                  width: getHorizontalSize(120)),
                              Container(
                                  width: getHorizontalSize(179),
                                  margin: getMargin(top: 20),
                                  child: Text("msg21".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleMediumBlack900
                                          .copyWith(height: 1.44))),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("msg_2023_8_4".tr,
                                      style:
                                          CustomTextStyles.bodyLargeBlack900)),
                              Padding(
                                  padding: getPadding(top: 81),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomElevatedButton(
                                            width: getHorizontalSize(104),
                                            text: "lbl86".tr,
                                            buttonStyle:
                                                CustomButtonStyles.fillOnError),
                                        CustomElevatedButton(
                                            width: getHorizontalSize(216),
                                            text: "lbl127".tr)
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
