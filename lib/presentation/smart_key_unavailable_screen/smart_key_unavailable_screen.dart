import 'controller/smart_key_unavailable_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image_2.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SmartKeyUnavailableScreen
    extends GetWidget<SmartKeyUnavailableController> {
  const SmartKeyUnavailableScreen({Key? key})
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
          centerTitle: true,
          title: AppbarImage2(
            svgPath: ImageConstant.imgFriends,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle4640,
                        height: getVerticalSize(92),
                        width: getHorizontalSize(139),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                          bottom: 18,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_32".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_12_34562".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgFrame19044,
                                    height: getSize(24),
                                    width: getSize(24),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 7,
                                    ),
                                    child: Text(
                                      "lbl_202".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowleftOnprimary,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(
                                      left: 54,
                                      bottom: 4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl115".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                        ),
                        child: Text(
                          "lbl116".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        height: getSize(4),
                        width: getSize(4),
                        margin: getMargin(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.red700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          "lbl124".tr,
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgTaxi,
                  height: getSize(26),
                  width: getSize(26),
                  alignment: Alignment.centerRight,
                  margin: getMargin(
                    top: 11,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    right: 16,
                  ),
                  child: Container(
                    height: getVerticalSize(10),
                    width: getHorizontalSize(328),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray30033,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(5),
                      ),
                      child: LinearProgressIndicator(
                        value: 0.57,
                        backgroundColor: appTheme.blueGray30033,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 4,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_12_00".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        "lbl_13_00".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(8),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 21,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(496),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 16,
                            top: 21,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "lbl118".tr,
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 22,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: getSize(130),
                                      width: getSize(130),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              padding: getPadding(
                                                all: 5,
                                              ),
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(120),
                                                width: getSize(120),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(60),
                                                  ),
                                                  border: Border.all(
                                                    color:
                                                        appTheme.blueGray30033,
                                                    width: getHorizontalSize(1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 42,
                                                right: 42,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgUnlocked,
                                                    height: getSize(46),
                                                    width: getSize(46),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 5,
                                                    ),
                                                    child: Text(
                                                      "lbl119".tr,
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: getSize(130),
                                      width: getSize(130),
                                      margin: getMargin(
                                        left: 20,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              padding: getPadding(
                                                all: 5,
                                              ),
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(120),
                                                width: getSize(120),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(60),
                                                  ),
                                                  border: Border.all(
                                                    color:
                                                        appTheme.blueGray30033,
                                                    width: getHorizontalSize(1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 42,
                                                right: 42,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgLocked,
                                                    height: getSize(46),
                                                    width: getSize(46),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 5,
                                                    ),
                                                    child: Text(
                                                      "lbl120".tr,
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  top: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: getSize(130),
                                      width: getSize(130),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              padding: getPadding(
                                                all: 5,
                                              ),
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(120),
                                                width: getSize(120),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(60),
                                                  ),
                                                  border: Border.all(
                                                    color:
                                                        appTheme.blueGray30033,
                                                    width: getHorizontalSize(1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 42,
                                                right: 42,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBluetooth,
                                                    height: getVerticalSize(37),
                                                    width:
                                                        getHorizontalSize(46),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 14,
                                                    ),
                                                    child: Text(
                                                      "lbl121".tr,
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 20,
                                      ),
                                      padding: getPadding(
                                        all: 5,
                                      ),
                                      decoration: AppDecoration.shadow.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder65,
                                      ),
                                      child: Container(
                                        padding: getPadding(
                                          left: 37,
                                          top: 24,
                                          right: 37,
                                          bottom: 24,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBluegray300332
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder60,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCampaign,
                                              height: getSize(46),
                                              width: getSize(46),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 5,
                                              ),
                                              child: Text(
                                                "lbl122".tr,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 16,
                            top: 50,
                            right: 16,
                            bottom: 50,
                          ),
                          decoration: AppDecoration.fillBlueGray,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomElevatedButton(
                                height: getVerticalSize(44),
                                width: getHorizontalSize(189),
                                text: "lbl125".tr,
                                margin: getMargin(
                                  top: 160,
                                ),
                                buttonStyle: CustomButtonStyles.fillOnPrimary,
                                buttonTextStyle: CustomTextStyles
                                    .bodyLargeOnPrimaryContainer,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: getMargin(
                                    top: 122,
                                  ),
                                  padding: getPadding(
                                    left: 12,
                                    top: 10,
                                    right: 12,
                                    bottom: 10,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder33,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgEditOnprimary,
                                        height: getSize(30),
                                        width: getSize(30),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl123".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
