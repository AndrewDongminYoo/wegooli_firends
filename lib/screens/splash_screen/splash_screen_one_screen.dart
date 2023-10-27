// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/gen/fonts.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});
  static const routeName = '/splash_screen_1';

  @override
  Widget build(BuildContext context) {
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
              colors: [
                Color(0xFFFFDC27),
                Color(0xFFFFF96D),
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
                            svgPath: Assets.svg.imgFriends.path,
                            height: 33.v,
                            width: 172.h,
                          ),
                          SizedBox(height: 14.v),
                          Text(
                            '우리가 만드는 카셰어링',
                            style: textTheme.titleSmall!.copyWith(
                              fontFamily: FontFamily.nanumSquareRound,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
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
