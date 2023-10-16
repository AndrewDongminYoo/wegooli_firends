// 🐦 Flutter imports:
import 'controller/splash_screen_two_controller.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreenTwoScreen extends GetWidget<SplashScreenTwoController> {
  const SplashScreenTwoScreen({Key? key}) : super(key: key);

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
                        colors: [appTheme.yellow600, appTheme.yellow300])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 220.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 116.h, right: 116.h, bottom: 113.v),
                                  child: Column(children: [
                                    SizedBox(
                                        width: 128.h,
                                        child: Text('lbl87'.tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme
                                                .textTheme.headlineLarge!
                                                .copyWith(height: 1.38))),
                                    SizedBox(height: 226.v),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgFriendsOnPrimary,
                                        height: 21.v,
                                        width: 120.h)
                                  ]))))
                    ])))));
  }
}
