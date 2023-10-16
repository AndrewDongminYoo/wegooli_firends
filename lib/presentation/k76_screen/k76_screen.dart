// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k76_screen/bloc/k76_bloc.dart';
import '/presentation/k76_screen/models/k76_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_bottom_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class K76Screen extends StatelessWidget {
  K76Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K76Bloc>(
        create: (context) =>
            K76Bloc(K76State(k76ModelObj: K76Model()))..add(K76InitialEvent()),
        child: K76Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl44'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse2,
                                              height: 65.adaptSize,
                                              width: 65.adaptSize,
                                              radius:
                                                  BorderRadius.circular(32.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15.h,
                                                  top: 10.v,
                                                  bottom: 10.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('lbl45'.tr,
                                                        style: CustomTextStyles
                                                            .titleMedium18),
                                                    SizedBox(height: 6.v),
                                                    Text('lbl_010_1234_5678'.tr,
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ])),
                                          const Spacer(),
                                          CustomOutlinedButton(
                                              height: 28.v,
                                              width: 75.h,
                                              text: 'lbl46'.tr,
                                              margin: EdgeInsets.only(
                                                  top: 18.v, bottom: 19.v),
                                              buttonStyle: CustomButtonStyles
                                                  .outlineBlueGray,
                                              buttonTextStyle: CustomTextStyles
                                                  .bodySmallGray70001)
                                        ])),
                                SizedBox(height: 20.v),
                                Container(
                                    height: 8.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray10002)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 21.v),
                                        child: Text('lbl47'.tr,
                                            style: CustomTextStyles
                                                .titleMedium18))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('lbl48'.tr,
                                              style: theme.textTheme.bodyLarge),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightOnPrimary,
                                              height: 18.adaptSize,
                                              width: 18.adaptSize)
                                        ])),
                                SizedBox(height: 21.v),
                                Container(
                                    height: 8.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray10002)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 21.v),
                                        child: Text('lbl49'.tr,
                                            style: CustomTextStyles
                                                .titleMedium18))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('lbl50'.tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900),
                                          BlocSelector<K76Bloc, K76State,
                                                  bool?>(
                                              selector: (state) =>
                                                  state.isSelectedSwitch,
                                              builder:
                                                  (context, isSelectedSwitch) {
                                                return CustomSwitch(
                                                    value: isSelectedSwitch,
                                                    onChange: (value) {
                                                      context
                                                          .read<K76Bloc>()
                                                          .add(
                                                              ChangeSwitchEvent(
                                                                  value:
                                                                      value));
                                                    });
                                              })
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 23.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('lbl51'.tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900),
                                          BlocSelector<K76Bloc, K76State,
                                                  bool?>(
                                              selector: (state) =>
                                                  state.isSelectedSwitch1,
                                              builder:
                                                  (context, isSelectedSwitch1) {
                                                return CustomSwitch(
                                                    value: isSelectedSwitch1,
                                                    onChange: (value) {
                                                      context
                                                          .read<K76Bloc>()
                                                          .add(
                                                              ChangeSwitch1Event(
                                                                  value:
                                                                      value));
                                                    });
                                              })
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 23.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('lbl_sms'.tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900),
                                          BlocSelector<K76Bloc, K76State,
                                                  bool?>(
                                              selector: (state) =>
                                                  state.isSelectedSwitch2,
                                              builder:
                                                  (context, isSelectedSwitch2) {
                                                return CustomSwitch(
                                                    value: isSelectedSwitch2,
                                                    onChange: (value) {
                                                      context
                                                          .read<K76Bloc>()
                                                          .add(
                                                              ChangeSwitch2Event(
                                                                  value:
                                                                      value));
                                                    });
                                              })
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: 270.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, top: 22.v, right: 74.h),
                                        child: Text('msg3'.tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary
                                                .copyWith(height: 1.50)))),
                                SizedBox(height: 21.v),
                                Container(
                                    height: 8.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray10002)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 21.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('lbl52'.tr,
                                              style: CustomTextStyles
                                                  .titleMedium18),
                                          Text('lbl_1_01'.tr,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                SizedBox(height: 22.v),
                                Container(
                                    height: 8.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray10002)),
                                CustomElevatedButton(
                                    text: 'lbl53'.tr,
                                    margin: EdgeInsets.only(
                                        left: 16.h, top: 20.v, right: 16.h)),
                                SizedBox(height: 21.v),
                                Text('lbl54'.tr,
                                    style: CustomTextStyles.bodySmallOnPrimary),
                                SizedBox(height: 1.v),
                                SizedBox(
                                    width: 45.h,
                                    child: Divider(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(0.4)))
                              ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
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
