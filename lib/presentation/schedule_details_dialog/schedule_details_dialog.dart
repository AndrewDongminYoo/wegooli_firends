import 'controller/schedule_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ScheduleDetailsDialog extends StatelessWidget {
  ScheduleDetailsDialog(this.controller, {Key? key}) : super(key: key);

  ScheduleDetailsController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: getMargin(left: 16, right: 16, bottom: 238),
            padding: getPadding(all: 20),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgCloseGray400,
                      height: getSize(15),
                      width: getSize(15),
                      alignment: Alignment.centerRight,
                      onTap: () {
                        onTapImgCloseone();
                      }),
                  Padding(
                      padding: getPadding(top: 6),
                      child: Text("lbl109".tr,
                          style: CustomTextStyles.titleMedium18)),
                  Container(
                      margin: getMargin(top: 22),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Container(
                          decoration: AppDecoration.shadow.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getVerticalSize(75),
                                    width: getHorizontalSize(9),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(
                                                getHorizontalSize(10))))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(
                                            left: 10, top: 15, bottom: 15),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl110".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimary),
                                              Padding(
                                                  padding: getPadding(top: 8),
                                                  child: Text(
                                                      "msg_8_16_15_20".tr,
                                                      style: theme
                                                          .textTheme.bodyLarge))
                                            ]))),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgOverflowmenuvertical,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin:
                                        getMargin(left: 27, top: 6, bottom: 51))
                              ]))),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(top: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Container(
                          height: getVerticalSize(75),
                          width: getHorizontalSize(288),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(75),
                                    width: getHorizontalSize(288),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.black900
                                                  .withOpacity(0.1),
                                              spreadRadius:
                                                  getHorizontalSize(2),
                                              blurRadius: getHorizontalSize(2),
                                              offset: Offset(2, 2))
                                        ]),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        child: LinearProgressIndicator(
                                            value: 0.03,
                                            backgroundColor: theme
                                                .colorScheme.onPrimaryContainer,
                                            valueColor: AlwaysStoppedAnimation<
                                                    Color>(
                                                appTheme.deepOrangeA200))))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl111".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("msg_8_16_15_20".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])))
                          ]))),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(top: 10, bottom: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Container(
                          height: getVerticalSize(75),
                          width: getHorizontalSize(288),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(75),
                                    width: getHorizontalSize(288),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.black900
                                                  .withOpacity(0.1),
                                              spreadRadius:
                                                  getHorizontalSize(2),
                                              blurRadius: getHorizontalSize(2),
                                              offset: Offset(2, 2))
                                        ]),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10)),
                                        child: LinearProgressIndicator(
                                            value: 0.03,
                                            backgroundColor: theme
                                                .colorScheme.onPrimaryContainer,
                                            valueColor: AlwaysStoppedAnimation<
                                                    Color>(
                                                appTheme.deepPurpleA200))))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl112".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimary),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("msg_8_16_15_20".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])))
                          ])))
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapImgCloseone() {
    Get.back();
  }
}
