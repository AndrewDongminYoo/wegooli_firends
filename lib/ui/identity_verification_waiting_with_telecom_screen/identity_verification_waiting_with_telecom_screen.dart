// 🐦 Flutter imports:
import 'controller/identity_verification_waiting_with_telecom_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class IdentityVerificationWaitingWithTelecomScreen
    extends GetWidget<IdentityVerificationWaitingWithTelecomController> {
  const IdentityVerificationWaitingWithTelecomScreen({Key? key})
      : super(key: key);

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
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('lbl2'.tr, style: theme.textTheme.bodySmall),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLabeltext,
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 2.h, bottom: 10.v))
                            ]),
                        SizedBox(height: 3.v),
                        CustomTextFormField(
                            controller: controller.nameoneController,
                            hintText: 'lbl3'.tr)
                      ]),
                  SizedBox(height: 30.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('lbl_13'.tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLabeltext,
                                        height: 5.adaptSize,
                                        width: 5.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 2.h, bottom: 10.v))
                                  ]),
                              SizedBox(height: 3.v),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 9.v),
                                  decoration: AppDecoration.outlineBlueGray,
                                  child: Text('lbl_980709'.tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 3.v),
                              Text('msg_26'.tr,
                                  style: CustomTextStyles
                                      .bodySmallPrimaryContainer)
                            ]),
                        Container(
                            margin: EdgeInsets.only(top: 19.v, bottom: 18.v),
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            decoration: AppDecoration.outlineBlueGray,
                            child: Text('lbl97'.tr,
                                style: theme.textTheme.bodyLarge))
                      ]),
                  SizedBox(height: 30.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('lbl4'.tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLabeltext,
                                        height: 5.adaptSize,
                                        width: 5.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 2.h, bottom: 10.v))
                                  ]),
                              SizedBox(height: 3.v),
                              CustomDropDown(
                                  width: 104.h,
                                  icon: Container(
                                      margin: EdgeInsets.only(left: 30.h),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCaretdown)),
                                  hintText: 'lbl_kt'.tr,
                                  hintStyle: theme.textTheme.bodyLarge,
                                  items: controller
                                      .identityVerificationWaitingWithTelecomModelObj
                                      .value
                                      .dropdownItemList
                                      .value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })
                            ]),
                        CustomTextFormField(
                            width: 216.h,
                            controller: controller.phonenumberoneController,
                            margin: EdgeInsets.only(top: 19.v),
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
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    height: 48.v,
                    text: 'lbl7'.tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                    buttonTextStyle: CustomTextStyles.titleSmallBold,
                    onTap: onTaptf))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the personalInfoFormZipCodeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the personalInfoFormZipCodeScreen.
  onTaptf() {
    Get.toNamed(
      AppRoutes.personalInfoFormZipCodeScreen,
    );
  }
}
