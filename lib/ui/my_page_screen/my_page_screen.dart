// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_image_view.dart';
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
          title: AppbarImage(
            svgPath: ImageConstant.imgFriends,
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
                                  imagePath: ImageConstant.imgEllipse2,
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
                                svgPath: ImageConstant.imgEditBlack900,
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
                                svgPath: ImageConstant.imgArrowleft,
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
                                svgPath: ImageConstant.imgInformation,
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
                                svgPath: ImageConstant.imgArrowleft,
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
                                svgPath: ImageConstant.imgMenu,
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
                                svgPath: ImageConstant.imgArrowleft,
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
