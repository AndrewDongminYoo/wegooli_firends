// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import 'controller/splash_screen_one_controller.dart';

// ignore_for_file: must_be_immutable
class SplashScreenOneScreen extends GetWidget<SplashScreenOneController> {
  const SplashScreenOneScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0, 0),
              end: const Alignment(1, 1),
              colors: [
                appTheme.yellow600,
                appTheme.yellow300,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 289.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 94.h,
                        right: 94.h,
                        bottom: 360.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgFriendsOnPrimary,
                            height: 33.v,
                            width: 172.h,
                          ),
                          SizedBox(height: 14.v),
                          Text(
                            'lbl86'.tr,
                            style: CustomTextStyles
                                .titleSmallNanumSquareRoundBlack900,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
