// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class CarStateInformation extends GetWidget<CarStateInformationController> {
  const CarStateInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: AppbarImage(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "subscription_information".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 2),
                          child: Text("car_info".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumBlack900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.04)))),
                      Container(
                          margin: getMargin(top: 12),
                          padding: getPadding(
                              left: 80, top: 30, right: 80, bottom: 30),
                          decoration: AppDecoration.fill5.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: CustomImageView(
                              imagePath: Assets.images.imgCarAllNewK3.path,
                              height: getVerticalSize(96),
                              width: getHorizontalSize(167))),
                      Container(
                          margin: getMargin(bottom: 5),
                          padding: getPadding(top: 20, bottom: 20),
                          decoration: AppDecoration.fill.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("모닝",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleMedium18
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.04))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 2),
                                              child: Text("12가 3456",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimary
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.02))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl82".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimary
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03))),
                                          Text('150,000 원',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl83".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimary
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03))),
                                          Text("2023.07.01~2023.08.01",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl84".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimary
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03))),
                                          Text('2023.08.20',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))
                                        ])),
                                CustomElevatedButton(
                                    text: "lbl85".tr,
                                    margin: getMargin(top: 21),
                                    buttonStyle: CustomButtonStyles
                                        .fillPrimaryTL5
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(160),
                                                        getVerticalSize(48)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleMedium!)
                              ]))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
