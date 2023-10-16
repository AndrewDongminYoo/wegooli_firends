// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/identity_verification_waiting_controller.dart';

class IdentityVerificationWaitingScreen
    extends GetWidget<IdentityVerificationWaitingController> {
  const IdentityVerificationWaitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 50.v,
                leadingWidth: 34.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: 'lbl'.tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl2'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        CustomTextFormField(
                            controller: controller.nameoneController,
                            hintText: 'lbl3'.tr)
                      ]),
                  SizedBox(height: 30.v),
                  SizedBox(
                      height: 76.v,
                      width: 328.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl_13'.tr,
                                      style: theme.textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      width: 156.h,
                                      controller: controller.zipcodeController,
                                      hintText: 'lbl_980709'.tr),
                                  SizedBox(height: 3.v),
                                  Text('msg_26'.tr,
                                      style: CustomTextStyles
                                          .bodySmallPrimaryContainer)
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 39.v,
                                width: 156.h,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: appTheme.blueGray200,
                                            width: 1.h))))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 24.v, right: 76.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.v, bottom: 8.v),
                                          child: SizedBox(
                                              child: Divider(
                                                  color:
                                                      appTheme.blueGray200))),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text('lbl_22'.tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h, top: 6.v, bottom: 6.v))
                                    ])))
                      ])),
                  SizedBox(height: 30.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl4'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        CustomTextFormField(
                            controller: controller.phonenumberoneController,
                            hintText: 'lbl_010_1234_5678'.tr,
                            textInputAction: TextInputAction.done)
                      ]),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      height: 42.v,
                      text: 'lbl5'.tr,
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainer),
                  SizedBox(height: 20.v),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: AppDecoration.outlineBlueGray,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('lbl6'.tr,
                                style: CustomTextStyles.bodyLargeBluegray200),
                            Text('lbl_3_00'.tr,
                                style:
                                    CustomTextStyles.bodyLargePrimaryContainer)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 48.v,
                text: 'lbl7'.tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleSmallBluegray200)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
