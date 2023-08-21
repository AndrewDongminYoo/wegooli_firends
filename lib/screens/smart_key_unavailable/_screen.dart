// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/screens/screens.dart';
import '/core/app_export.dart';
import '/gen/assets.gen.dart';

// ignore: must_be_immutable
class SmartKeyNotAvailable extends GetWidget<SmartKeyNotAvailableController> {
  const SmartKeyNotAvailable({Key? key})
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
                                      svgPath: Assets.svg.imgGasCharger.path,
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
                            color: appTheme.red700,
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
                            "lbl77".tr,
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
                  CustomImageView(
                    svgPath: Assets.svg.imgCarYellow.path,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
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
                      height: getVerticalSize(
                        10,
                      ),
                      width: getHorizontalSize(
                        328,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray30033,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5,
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5,
                          ),
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
                          "12:00 PM",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.02,
                            ),
                          ),
                        ),
                        Text(
                          "13:00",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.02,
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
                      top: 21,
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
                  Container(
                    height: getVerticalSize(
                      300,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 12,
                    ),
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
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  120,
                                                ),
                                                width: getSize(
                                                  120,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      60,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color:
                                                        appTheme.blueGray30033,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: Assets.svg
                                                        .imgUnlockYellow.path,
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
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
                                              decoration:
                                                  AppDecoration.shadow.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder65,
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  120,
                                                ),
                                                width: getSize(
                                                  120,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      60,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color:
                                                        appTheme.blueGray30033,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: Assets
                                                        .svg.imgLocked.path,
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
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
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          right: 10,
                                        ),
                                        padding: getPadding(
                                          all: 5,
                                        ),
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
                                                svgPath: Assets
                                                    .svg.imgLightOnYellow.path,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
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
                                          left: 10,
                                        ),
                                        padding: getPadding(
                                          all: 5,
                                        ),
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
                                                svgPath: Assets
                                                    .svg.imgCampaignYellow.path,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
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
                              text: "lbl78".tr,
                              buttonStyle: CustomButtonStyles.fillOnPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                double.maxFinite,
                                getVerticalSize(
                                  44,
                                ),
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
                    text: "lbl76".tr,
                    margin: getMargin(
                      left: 16,
                      top: 20,
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
      case BottomBarEnum.sharedCalendar:
        return AppRoutes.sharedCalendar;
      case BottomBarEnum.dashChat:
        return AppRoutes.chatWithFriends;
      case BottomBarEnum.smartKey:
        return AppRoutes.smartKeyAvailable;
      case BottomBarEnum.profile:
        return AppRoutes.myPage;
      default:
        return AppRoutes.sharedCalendar;
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chatWithFriends:
        // TODO
        // 로그인한 사용자 정보 넣기 !!
        // 팀 정보 넣기
        return DashChatWithFriendsPage(
          appId: "36FB6EA9-27A7-44F1-9696-72E1E21033B6",
          userId: "me",
          otherUserIds: ["user1", "user2"],
        );
      case AppRoutes.smartKeyAvailable:
        return SmartKeyAvailablePage();
      case AppRoutes.myPage:
        return MyProfilePage();
      default:
        return SharedCalendar();
    }
  }
}
