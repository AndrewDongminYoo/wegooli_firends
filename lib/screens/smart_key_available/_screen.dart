// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';
import 'models/_model.dart';

class SmartKeyAvailablePage extends StatelessWidget {
  SmartKeyAvailablePage({Key? key})
      : super(
          key: key,
        );

  final SmartKeyAvailableController controller =
      Get.put(SmartKeyAvailableController(SmartKeyAvailableModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(
            45,
          ),
          centerTitle: true,
          title: AppbarImage(
            height: getVerticalSize(
              17,
            ),
            width: getHorizontalSize(
              88,
            ),
            svgPath: Assets.svg.imgFriendsTypo.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 24,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
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
                          imagePath: Assets.images.imgCarMorUrban.path,
                          height: getVerticalSize(
                            92,
                          ),
                          width: getHorizontalSize(
                            139,
                          ),
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
                                "lbl_33".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.03,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "12가 3456",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOnPrimary
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.02,
                                    ),
                                  ),
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
                                      svgPath: Assets.svg.imgGasStation.path,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 7,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_203".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.02,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: Assets.svg.imgArrowLeft.path,
                                      height: getSize(
                                        18,
                                      ),
                                      width: getSize(
                                        18,
                                      ),
                                      margin: getMargin(
                                        left: 54,
                                        top: 2,
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
                          "lbl68".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.02,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 5,
                          ),
                          child: Text(
                            "|",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.02,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            4,
                          ),
                          width: getSize(
                            4,
                          ),
                          margin: getMargin(
                            left: 5,
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.green500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                2,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                          ),
                          child: Text(
                            "lbl70".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodySmall!.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.02,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      8,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 31,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                      ),
                      child: Text(
                        "lbl71".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleMediumBlack900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 22,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: getSize(
                            130,
                          ),
                          width: getSize(
                            130,
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
                                  decoration: AppDecoration.shadow.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder65,
                                  ),
                                  child: Container(
                                    height: getSize(
                                      120,
                                    ),
                                    width: getSize(
                                      120,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          60,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: appTheme.blueGray30033,
                                        width: getHorizontalSize(
                                          1,
                                        ),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: Assets.svg.imgUnlocked.path,
                                        height: getSize(
                                          46,
                                        ),
                                        width: getSize(
                                          46,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl72".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.03,
                                            ),
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
                        Container(
                          height: getSize(
                            130,
                          ),
                          width: getSize(
                            130,
                          ),
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
                                  decoration: AppDecoration.shadow.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder65,
                                  ),
                                  child: Container(
                                    height: getSize(
                                      120,
                                    ),
                                    width: getSize(
                                      120,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          60,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: appTheme.blueGray30033,
                                        width: getHorizontalSize(
                                          1,
                                        ),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: Assets.svg.imgLocked.path,
                                        height: getSize(
                                          46,
                                        ),
                                        width: getSize(
                                          46,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl73".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.03,
                                            ),
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
                  Padding(
                    padding: getPadding(
                      left: 40,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            all: 5,
                          ),
                          decoration: AppDecoration.shadow.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder65,
                          ),
                          child: Container(
                            padding: getPadding(
                              left: 37,
                              top: 24,
                              right: 37,
                              bottom: 24,
                            ),
                            decoration: AppDecoration.outline1.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder60,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: Assets.svg.imgTriangle.path,
                                  height: getSize(
                                    46,
                                  ),
                                  width: getSize(
                                    46,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "lbl74".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        theme.textTheme.titleMedium!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.03,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                            borderRadius: BorderRadiusStyle.circleBorder65,
                          ),
                          child: Container(
                            padding: getPadding(
                              left: 37,
                              top: 24,
                              right: 37,
                              bottom: 24,
                            ),
                            decoration: AppDecoration.outline1.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder60,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: Assets.svg.imgCampaign.path,
                                  height: getSize(
                                    46,
                                  ),
                                  width: getSize(
                                    46,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Text(
                                    "lbl75".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        theme.textTheme.titleMedium!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.03,
                                      ),
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
                  CustomElevatedButton(
                    text: "lbl76".tr,
                    margin: getMargin(
                      left: 16,
                      top: 30,
                      right: 16,
                    ),
                    leftIcon: Container(
                      margin: getMargin(
                        right: 1,
                      ),
                      child: CustomImageView(
                        svgPath: Assets.svg.imgEdit.path,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.maxFinite,
                      getVerticalSize(
                        52,
                      ),
                    ))),
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
