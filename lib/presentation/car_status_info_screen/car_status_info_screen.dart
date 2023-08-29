import 'controller/car_status_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/shared_schedule_page/shared_schedule_page.dart';
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
                              CustomImageView(
                                  svgPath: ImageConstant.imgCar1,
                                  height: getVerticalSize(16),
                                  width: getHorizontalSize(65),
                                  alignment: Alignment.centerLeft,
                                  margin: getMargin(left: 16, top: 24)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSort1,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(26)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCar14x67,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(66))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 9, right: 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSettings13x26,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(26)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgTicket13x25,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(25))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 10, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSort13x26,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(26)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSortOnprimary14x40,
                                            height: getVerticalSize(14),
                                            width: getHorizontalSize(40))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 10, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.img13x25,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(25)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSettingsOnprimary13x36,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(36))
                                      ])),
                              Container(
                                  height: getVerticalSize(8),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 24),
                                  decoration:
                                      BoxDecoration(color: appTheme.gray100)),
                              CustomImageView(
                                  svgPath: ImageConstant.img16x64,
                                  height: getVerticalSize(16),
                                  width: getHorizontalSize(64),
                                  alignment: Alignment.centerLeft,
                                  margin: getMargin(left: 16, top: 24)),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 20, right: 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCut13x99,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(99)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCarOnprimary11x77,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(77))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 10, right: 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCut13x84,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(84)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCarOnprimary11x77,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(77))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 10, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSignal13x70,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(70)),
                                        CustomImageView(
                                            svgPath: ImageConstant.img13x26,
                                            height: getVerticalSize(13),
                                            width: getHorizontalSize(26))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 34, right: 16),
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 10),
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder35),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgContactsupport,
                                                height: getSize(30),
                                                width: getSize(30)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgBlack90010x39,
                                                height: getVerticalSize(10),
                                                width: getHorizontalSize(39),
                                                margin: getMargin(
                                                    top: 3, bottom: 6))
                                          ])))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.sharedSchedulePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.sharedSchedulePage:
        return SharedSchedulePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
