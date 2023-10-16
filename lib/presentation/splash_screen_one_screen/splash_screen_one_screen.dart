import 'package:wegooli_friends_app/presentation/splash_screen_one_screen/bloc/splash_screen_one_bloc.dart';
import 'package:wegooli_friends_app/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

class SplashScreenOneScreen extends StatelessWidget {
  const SplashScreenOneScreen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreenOneBloc>(
      create: (context) => SplashScreenOneBloc(SplashScreenOneState(
        splashScreenOneModelObj: SplashScreenOneModel(),
      ))
        ..add(SplashScreenOneInitialEvent()),
      child: const SplashScreenOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SplashScreenOneBloc, SplashScreenOneState>(
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
                                'lbl96'.tr,
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
      },
    );
  }
}
