// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';
import 'controller/splash_screen_two_controller.dart';

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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFDC27), Color(0xFFFFF96D)],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 220.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 116.h, right: 116.h, bottom: 113.v),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 128.h,
                            child: Text(
                              '우리가\n만드는\n카셰어링',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: textTheme.headlineLarge!
                                  .copyWith(height: 1.38),
                            ),
                          ),
                          SizedBox(height: 226.v),
                          CustomImageView(
                              svgPath: Assets.svg.icoFriendsOnprimary.path,
                              height: 21.v,
                              width: 120.h)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
