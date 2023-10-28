// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});
  static const routeName = '/splash_screen_2';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                SizedBox(height: 220.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 116.w,
                        right: 116.w,
                        bottom: 113.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 128.w,
                            child: AutoSizeText(
                              '우리가\n만드는\n카셰어링',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: textTheme.headlineLarge!
                                  .copyWith(height: 1.38),
                            ),
                          ),
                          SizedBox(height: 226.h),
                          CustomImageView(
                              svgPath: Assets.svg.imgFriends.path,
                              height: 21.h,
                              width: 120.w)
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
