// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';
import '/core/app_export.dart';
import '/gen/assets.gen.dart';

class SharedCalendar extends StatelessWidget {
  SharedCalendar({Key? key})
      : super(
          key: key,
        );

  final TeamScheduleController controller = Get.put(TeamScheduleController());

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
              top: 21,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 16,
                    ),
                    child: Text(
                      "lbl50".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumBlack900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.04,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 12,
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: theme.colorScheme.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.circleBorder25,
                              ),
                              child: Container(
                                height: getSize(
                                  50,
                                ),
                                width: getSize(
                                  50,
                                ),
                                padding: getPadding(
                                  all: 4,
                                ),
                                decoration: AppDecoration.fill1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder25,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      imagePath: Assets.images.imgAvatar4.path,
                                      height: getSize(
                                        42,
                                      ),
                                      width: getSize(
                                        42,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          21,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "홍길동", // FIXME
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
                        Padding(
                          padding: getPadding(
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.deepOrangeA200,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder25,
                                ),
                                child: Container(
                                  height: getSize(
                                    50,
                                  ),
                                  width: getSize(
                                    50,
                                  ),
                                  padding: getPadding(
                                    all: 4,
                                  ),
                                  decoration: AppDecoration.fill2.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25,
                                  ),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            Assets.images.imgAvatar4.path,
                                        height: getSize(
                                          42,
                                        ),
                                        width: getSize(
                                          42,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            21,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "김첨지",
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
                        Padding(
                          padding: getPadding(
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.deepPurpleA200,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder25,
                                ),
                                child: Container(
                                  height: getSize(
                                    50,
                                  ),
                                  width: getSize(
                                    50,
                                  ),
                                  padding: getPadding(
                                    all: 4,
                                  ),
                                  decoration: AppDecoration.fill3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25,
                                  ),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            Assets.images.imgAvatar1.path,
                                        height: getSize(
                                          42,
                                        ),
                                        width: getSize(
                                          42,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            21,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "김영희",
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
                        Padding(
                          padding: getPadding(
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 48,
                                width: 48,
                                padding: getPadding(
                                  all: 13,
                                ),
                                child: CustomImageView(
                                  svgPath: Assets.svg.imgGrid.path,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  "lbl54".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallBlack900
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.02,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 21,
                    ),
                    child: Text(
                      "lbl46".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumBlack900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.04,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 16,
                        top: 12,
                        right: 16,
                      ),
                      padding: getPadding(
                        all: 22,
                      ),
                      decoration: AppDecoration.outline1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 2,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: Assets.svg.imgArrowLeft.path,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                  margin: getMargin(
                                    bottom: 1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 80,
                                  ),
                                  child: Text(
                                    '2023년 8월',
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
                                CustomImageView(
                                  svgPath: Assets.svg.imgArrowLeft.path,
                                  height: getSize(
                                    18,
                                  ),
                                  width: getSize(
                                    18,
                                  ),
                                  margin: getMargin(
                                    left: 80,
                                    bottom: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 28,
                              bottom: 7,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: getVerticalSize(
                                    237,
                                  ),
                                  width: getHorizontalSize(
                                    79,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                              ),
                                              child: Text(
                                                "일",
                                                overflow: TextOverflow.ellipsis,
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
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                top: 26,
                                              ),
                                              child: Text(
                                                "30",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray50002
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.02,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                79,
                                              ),
                                              margin: getMargin(
                                                top: 23,
                                              ),
                                              padding: getPadding(
                                                left: 15,
                                                top: 4,
                                                right: 15,
                                                bottom: 4,
                                              ),
                                              decoration:
                                                  AppDecoration.fill1.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10,
                                              ),
                                              child: Text(
                                                "6",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.02,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 24,
                                              ),
                                              child: Text(
                                                '13',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.02,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 11,
                                                top: 29,
                                              ),
                                              child: Text(
                                                "20",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.02,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 28,
                                              ),
                                              child: Text(
                                                "27",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.02,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            right: 12,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "월",
                                                overflow: TextOverflow.ellipsis,
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
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 1,
                                                    top: 25,
                                                  ),
                                                  child: Text(
                                                    "31",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallOnPrimary
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                        0.02,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 29,
                                                ),
                                                child: Text(
                                                  "7",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.02,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 29,
                                                ),
                                                child: Text(
                                                  "14",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.02,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 1,
                                                    top: 28,
                                                  ),
                                                  child: Text(
                                                    "21",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                        0.02,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 29,
                                                ),
                                                child: Text(
                                                  "28",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodySmall!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.02,
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
                                Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "화",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.03,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 25,
                                          ),
                                          child: Text(
                                            '1',
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.02,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          3,
                                        ),
                                        width: getSize(
                                          3,
                                        ),
                                        margin: getMargin(
                                          top: 24,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "8",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "15",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "22",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "29",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
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
                                    236,
                                  ),
                                  width: getHorizontalSize(
                                    81,
                                  ),
                                  margin: getMargin(
                                    left: 13,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: getVerticalSize(
                                            236,
                                          ),
                                          width: getHorizontalSize(
                                            81,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: getPadding(
                                                    bottom: 39,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          81,
                                                        ),
                                                        padding: getPadding(
                                                          left: 13,
                                                          top: 4,
                                                          right: 13,
                                                          bottom: 4,
                                                        ),
                                                        decoration:
                                                            AppDecoration.fill2
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10,
                                                        ),
                                                        child: Text(
                                                          "16",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimaryContainer
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              0.02,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            getHorizontalSize(
                                                          81,
                                                        ),
                                                        margin: getMargin(
                                                          top: 19,
                                                        ),
                                                        padding: getPadding(
                                                          left: 12,
                                                          top: 4,
                                                          right: 12,
                                                          bottom: 4,
                                                        ),
                                                        decoration:
                                                            AppDecoration.fill3
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10,
                                                        ),
                                                        child: Text(
                                                          "23",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimaryContainer
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              0.02,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 13,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "수",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleMedium!
                                                            .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                            0.03,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 25,
                                                        ),
                                                        child: Text(
                                                          "2",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodySmall!
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              0.02,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 24,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              height: getSize(
                                                                3,
                                                              ),
                                                              width: getSize(
                                                                3,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    1,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: getSize(
                                                                3,
                                                              ),
                                                              width: getSize(
                                                                3,
                                                              ),
                                                              margin: getMargin(
                                                                left: 2,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: appTheme
                                                                    .deepOrangeA200,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    1,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "9",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodySmall!
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              0.02,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    right: 12,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "목",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
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
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 25,
                                                          ),
                                                          child: Text(
                                                            "3",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall!
                                                                .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                0.02,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(
                                                          3,
                                                        ),
                                                        width: getSize(
                                                          3,
                                                        ),
                                                        margin: getMargin(
                                                          top: 24,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(
                                                          3,
                                                        ),
                                                        width: getSize(
                                                          3,
                                                        ),
                                                        margin: getMargin(
                                                          left: 5,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .deepOrangeA200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                          height: getSize(
                                                            3,
                                                          ),
                                                          width: getSize(
                                                            3,
                                                          ),
                                                          margin: getMargin(
                                                            right: 1,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .deepPurpleA200,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                1,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "10",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall!
                                                                .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                0.02,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(
                                                          3,
                                                        ),
                                                        width: getSize(
                                                          3,
                                                        ),
                                                        margin: getMargin(
                                                          left: 5,
                                                          top: 18,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .deepPurpleA200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 7,
                                                          ),
                                                          child: Text(
                                                            "17",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer
                                                                .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                0.02,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 28,
                                                        ),
                                                        child: Text(
                                                          "24",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimaryContainer
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              0.02,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 1,
                                                          top: 29,
                                                        ),
                                                        child: Text(
                                                          "31",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .bodySmall!
                                                              .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                              0.02,
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
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                          ),
                                          child: Text(
                                            "30",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.02,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 13,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "금",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.03,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 25,
                                        ),
                                        child: Text(
                                          "4",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 29,
                                          ),
                                          child: Text(
                                            "11",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.02,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "18",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "25",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 29,
                                          ),
                                          child: Text(
                                            '1',
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray50002
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.02,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 26,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "토",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium!
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.03,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 26,
                                        ),
                                        child: Text(
                                          "5",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "12",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "19",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 29,
                                        ),
                                        child: Text(
                                          "26",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 28,
                                        ),
                                        child: Text(
                                          "2",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray50002
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.02,
                                            ),
                                          ),
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
                  ),
                  CustomElevatedButton(
                    text: "lbl62".tr,
                    margin: getMargin(
                      left: 16,
                      top: 30,
                      right: 16,
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.maxFinite,
                      getVerticalSize(
                        52,
                      ),
                    ))),
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                    alignment: Alignment.center,
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
