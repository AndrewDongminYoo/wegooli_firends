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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup19058,
                height: getVerticalSize(64),
                width: getHorizontalSize(193),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.img1,
                height: getVerticalSize(93),
                width: getHorizontalSize(166),
                margin: getMargin(
                  bottom: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
