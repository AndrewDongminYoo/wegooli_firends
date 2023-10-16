// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/splash_screen_two_screen/bloc/splash_screen_two_bloc.dart';
import '/presentation/splash_screen_two_screen/models/splash_screen_two_model.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreenTwoBloc>(
        create: (context) => SplashScreenTwoBloc(SplashScreenTwoState(
            splashScreenTwoModelObj: SplashScreenTwoModel()))
          ..add(SplashScreenTwoInitialEvent()),
        child: const SplashScreenTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashScreenTwoBloc, SplashScreenTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomRight,
                          colors: [appTheme.yellow600, appTheme.yellow300])),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        SizedBox(height: 220.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 116.h,
                                        right: 116.h,
                                        bottom: 113.v),
                                    child: Column(children: [
                                      SizedBox(
                                          width: 128.h,
                                          child: Text('lbl97'.tr,
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
    });
  }
}
