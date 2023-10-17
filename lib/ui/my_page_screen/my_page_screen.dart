// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/app_bar.dart';
import '/widgets/bottom_bar.dart';
import '/widgets/image_view.dart';
import 'controller/my_page_controller.dart';

class MyPageScreen extends GetWidget<MyPageController> {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: CustomImageView(
            svgPath: Assets.svg.imgFriends.path,
          ),
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
                                CustomImageView(
                                  imagePath: Assets.images.placeholder.path,
                                  height: 65.adaptSize,
                                  width: 65.adaptSize,
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
                              CustomImageView(
                                svgPath: Assets.svg.imgEditBlack900.path,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
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
                              CustomImageView(
                                svgPath: Assets.svg.imgArrowleft.path,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
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
                              CustomImageView(
                                svgPath: Assets.svg.imgInformation.path,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
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
                              CustomImageView(
                                svgPath: Assets.svg.imgArrowleft.path,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
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
                              CustomImageView(
                                svgPath: Assets.svg.imgMenu.path,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
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
                              CustomImageView(
                                svgPath: Assets.svg.imgArrowleft.path,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
