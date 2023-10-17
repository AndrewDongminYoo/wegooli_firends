// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/smart_key_another_is_currently_using_controller.dart';

class SmartKeyAnotherIsCurrentlyUsingScreen
    extends GetWidget<SmartKeyAnotherIsCurrentlyUsingController> {
  const SmartKeyAnotherIsCurrentlyUsingScreen({Key? key}) : super(key: key);

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
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle4640,
                              height: 92.v,
                              width: 139.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.v,
                                bottom: 18.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '모닝어반',
                                    style: textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    '12가 3456',
                                    style: textTheme.bodySmall!.copyWith(
                                      color: defaultColors.onPrimary
                                          .withOpacity(0.4),
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgFrame19044,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 5.h,
                                          top: 7.v,
                                        ),
                                        child: Text(
                                          '휘발유 20%',
                                          style: textTheme.bodySmall,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 54.h,
                                          bottom: 4.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '상태',
                            style: textTheme.bodySmall!.copyWith(
                              color: defaultColors.onPrimary.withOpacity(0.4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              '|',
                              style: textTheme.bodySmall!.copyWith(
                                color: defaultColors.onPrimary.withOpacity(0.4),
                              ),
                            ),
                          ),
                          Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 5.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE82121),
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              '홍길동님이 사용중입니다.',
                              style: textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgTaxi,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.centerRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          right: 15.h,
                        ),
                        child: Container(
                          height: 10.v,
                          width: 328.h,
                          decoration: BoxDecoration(
                            color: const Color(0x33A4A8AF),
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.57,
                              backgroundColor: const Color(0x33A4A8AF),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                defaultColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 4.v,
                          right: 16.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '12:00',
                              style: textTheme.bodySmall!.copyWith(
                                color: defaultColors.onPrimary.withOpacity(0.4),
                              ),
                            ),
                            Text(
                              '13:00',
                              style: textTheme.bodySmall!.copyWith(
                                color: defaultColors.onPrimary.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        height: 8.v,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF6F7F7),
                        ),
                      ),
                      SizedBox(
                        height: 496.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 21.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '스마트키',
                                        style: textTheme.titleMedium!.copyWith(
                                          color: Colors.black,
                                          fontSize: 18.fSize,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 24.h,
                                        top: 22.v,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 130.adaptSize,
                                            width: 130.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.all(5.h),
                                                    decoration: BoxDecoration(
                                                      color: defaultColors
                                                          .onPrimaryContainer,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                                  0xFF000000)
                                                              .withOpacity(0.1),
                                                          spreadRadius: 2.h,
                                                          blurRadius: 2.h,
                                                          offset: const Offset(
                                                            2,
                                                            2,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder65,
                                                    ),
                                                    child: Container(
                                                      height: 120.adaptSize,
                                                      width: 120.adaptSize,
                                                      decoration: BoxDecoration(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          60.h,
                                                        ),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0x33A4A8AF),
                                                          width: 1.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 42.h),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgUnlocked,
                                                          height: 46.adaptSize,
                                                          width: 46.adaptSize,
                                                        ),
                                                        SizedBox(height: 5.v),
                                                        Text(
                                                          '문열기',
                                                          style: textTheme
                                                              .titleMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 130.adaptSize,
                                            width: 130.adaptSize,
                                            margin: EdgeInsets.only(left: 20.h),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.all(5.h),
                                                    decoration: BoxDecoration(
                                                      color: defaultColors
                                                          .onPrimaryContainer,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                                  0xFF000000)
                                                              .withOpacity(0.1),
                                                          spreadRadius: 2.h,
                                                          blurRadius: 2.h,
                                                          offset: const Offset(
                                                            2,
                                                            2,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder65,
                                                    ),
                                                    child: Container(
                                                      height: 120.adaptSize,
                                                      width: 120.adaptSize,
                                                      decoration: BoxDecoration(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          60.h,
                                                        ),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0x33A4A8AF),
                                                          width: 1.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 42.h),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocked,
                                                          height: 46.adaptSize,
                                                          width: 46.adaptSize,
                                                        ),
                                                        SizedBox(height: 5.v),
                                                        Text(
                                                          '문잠금',
                                                          style: textTheme
                                                              .titleMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 24.h,
                                        top: 20.v,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            height: 130.adaptSize,
                                            width: 130.adaptSize,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.all(5.h),
                                                    decoration: BoxDecoration(
                                                      color: defaultColors
                                                          .onPrimaryContainer,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                                  0xFF000000)
                                                              .withOpacity(0.1),
                                                          spreadRadius: 2.h,
                                                          blurRadius: 2.h,
                                                          offset: const Offset(
                                                            2,
                                                            2,
                                                          ),
                                                        ),
                                                      ],
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder65,
                                                    ),
                                                    child: Container(
                                                      height: 120.adaptSize,
                                                      width: 120.adaptSize,
                                                      decoration: BoxDecoration(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          60.h,
                                                        ),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0x33A4A8AF),
                                                          width: 1.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 42.h),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgBluetooth,
                                                          height: 37.v,
                                                          width: 46.h,
                                                        ),
                                                        SizedBox(height: 14.v),
                                                        Text(
                                                          '비상등',
                                                          style: textTheme
                                                              .titleMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 20.h),
                                            padding: EdgeInsets.all(5.h),
                                            decoration: BoxDecoration(
                                              color: defaultColors
                                                  .onPrimaryContainer,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: const Offset(
                                                    2,
                                                    2,
                                                  ),
                                                ),
                                              ],
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder65,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 37.h,
                                                vertical: 24.v,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0x33A4A8AF),
                                                  width: 1.h,
                                                ),
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder60,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCampaign,
                                                    height: 46.adaptSize,
                                                    width: 46.adaptSize,
                                                  ),
                                                  SizedBox(height: 5.v),
                                                  Text(
                                                    '경적',
                                                    style: theme
                                                        .textTheme.titleMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 50.v,
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0x33A4A8AF),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 160.v),
                                    CustomElevatedButton(
                                      height: 44.v,
                                      width: 189.h,
                                      text: '홍길동님이 사용 중 입니다.',
                                      buttonStyle: ElevatedButton.styleFrom(
                                        backgroundColor: defaultColors.onPrimary
                                            .withOpacity(0.4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22.h),
                                        ),
                                      ),
                                      buttonTextStyle:
                                          textTheme.bodyLarge!.copyWith(
                                        color: defaultColors.onPrimaryContainer,
                                      ),
                                    ),
                                    SizedBox(height: 122.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.h,
                                          vertical: 10.v,
                                        ),
                                        decoration: BoxDecoration(
                                          color: defaultColors.primary,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              spreadRadius: 2.h,
                                              blurRadius: 2.h,
                                              offset: const Offset(
                                                2,
                                                2,
                                              ),
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder35,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant.imgEdit,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                            ),
                                            SizedBox(height: 1.v),
                                            Text(
                                              '사고 접수',
                                              style:
                                                  textTheme.bodySmall!.copyWith(
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 3.v),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
