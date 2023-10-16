// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_switch.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl40'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 9.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse2,
                                        height: 65.adaptSize,
                                        width: 65.adaptSize,
                                        radius: BorderRadius.circular(32.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h,
                                            top: 11.v,
                                            bottom: 11.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('lbl41'.tr,
                                                  style: CustomTextStyles
                                                      .titleMedium18),
                                              SizedBox(height: 5.v),
                                              Text('lbl_010_1234_5678'.tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimary)
                                            ])),
                                    const Spacer(),
                                    CustomOutlinedButton(
                                        width: 75.h,
                                        text: 'lbl42'.tr,
                                        margin: EdgeInsets.only(
                                            top: 18.v, bottom: 19.v))
                                  ])),
                          SizedBox(height: 20.v),
                          Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray10001)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, top: 21.v),
                                  child: Text('lbl43'.tr,
                                      style: CustomTextStyles.titleMedium18))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 14.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl44'.tr,
                                        style: theme.textTheme.bodyLarge),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          SizedBox(height: 21.v),
                          Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray10001)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, top: 21.v),
                                  child: Text('lbl45'.tr,
                                      style: CustomTextStyles.titleMedium18))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 14.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl46'.tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch.value,
                                        onChange: (value) {
                                          controller.isSelectedSwitch.value =
                                              value;
                                        }))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 23.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl47'.tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch1.value,
                                        onChange: (value) {
                                          controller.isSelectedSwitch1.value =
                                              value;
                                        }))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 23.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl_sms'.tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch2.value,
                                        onChange: (value) {
                                          controller.isSelectedSwitch2.value =
                                              value;
                                        }))
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
                                      style: CustomTextStyles.bodySmallOnPrimary
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 21.v),
                          Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray10001)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 22.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl48'.tr,
                                        style: CustomTextStyles.titleMedium18),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Text('lbl_1_01'.tr,
                                            style: theme.textTheme.bodyLarge))
                                  ])),
                          SizedBox(height: 21.v),
                          Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray10001)),
                          CustomElevatedButton(
                              text: 'lbl49'.tr,
                              margin: EdgeInsets.only(
                                  left: 16.h, top: 20.v, right: 16.h)),
                          SizedBox(height: 21.v),
                          Text('lbl50'.tr,
                              style: CustomTextStyles.bodySmallOnPrimary),
                          SizedBox(height: 1.v),
                          SizedBox(
                              width: 45.h,
                              child: Divider(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(0.4)))
                        ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
