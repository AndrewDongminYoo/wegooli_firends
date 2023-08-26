import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 169,
            ),
            child: Padding(
              padding: getPadding(
                left: 81,
                right: 81,
                bottom: 225,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_friends".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        right: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_by".tr,
                            style: CustomTextStyles
                                .titleSmallNanumSquareRoundOnPrimary,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationOnprimary,
                            height: getVerticalSize(11),
                            width: getHorizontalSize(53),
                            margin: getMargin(
                              left: 6,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img1,
                    height: getVerticalSize(93),
                    width: getHorizontalSize(166),
                    margin: getMargin(
                      top: 144,
                    ),
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
