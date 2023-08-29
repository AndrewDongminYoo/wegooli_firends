import 'controller/one_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';

class OneScreen extends GetWidget<OneController> {
  const OneScreen({Key? key}) : super(key: key);

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
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 50, bottom: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.img,
                          height: getVerticalSize(177),
                          width: getHorizontalSize(120)),
                      CustomImageView(
                          svgPath: ImageConstant.imgBlack90016x152,
                          height: getVerticalSize(16),
                          width: getHorizontalSize(152),
                          margin: getMargin(top: 24, bottom: 5))
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
