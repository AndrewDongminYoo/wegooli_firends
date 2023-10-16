import 'package:wegooli_friends_app/presentation/k80_screen/bloc/k80_bloc.dart';
import 'package:wegooli_friends_app/presentation/k80_screen/models/k80_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_outlined_button.dart';
import 'package:wegooli_friends_app/widgets/custom_switch.dart';

class K80Screen extends StatelessWidget {
  const K80Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K80Bloc>(
        create: (context) =>
            K80Bloc(K80State(k80ModelObj: K80Model()))..add(K80InitialEvent()),
        child: const K80Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 40.v,
                leadingWidth: 33.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: 'lbl201'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 40.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse161x61,
                                        height: 61.adaptSize,
                                        width: 61.adaptSize,
                                        radius: BorderRadius.circular(30.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.h, top: 10.v, bottom: 10.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('lbl45'.tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBluegray900),
                                              SizedBox(height: 1.v),
                                              Text('lbl_010_1234_5678'.tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumPretendardBluegray900Light)
                                            ])),
                                    const Spacer(),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20.v),
                                        child: Text('lbl46'.tr,
                                            style: CustomTextStyles
                                                .titleMediumDeeppurpleA20002))
                                  ])),
                          SizedBox(height: 36.v),
                          Divider(color: appTheme.gray10001),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, top: 27.v),
                                  child: Text('lbl202'.tr,
                                      style: theme.textTheme.titleLarge))),
                          Padding(
                              padding: EdgeInsets.only(top: 15.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, top: 14.v),
                                  child: Text('lbl48'.tr,
                                      style: CustomTextStyles
                                          .titleMediumBluegray900SemiBold))),
                          Padding(
                              padding: EdgeInsets.only(top: 15.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          SizedBox(height: 15.v),
                          Divider(color: appTheme.gray10001),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, top: 15.v),
                                  child: Text('lbl49'.tr,
                                      style: theme.textTheme.titleLarge))),
                          Padding(
                              padding: EdgeInsets.only(top: 15.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 15.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl50'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold),
                                    BlocSelector<K80Bloc, K80State, bool?>(
                                        selector: (state) =>
                                            state.isSelectedSwitch,
                                        builder: (context, isSelectedSwitch) {
                                          return CustomSwitch(
                                              value: isSelectedSwitch,
                                              onChange: (value) {
                                                context.read<K80Bloc>().add(
                                                    ChangeSwitchEvent(
                                                        value: value));
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 16.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 15.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl51'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold),
                                    BlocSelector<K80Bloc, K80State, bool?>(
                                        selector: (state) =>
                                            state.isSelectedSwitch1,
                                        builder: (context, isSelectedSwitch1) {
                                          return CustomSwitch(
                                              value: isSelectedSwitch1,
                                              onChange: (value) {
                                                context.read<K80Bloc>().add(
                                                    ChangeSwitch1Event(
                                                        value: value));
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 16.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 15.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl_sms'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold),
                                    BlocSelector<K80Bloc, K80State, bool?>(
                                        selector: (state) =>
                                            state.isSelectedSwitch2,
                                        builder: (context, isSelectedSwitch2) {
                                          return CustomSwitch(
                                              value: isSelectedSwitch2,
                                              onChange: (value) {
                                                context.read<K80Bloc>().add(
                                                    ChangeSwitch2Event(
                                                        value: value));
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 16.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 15.v, right: 33.h),
                                  child: Row(children: [
                                    Text('lbl203'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold),
                                    Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text('msg27'.tr,
                                            style: CustomTextStyles
                                                .titleSmallBluegray900))
                                  ]))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 7.v, right: 26.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('lbl203'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold),
                                    Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text('msg28'.tr,
                                            style: CustomTextStyles
                                                .titleSmallBluegray900))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 28.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 14.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl52'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold),
                                    Text('lbl_1_01'.tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray900SemiBold)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 15.v),
                              child: Divider(
                                  color: appTheme.blueGray900,
                                  indent: 16.h,
                                  endIndent: 16.h)),
                          CustomOutlinedButton(
                              text: 'lbl53'.tr,
                              margin: EdgeInsets.only(
                                  left: 16.h, top: 34.v, right: 15.h)),
                          SizedBox(height: 19.v),
                          Text('lbl54'.tr,
                              style: CustomTextStyles.bodyLargeNotoSansKRGray700
                                  .copyWith(
                                      decoration: TextDecoration.underline))
                        ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
