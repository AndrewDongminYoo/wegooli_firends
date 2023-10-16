// 🐦 Flutter imports:
import 'controller/identity_verification_empty_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class IdentityVerificationEmptyScreen
    extends GetWidget<IdentityVerificationEmptyController> {
  const IdentityVerificationEmptyScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle(text: 'lbl'.tr),
                styleType: Style.bgFill),
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
                            controller: controller.nameinputoneController,
                            hintText: 'lbl68'.tr)
                      ]),
                  SizedBox(height: 30.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl_13'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            decoration: AppDecoration.outlineBlueGray,
                            child: Row(children: [
                              Text('lbl_63'.tr,
                                  style: CustomTextStyles.bodyLargeBluegray200),
                              const Spacer(),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.v, bottom: 6.v),
                                  child: SizedBox(
                                      child: Divider(
                                          color: appTheme.blueGray200))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 29.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin:
                                      EdgeInsets.fromLTRB(4.h, 6.v, 70.h, 6.v))
                            ])),
                        SizedBox(height: 3.v),
                        Text('msg_26'.tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer)
                      ]),
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
                  SizedBox(height: 17.v),
                  CustomElevatedButton(
                      height: 42.v,
                      text: 'lbl5'.tr,
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleSmallBluegray200),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    height: 48.v,
                    text: 'lbl7'.tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.titleSmallBluegray200))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
