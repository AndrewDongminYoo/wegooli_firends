// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});
  static const routeName = '/my_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          title: CustomImageView(svgPath: Assets.svg.imgFriends.path),
          styleType: Style.bgOutline_1,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(
                              children: [
                                customAvatar(
                                  Assets.images.placeholder.path,
                                  size: 65.adaptSize,
                                  radius: BorderRadius.circular(
                                    32.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 15.h,
                                    top: 2.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '닉네임',
                                        style: textTheme.titleMedium,
                                      ),
                                      SizedBox(height: 7.v),
                                      Text(
                                        '010-1234-5678',
                                        style: textTheme.bodySmall!.copyWith(
                                          color: lightTheme.onPrimary
                                              .withOpacity(0.4),
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        'ydm2790@gmail.com',
                                        style: textTheme.bodySmall!.copyWith(
                                          color: lightTheme.onPrimary
                                              .withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Container(
                          height: 8.v,
                          width: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F7F7),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 15.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customIcon(
                                Assets.svg.icoEditBlack.path,
                                size: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  '개인 정보',
                                  style: textTheme.bodyLarge,
                                ),
                              ),
                              const Spacer(),
                              customIcon(
                                Assets.svg.icoArrowRight.path,
                                size: 18.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 30.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customIcon(
                                Assets.svg.icoInformation.path,
                                size: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  '구독 정보',
                                  style: textTheme.bodyLarge,
                                ),
                              ),
                              const Spacer(),
                              customIcon(
                                Assets.svg.icoArrowRight.path,
                                size: 18.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 30.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customIcon(
                                Assets.svg.icoMenu.path,
                                size: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  '카드 등록',
                                  style: textTheme.bodyLarge,
                                ),
                              ),
                              const Spacer(),
                              customIcon(
                                Assets.svg.icoArrowRight.path,
                                size: 18.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
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
