// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class SmartKeyNotAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(45),
          centerTitle: true,
          title: CustomImageView(
            height: getVerticalSize(17),
            width: getHorizontalSize(88),
            svgPath: Assets.svg.imgFriendsTypo.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 24),
            child: Padding(
              padding: getPadding(bottom: 5),
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
                                "rayGen3".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  letterSpacing: getHorizontalSize(0.03),
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 4),
                                child: Text(
                                  "12가 3456",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOnPrimary
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(0.02),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 1),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: Assets.svg.imgGasStation.path,
                                      height: getSize(24),
                                      width: getSize(24),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 5,
                                        top: 7,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "gasoline20Percent".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.02),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: Assets.svg.imgArrowLeft.path,
                                      height: getSize(18),
                                      width: getSize(18),
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
                    padding: getPadding(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "status".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                            letterSpacing: getHorizontalSize(0.02),
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 5),
                          child: Text(
                            "|",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                              letterSpacing: getHorizontalSize(0.02),
                            ),
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
                          padding: getPadding(left: 2),
                          child: Text(
                            "hongGilDongIsUsingIt".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodySmall!.copyWith(
                              letterSpacing: getHorizontalSize(0.02),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: Assets.svg.imgTaxi.path,
                    height: getSize(26),
                    width: getSize(26),
                    alignment: Alignment.centerRight,
                    margin: getMargin(top: 11),
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
                              theme.colorScheme.primary),
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
                          "12:00 PM",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                            letterSpacing: getHorizontalSize(0.02),
                          ),
                        ),
                        Text(
                          "13:00",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                            letterSpacing: getHorizontalSize(0.02),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(8),
                    width: double.maxFinite,
                    margin: getMargin(top: 21),
                    decoration: BoxDecoration(color: appTheme.gray100),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                      ),
                      child: Text(
                        "smartKey".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleMediumBlack900.copyWith(
                          letterSpacing: getHorizontalSize(0.04),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(300),
                    width: double.maxFinite,
                    margin: getMargin(top: 12),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 40,
                              right: 40,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              padding: getPadding(all: 5),
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(120),
                                                width: getSize(120),
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer,
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
                                                    svgPath: Assets
                                                        .svg.imgUnlocked.path,
                                                    height: getSize(46),
                                                    width: getSize(46),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(top: 5),
                                                    child: Text(
                                                      "openDoor".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.03),
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
                                    SizedBox(
                                      height: getSize(130),
                                      width: getSize(130),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              padding: getPadding(all: 5),
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(120),
                                                width: getSize(120),
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer,
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
                                                    svgPath: Assets
                                                        .svg.imgLocked.path,
                                                    height: getSize(46),
                                                    width: getSize(46),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(top: 5),
                                                    child: Text(
                                                      "lockTheDoor".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.03),
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
                                Padding(
                                  padding: getPadding(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: getMargin(right: 10),
                                        padding: getPadding(all: 5),
                                        decoration:
                                            AppDecoration.shadow.copyWith(
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
                                          decoration:
                                              AppDecoration.outline1.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder60,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    Assets.svg.imgTriangle.path,
                                                height: getSize(46),
                                                width: getSize(46),
                                              ),
                                              Padding(
                                                padding: getPadding(top: 5),
                                                child: Text(
                                                  "turnOnHazardLights".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.03),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(left: 10),
                                        padding: getPadding(all: 5),
                                        decoration:
                                            AppDecoration.shadow.copyWith(
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
                                          decoration:
                                              AppDecoration.outline1.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder60,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    Assets.svg.imgCampaign.path,
                                                height: getSize(46),
                                                width: getSize(46),
                                              ),
                                              Padding(
                                                padding: getPadding(top: 5),
                                                child: Text(
                                                  "honkTheHorn".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.03),
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
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: getPadding(
                              left: 85,
                              top: 128,
                              right: 85,
                              bottom: 128,
                            ),
                            decoration: AppDecoration.fill4,
                            child: CustomElevatedButton(
                              text: "hongGilDongIsUsingIt".tr,
                              buttonStyle: CustomButtonStyles.fillOnPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                double.maxFinite,
                                getVerticalSize(44),
                              ))),
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeOnPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    text: "reportAnIncident".tr,
                    margin: getMargin(
                      left: 16,
                      top: 20,
                      right: 16,
                    ),
                    leftIcon: Container(
                      margin: getMargin(right: 1),
                      child: CustomImageView(svgPath: Assets.svg.imgEdit.path),
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.maxFinite,
                      getVerticalSize(52),
                    ))),
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                  ),
                ],
              ),
            ),
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

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.sharedSchedule:
        return AppRoutes.sharedSchedule;
      case BottomBarEnum.dashChat:
        return AppRoutes.chatWithFriends;
      case BottomBarEnum.smartKey:
        return AppRoutes.smartKeyAvailable;
      case BottomBarEnum.profile:
        return AppRoutes.myProfilePage;
      default:
        return AppRoutes.sharedSchedule;
    }
  }
}
