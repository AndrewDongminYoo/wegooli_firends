// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class ReservationsCheckingPageDialog extends StatelessWidget {
  ReservationsCheckingPageDialog(this.controller, {Key? key}) : super(key: key);

  ReservationsCheckingPageController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: getMargin(left: 16, right: 16, bottom: 288),
            padding: getPadding(all: 15),
            decoration: AppDecoration.fill
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 6),
                                child: Text("viewSchedules".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.04)))),
                            CustomImageView(
                                svgPath: Assets.svg.imgCloseGray400Sharp.path,
                                height: getSize(13),
                                width: getSize(13),
                                margin: getMargin(bottom: 15),
                                onTap: () {
                                  onTapImgClose();
                                })
                          ])),
                  Padding(
                      padding: getPadding(left: 5, top: 17, bottom: 10),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: theme.colorScheme.primary,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder25),
                                            child: Container(
                                                height: getSize(50),
                                                width: getSize(50),
                                                padding: getPadding(all: 4),
                                                decoration: AppDecoration.fill1
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder25),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: Assets.images
                                                          .imgAvatar4.path,
                                                      height: getSize(42),
                                                      width: getSize(42),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  21)),
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                        Container(
                                            width: getHorizontalSize(79),
                                            margin: getMargin(
                                                left: 10, top: 7, bottom: 6),
                                            child: Text(
                                                "8.1 (화) 12:00 ~\n 8.1 (화) 13:00",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.02))))
                                      ]),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: appTheme.deepOrangeA200,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25),
                                                child: Container(
                                                    height: getSize(50),
                                                    width: getSize(50),
                                                    padding: getPadding(all: 4),
                                                    decoration: AppDecoration
                                                        .fill2
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder25),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath: Assets
                                                              .images
                                                              .imgAvatar4
                                                              .path,
                                                          height: getSize(42),
                                                          width: getSize(42),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      21)),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))),
                                            Container(
                                                width: getHorizontalSize(79),
                                                margin: getMargin(
                                                    left: 10,
                                                    top: 7,
                                                    bottom: 6),
                                                child: Text(
                                                    "8.1 (화) 15:00 ~\n 8.1 (화) 16:00",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.02))))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: appTheme.deepPurpleA200,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25),
                                                child: Container(
                                                    height: getSize(50),
                                                    width: getSize(50),
                                                    padding: getPadding(all: 4),
                                                    decoration: AppDecoration
                                                        .fill3
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder25),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath: Assets
                                                              .images
                                                              .imgAvatar1
                                                              .path,
                                                          height: getSize(42),
                                                          width: getSize(42),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      21)),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))),
                                            Container(
                                                width: getHorizontalSize(79),
                                                margin: getMargin(
                                                    left: 10,
                                                    top: 7,
                                                    bottom: 6),
                                                child: Text(
                                                    "8.1 (화) 17:00 ~\n 8.1 (화) 18:00",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.02))))
                                          ]))
                                ]),
                            CustomElevatedButton(
                                text: "edit".tr,
                                margin:
                                    getMargin(left: 21, top: 15, bottom: 123),
                                buttonStyle: CustomButtonStyles
                                    .fillPrimaryTL5
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(getHorizontalSize(55),
                                                    getVerticalSize(32)))),
                                buttonTextStyle:
                                    CustomTextStyles.bodySmallBlack900),
                            CustomElevatedButton(
                                text: "delete".tr,
                                margin:
                                    getMargin(left: 5, top: 15, bottom: 123),
                                buttonStyle: CustomButtonStyles.fillGray400
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(getHorizontalSize(55),
                                                    getVerticalSize(32)))),
                                buttonTextStyle:
                                    CustomTextStyles.bodySmallBlack900)
                          ]))
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgClose() {
    Get.back();
  }
}
