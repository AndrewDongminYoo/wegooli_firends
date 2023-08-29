import 'controller/subscription_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class SubscriptionInfoScreen extends GetWidget<SubscriptionInfoController> {
  const SubscriptionInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(34),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimary,
                    margin: getMargin(left: 16, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl81".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCar16x65,
                          height: getVerticalSize(16),
                          width: getHorizontalSize(65),
                          margin: getMargin(left: 2)),
                      Container(
                          margin: getMargin(top: 15, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Container(
                              padding: getPadding(
                                  left: 10, top: 20, right: 10, bottom: 20),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup683),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.img21,
                                        height: getVerticalSize(96),
                                        width: getHorizontalSize(167),
                                        margin: getMargin(top: 10)),
                                    Padding(
                                        padding: getPadding(top: 29),
                                        child: Divider(
                                            color: appTheme.blueGray30033)),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 24, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgTicketOnprimary16x29,
                                                  height: getVerticalSize(16),
                                                  width: getHorizontalSize(29)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgTelevision,
                                                  height: getVerticalSize(10),
                                                  width: getHorizontalSize(53),
                                                  margin: getMargin(top: 4))
                                            ])),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgGroup1903861x286,
                                        height: getVerticalSize(61),
                                        width: getHorizontalSize(286),
                                        margin: getMargin(top: 20)),
                                    CustomElevatedButton(
                                        height: getVerticalSize(48),
                                        width: getHorizontalSize(160),
                                        text: "lbl106".tr,
                                        margin: getMargin(top: 24, right: 9),
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimaryTL5,
                                        buttonTextStyle:
                                            CustomTextStyles.titleMedium16,
                                        alignment: Alignment.centerRight)
                                  ])))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
