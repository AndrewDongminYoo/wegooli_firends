import 'controller/car_status_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_bottom_bar.dart';

class CarStatusInfoScreen extends GetWidget<CarStatusInfoController> {
  const CarStatusInfoScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl128".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 13),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle4640,
                                  height: getVerticalSize(132),
                                  width: getHorizontalSize(200)),
                              Container(
                                  height: getVerticalSize(8),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 20),
                                  decoration:
                                      BoxDecoration(color: appTheme.gray100)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 21),
                                      child: Text("lbl129".tr,
                                          style:
                                              CustomTextStyles.titleMedium18))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 14, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl130".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl_32".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 3, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl131".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl132".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 3, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl133".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl134".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Container(
                                  height: getVerticalSize(8),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 21),
                                  decoration:
                                      BoxDecoration(color: appTheme.gray100)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 16, top: 21),
                                      child: Text("lbl135".tr,
                                          style:
                                              CustomTextStyles.titleMedium18))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 14, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl136".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl_2023_08_01".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 4, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl137".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl_2023_08_01".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 3, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl138".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl139".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 3, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl140".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary),
                                        Text("lbl_42".tr,
                                            style: theme.textTheme.bodyLarge)
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 31, right: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder33),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgContactsupport,
                                                height: getSize(30),
                                                width: getSize(30)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 3),
                                                child: Text("lbl16".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallBlack900))
                                          ])))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
