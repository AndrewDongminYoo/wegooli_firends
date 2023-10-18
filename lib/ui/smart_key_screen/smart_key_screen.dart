// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/image_view.dart';
import 'controller/smart_key_controller.dart';

class SmartKeyScreen extends GetWidget<SmartKeyController> {
  const SmartKeyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 45.v,
          centerTitle: true,
          title: CustomImageView(
            svgPath: Assets.svg.icoFriends.path,
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: Assets.images.imgRectangle4640.path,
                                height: 92.v,
                                width: 139.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 16.v,
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
                                        color: lightTheme.onPrimary
                                            .withOpacity(0.4),
                                      ),
                                    ),
                                    SizedBox(height: 1.v),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: Assets.svg.icoSave.path,
                                          height: 26.adaptSize,
                                          width: 26.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 5.h,
                                            top: 9.v,
                                          ),
                                          child: Text(
                                            '휘발유 40%',
                                            style: textTheme.bodySmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: Assets.svg.icoArrowleft.path,
                                          height: 18.adaptSize,
                                          width: 18.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 51.h,
                                            bottom: 7.v,
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
                                color: lightTheme.onPrimary.withOpacity(0.4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                '|',
                                style: textTheme.bodySmall!.copyWith(
                                  color: lightTheme.onPrimary.withOpacity(0.4),
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
                                color: const Color(0xFF38DD66),
                                borderRadius: BorderRadius.circular(
                                  2.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                '사용 가능합니다.',
                                style: textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 31.v),
                        Container(
                          height: 8.v,
                          width: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F7F7),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 21.v,
                            ),
                            child: Text(
                              '스마트키',
                              style: textTheme.titleMedium!.copyWith(
                                color: Colors.black,
                                fontSize: 18.fSize,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 40.h,
                            top: 22.v,
                            right: 40.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 130.adaptSize,
                                width: 130.adaptSize,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      child: Container(
                                        padding: EdgeInsets.all(5.h),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
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
                                              BorderRadiusStyle.circleBorder65,
                                        ),
                                        child: Container(
                                          height: 120.adaptSize,
                                          width: 120.adaptSize,
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            borderRadius: BorderRadius.circular(
                                              60.h,
                                            ),
                                            border: Border.all(
                                              color: const Color(0x33A4A8AF),
                                              width: 1.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 42.h),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  Assets.svg.icoUnlocked.path,
                                              height: 46.adaptSize,
                                              width: 46.adaptSize,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              '문열기',
                                              style: textTheme.titleMedium,
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
                                        padding: EdgeInsets.all(5.h),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
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
                                              BorderRadiusStyle.circleBorder65,
                                        ),
                                        child: Container(
                                          height: 120.adaptSize,
                                          width: 120.adaptSize,
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            borderRadius: BorderRadius.circular(
                                              60.h,
                                            ),
                                            border: Border.all(
                                              color: const Color(0x33A4A8AF),
                                              width: 1.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 42.h),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  Assets.svg.icoLocked.path,
                                              height: 46.adaptSize,
                                              width: 46.adaptSize,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              '문잠금',
                                              style: textTheme.titleMedium,
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
                            left: 40.h,
                            top: 20.v,
                            right: 40.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 130.adaptSize,
                                width: 130.adaptSize,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      child: Container(
                                        padding: EdgeInsets.all(5.h),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
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
                                              BorderRadiusStyle.circleBorder65,
                                        ),
                                        child: Container(
                                          height: 120.adaptSize,
                                          width: 120.adaptSize,
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            borderRadius: BorderRadius.circular(
                                              60.h,
                                            ),
                                            border: Border.all(
                                              color: const Color(0x33A4A8AF),
                                              width: 1.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 42.h),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  Assets.svg.icoBluetooth.path,
                                              height: 37.v,
                                              width: 46.h,
                                            ),
                                            SizedBox(height: 14.v),
                                            Text(
                                              '비상등',
                                              style: textTheme.titleMedium,
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
                                  color: lightTheme.onPrimaryContainer,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: const Offset(
                                        2,
                                        2,
                                      ),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder65,
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 37.h,
                                    vertical: 24.v,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0x33A4A8AF),
                                      width: 1.h,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder60,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        svgPath: Assets.svg.icoCampaign.path,
                                        height: 46.adaptSize,
                                        width: 46.adaptSize,
                                      ),
                                      SizedBox(height: 5.v),
                                      Text(
                                        '경적',
                                        style: textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 22.h,
                              top: 30.v,
                              right: 22.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 11.v,
                            ),
                            decoration: BoxDecoration(
                              color: lightTheme.primary,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: const Offset(
                                    2,
                                    2,
                                  ),
                                ),
                              ],
                              borderRadius: BorderRadiusStyle.circleBorder35,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: Assets.svg.icoEdit.path,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  '사고 접수',
                                  style: textTheme.bodySmall!.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
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
