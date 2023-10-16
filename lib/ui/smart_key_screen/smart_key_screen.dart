// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_image_view.dart';
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
          title: AppbarImage1(
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
                                imagePath: ImageConstant.imgRectangle4640,
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
                                      'lbl112'.tr,
                                      style: defaultTextTheme.titleMedium,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      'lbl_12_3456'.tr,
                                      style:
                                          defaultTextTheme.bodySmall!.copyWith(
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
                                          svgPath: ImageConstant.imgSave,
                                          height: 26.adaptSize,
                                          width: 26.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 5.h,
                                            top: 9.v,
                                          ),
                                          child: Text(
                                            'lbl_402'.tr,
                                            style: defaultTextTheme.bodySmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowleft,
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
                              'lbl113'.tr,
                              style: defaultTextTheme.bodySmall!.copyWith(
                                color: defaultColors.onPrimary.withOpacity(0.4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text(
                                'lbl114'.tr,
                                style: defaultTextTheme.bodySmall!.copyWith(
                                  color:
                                      defaultColors.onPrimary.withOpacity(0.4),
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
                                'lbl115'.tr,
                                style: defaultTextTheme.bodySmall,
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
                              'lbl116'.tr,
                              style: defaultTextTheme.titleMedium!.copyWith(
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
                                                  ImageConstant.imgUnlocked,
                                              height: 46.adaptSize,
                                              width: 46.adaptSize,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              'lbl117'.tr,
                                              style:
                                                  defaultTextTheme.titleMedium,
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
                                              svgPath: ImageConstant.imgLocked,
                                              height: 46.adaptSize,
                                              width: 46.adaptSize,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              'lbl118'.tr,
                                              style:
                                                  defaultTextTheme.titleMedium,
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
                                                  ImageConstant.imgBluetooth,
                                              height: 37.v,
                                              width: 46.h,
                                            ),
                                            SizedBox(height: 14.v),
                                            Text(
                                              'lbl119'.tr,
                                              style:
                                                  defaultTextTheme.titleMedium,
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
                                  color: defaultColors.onPrimaryContainer,
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
                                        svgPath: ImageConstant.imgCampaign,
                                        height: 46.adaptSize,
                                        width: 46.adaptSize,
                                      ),
                                      SizedBox(height: 5.v),
                                      Text(
                                        'lbl120'.tr,
                                        style: defaultTextTheme.titleMedium,
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
                              color: defaultColors.primary,
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
                                  svgPath: ImageConstant.imgEdit,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  'lbl121'.tr,
                                  style: defaultTextTheme.bodySmall!.copyWith(
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
