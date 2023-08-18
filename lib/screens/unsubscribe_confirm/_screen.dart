// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class UnsubscriptionConfirm
    extends GetWidget<UnsubscriptionConfirmController> {
  const UnsubscriptionConfirm({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl94".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 52, right: 16, bottom: 52),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: Assets.images.imgCrying.path,
                          height: getVerticalSize(123),
                          width: getHorizontalSize(184)),
                      Container(
                          width: getHorizontalSize(179),
                          margin: getMargin(top: 50),
                          child: Text("msg10".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumBlack900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.04)))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("msg_2023_8_4".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargeBlack900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.03)))),
                      Padding(
                          padding: getPadding(top: 87, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    text: "lbl95".tr,
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
  onTabBackButton() {
    Get.back();
  }
}
