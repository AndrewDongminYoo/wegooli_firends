import 'controller/k1_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/shared_schedule_page/shared_schedule_page.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class K1Screen extends GetWidget<K1Controller> {
  const K1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          leadingWidth: getHorizontalSize(104),
          leading: AppbarImage(
            svgPath: ImageConstant.imgFriends,
            margin: getMargin(
              left: 16,
              top: 14,
              bottom: 14,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgMenuOnprimary,
              margin: getMargin(
                left: 9,
                top: 13,
                right: 9,
                bottom: 12,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 30,
            bottom: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getSize(80),
                width: getSize(80),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse280x80,
                      height: getSize(80),
                      width: getSize(80),
                      radius: BorderRadius.circular(
                        getHorizontalSize(40),
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomIconButton(
                      height: getSize(25),
                      width: getSize(25),
                      padding: getPadding(
                        all: 4,
                      ),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCameraBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgSortOnprimary,
                height: getVerticalSize(16),
                width: getHorizontalSize(43),
                margin: getMargin(
                  top: 20,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.img01012345678,
                height: getVerticalSize(11),
                width: getHorizontalSize(112),
                margin: getMargin(
                  top: 10,
                ),
              ),
              Container(
                height: getVerticalSize(8),
                width: double.maxFinite,
                margin: getMargin(
                  top: 25,
                ),
                decoration: BoxDecoration(
                  color: appTheme.gray100,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgEdit,
                      height: getSize(24),
                      width: getSize(24),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgOnprimary,
                      height: getVerticalSize(13),
                      width: getHorizontalSize(88),
                      margin: getMargin(
                        left: 10,
                        bottom: 10,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        top: 3,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 30,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgInformation,
                      height: getSize(24),
                      width: getSize(24),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCar14x58,
                      height: getVerticalSize(14),
                      width: getHorizontalSize(58),
                      margin: getMargin(
                        left: 10,
                        bottom: 10,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        top: 3,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 30,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMenuOnprimary,
                      height: getSize(24),
                      width: getSize(24),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTicket,
                      height: getVerticalSize(13),
                      width: getHorizontalSize(58),
                      margin: getMargin(
                        left: 10,
                        bottom: 10,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        top: 3,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 30,
                  right: 16,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSettings,
                      height: getSize(24),
                      width: getSize(24),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgSettingsOnprimary,
                      height: getVerticalSize(13),
                      width: getHorizontalSize(25),
                      margin: getMargin(
                        left: 10,
                        bottom: 10,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        top: 3,
                        bottom: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
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
}
