// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

// ignore: must_be_immutable
class ReservationDatetimePickerBottomSheet extends StatelessWidget {
  ReservationDatetimePickerBottomSheet(this.controller, {Key? key})
      : super(key: key);

  ReservationDatetimePickerController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: SingleChildScrollView(
            child: Container(
                padding: getPadding(top: 16, bottom: 16),
                decoration: AppDecoration.fill
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: Assets.svg.imgCloseWhite.path,
                          height: getSize(13),
                          width: getSize(13),
                          alignment: Alignment.centerRight,
                          margin: getMargin(right: 16),
                          onTap: () {
                            onTapImgClose();
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(213),
                              margin: getMargin(left: 16, top: 16),
                              child: Text("msg_2_8_1_16_00".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleMediumBlack900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.04))))),
                      Container(
                          height: getVerticalSize(8),
                          width: double.maxFinite,
                          margin: getMargin(top: 16),
                          decoration: BoxDecoration(color: appTheme.gray100)),
                      Padding(
                          padding: getPadding(left: 16, top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl91".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
                                Spacer(),
                                Text("lbl_8_1_16_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
                                CustomImageView(
                                    svgPath: Assets.svg.imgArrowLeft.path,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(left: 10, bottom: 1))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 68, top: 44),
                              child: Row(children: [
                                Text("lbl_8_12".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeOnPrimary
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
                                Padding(
                                    padding: getPadding(left: 81),
                                    child: Text("15",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03))))
                              ]))),
                      Padding(
                          padding: getPadding(left: 40, top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: getHorizontalSize(80),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary)),
                                SizedBox(
                                    width: getHorizontalSize(100),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary,
                                        indent: getHorizontalSize(20))),
                                SizedBox(
                                    width: getHorizontalSize(100),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary,
                                        indent: getHorizontalSize(20)))
                              ])),
                      Padding(
                          padding: getPadding(left: 67, top: 16, right: 70),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_8_22".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.03))),
                                Text("16",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.03))),
                                Text('00',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        letterSpacing: getHorizontalSize(0.03)))
                              ])),
                      Padding(
                          padding: getPadding(left: 40, top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: getHorizontalSize(80),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary)),
                                SizedBox(
                                    width: getHorizontalSize(100),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary,
                                        indent: getHorizontalSize(20))),
                                SizedBox(
                                    width: getHorizontalSize(100),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: theme.colorScheme.primary,
                                        indent: getHorizontalSize(20)))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 16, right: 71),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("17",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03))),
                                    Padding(
                                        padding: getPadding(left: 83),
                                        child: Text("10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyLargeOnPrimary
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.03))))
                                  ]))),
                      Container(
                          height: getVerticalSize(8),
                          width: double.maxFinite,
                          margin: getMargin(top: 41),
                          decoration: BoxDecoration(color: appTheme.gray100)),
                      Padding(
                          padding: getPadding(left: 16, top: 18, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl91".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
                                CustomDropDown(
                                    width: getHorizontalSize(114),
                                    icon: Container(
                                        margin: getMargin(left: 10),
                                        child: CustomImageView(
                                            svgPath:
                                                Assets.svg.imgArrowLeft.path)),
                                    hintText: "lbl_8_1_18_00".tr,
                                    textStyle: theme.textTheme.titleMedium!,
                                    items: controller
                                        .reservationDatetimePickerModelObj
                                        .value
                                        .dropdownItemList
                                        .value,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(8),
                          width: double.maxFinite,
                          margin: getMargin(top: 17),
                          decoration: BoxDecoration(color: appTheme.gray100)),
                      Padding(
                          padding: getPadding(left: 16, top: 24, bottom: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    text: "lbl92".tr,
                                    buttonStyle: CustomButtonStyles
                                        .fillGray400TL26
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(104),
                                                        getVerticalSize(52)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleMedium18),
                                CustomElevatedButton(
                                    text: "lbl93".tr,
                                    margin: getMargin(left: 8),
                                    buttonStyle: CustomButtonStyles.fillPrimary
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(216),
                                                        getVerticalSize(52)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleMedium18)
                              ]))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgClose() {
    Get.back();
  }
}