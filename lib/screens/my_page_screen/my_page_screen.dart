// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';
import '/widgets/separation_bar.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});
  static const routeName = '/my_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.h,
          title: CustomImageView(svgPath: Assets.svg.imgFriends.path),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.w),
                            child: Row(
                              children: [
                                customAvatar(
                                  Assets.images.placeholder.path,
                                  size: 65.w,
                                  radius: BorderRadius.circular(
                                    32.w,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 15.w,
                                    top: 2.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '닉네임',
                                        style: textTheme.titleMedium,
                                      ),
                                      SizedBox(height: 7.h),
                                      Text(
                                        '010-1234-5678',
                                        style: textTheme.bodySmall!.copyWith(
                                          color: Palette.fontBlack66,
                                        ),
                                      ),
                                      SizedBox(height: 4.h),
                                      Text(
                                        'ydm2790@gmail.com',
                                        style: textTheme.bodySmall!.copyWith(
                                          color: Palette.fontBlack66,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        const SeparationBar(),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 15.h,
                            right: 16.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customIcon(
                                Assets.svg.icoEditBlack.path,
                                size: 24.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                  top: 2.h,
                                ),
                                child: Text(
                                  '개인 정보',
                                  style: textTheme.bodyLarge,
                                ),
                              ),
                              const Spacer(),
                              customIcon(
                                Assets.svg.icoArrowRight.path,
                                size: 18.w,
                                margin: EdgeInsets.symmetric(vertical: 3.h),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 30.h,
                            right: 16.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customIcon(
                                Assets.svg.icoInformation.path,
                                size: 24.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                  top: 2.h,
                                ),
                                child: Text(
                                  '구독 정보',
                                  style: textTheme.bodyLarge,
                                ),
                              ),
                              const Spacer(),
                              customIcon(
                                Assets.svg.icoArrowRight.path,
                                size: 18.w,
                                margin: EdgeInsets.symmetric(vertical: 3.h),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 30.h,
                            right: 16.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customIcon(
                                Assets.svg.icoMenu.path,
                                size: 24.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                  top: 2.h,
                                ),
                                child: Text(
                                  '카드 등록',
                                  style: textTheme.bodyLarge,
                                ),
                              ),
                              const Spacer(),
                              customIcon(
                                Assets.svg.icoArrowRight.path,
                                size: 18.w,
                                margin: EdgeInsets.symmetric(vertical: 3.h),
                              ),
                            ],
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
    );
  }
}
