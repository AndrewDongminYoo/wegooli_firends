import 'bloc/smart_key_another_is_currently_using_bloc.dart';
import 'models/smart_key_another_is_currently_using_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_bottom_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

class SmartKeyAnotherIsCurrentlyUsingScreen extends StatelessWidget {
  SmartKeyAnotherIsCurrentlyUsingScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SmartKeyAnotherIsCurrentlyUsingBloc>(
      create: (context) => SmartKeyAnotherIsCurrentlyUsingBloc(
          SmartKeyAnotherIsCurrentlyUsingState(
        smartKeyAnotherIsCurrentlyUsingModelObj:
            SmartKeyAnotherIsCurrentlyUsingModel(),
      ))
        ..add(SmartKeyAnotherIsCurrentlyUsingInitialEvent()),
      child: SmartKeyAnotherIsCurrentlyUsingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SmartKeyAnotherIsCurrentlyUsingBloc,
        SmartKeyAnotherIsCurrentlyUsingState>(
      builder: (context, state) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_12_3456".tr,
                                        style:
                                            CustomTextStyles.bodySmallOnPrimary,
                                      ),
                                      SizedBox(height: 1.v),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFrame19044,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 5.h,
                                              top: 7.v,
                                            ),
                                            child: Text(
                                              "lbl_203".tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightOnprimary,
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
                                "lbl2".tr,
                                style: CustomTextStyles.bodySmallOnPrimary,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "lbl3".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary,
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
                                  color: appTheme.red700,
                                  borderRadius: BorderRadius.circular(
                                    2.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl128".tr,
                                  style: theme.textTheme.bodySmall,
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
                                color: appTheme.blueGray30033,
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
                                  backgroundColor: appTheme.blueGray30033,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    theme.colorScheme.primary,
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
                                  "lbl_12_00".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary,
                                ),
                                Text(
                                  "lbl_13_00".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Container(
                            height: 8.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: appTheme.gray10002,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "lbl5".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack90018,
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
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(5.h),
                                                        decoration:
                                                            AppDecoration.shadow
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder65,
                                                        ),
                                                        child: Container(
                                                          height: 120.adaptSize,
                                                          width: 120.adaptSize,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              60.h,
                                                            ),
                                                            border: Border.all(
                                                              color: appTheme
                                                                  .blueGray30033,
                                                              width: 1.h,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    42.h),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUnlocked,
                                                              height:
                                                                  46.adaptSize,
                                                              width:
                                                                  46.adaptSize,
                                                            ),
                                                            SizedBox(
                                                                height: 5.v),
                                                            Text(
                                                              "lbl6".tr,
                                                              style: theme
                                                                  .textTheme
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
                                                margin:
                                                    EdgeInsets.only(left: 20.h),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(5.h),
                                                        decoration:
                                                            AppDecoration.shadow
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder65,
                                                        ),
                                                        child: Container(
                                                          height: 120.adaptSize,
                                                          width: 120.adaptSize,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              60.h,
                                                            ),
                                                            border: Border.all(
                                                              color: appTheme
                                                                  .blueGray30033,
                                                              width: 1.h,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    42.h),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgLocked,
                                                              height:
                                                                  46.adaptSize,
                                                              width:
                                                                  46.adaptSize,
                                                            ),
                                                            SizedBox(
                                                                height: 5.v),
                                                            Text(
                                                              "lbl7".tr,
                                                              style: theme
                                                                  .textTheme
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
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(5.h),
                                                        decoration:
                                                            AppDecoration.shadow
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder65,
                                                        ),
                                                        child: Container(
                                                          height: 120.adaptSize,
                                                          width: 120.adaptSize,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              60.h,
                                                            ),
                                                            border: Border.all(
                                                              color: appTheme
                                                                  .blueGray30033,
                                                              width: 1.h,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    42.h),
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
                                                            SizedBox(
                                                                height: 14.v),
                                                            Text(
                                                              "lbl8".tr,
                                                              style: theme
                                                                  .textTheme
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
                                                margin:
                                                    EdgeInsets.only(left: 20.h),
                                                padding: EdgeInsets.all(5.h),
                                                decoration: AppDecoration.shadow
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder65,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 37.h,
                                                    vertical: 24.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBlueGray
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder60,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCampaign,
                                                        height: 46.adaptSize,
                                                        width: 46.adaptSize,
                                                      ),
                                                      SizedBox(height: 5.v),
                                                      Text(
                                                        "lbl9".tr,
                                                        style: theme.textTheme
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
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 50.v,
                                    ),
                                    decoration: AppDecoration.fillBluegray30033,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 160.v),
                                        CustomElevatedButton(
                                          height: 44.v,
                                          width: 189.h,
                                          text: "lbl129".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillOnPrimary,
                                          buttonTextStyle: CustomTextStyles
                                              .bodyLargeOnPrimaryContainer,
                                        ),
                                        SizedBox(height: 122.v),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.h,
                                              vertical: 10.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlack
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder35,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgEdit,
                                                  height: 30.adaptSize,
                                                  width: 30.adaptSize,
                                                ),
                                                SizedBox(height: 1.v),
                                                Text(
                                                  "lbl10".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallBlack900,
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
      },
    );
  }
}
