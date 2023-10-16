// 🐦 Flutter imports:
import 'controller/personal_info_form_zip_code_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PersonalInfoFormZipCodeScreen
    extends GetWidget<PersonalInfoFormZipCodeController> {
  const PersonalInfoFormZipCodeScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle(text: 'lbl75'.tr),
                styleType: Style.bgFill),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 4.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('lbl76'.tr,
                                                        style: theme.textTheme
                                                            .bodySmall),
                                                    SizedBox(height: 3.v),
                                                    CustomTextFormField(
                                                        width: 160.h,
                                                        controller: controller
                                                            .postalcodeoneController,
                                                        hintText: 'lbl77'.tr)
                                                  ]))),
                                      Expanded(
                                          child: CustomElevatedButton(
                                              height: 42.v,
                                              text: 'lbl78'.tr,
                                              margin: EdgeInsets.only(
                                                  left: 4.h, top: 15.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillBlueGray,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallOnPrimaryContainer))
                                    ]),
                                SizedBox(height: 10.v),
                                CustomTextFormField(
                                    controller:
                                        controller.defaultaddressController,
                                    hintText: 'lbl79'.tr),
                                SizedBox(height: 10.v),
                                CustomTextFormField(
                                    controller:
                                        controller.detailedaddressController,
                                    hintText: 'lbl80'.tr),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl81'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      CustomTextFormField(
                                          controller:
                                              controller.emailaddressController,
                                          hintText: 'lbl82'.tr)
                                    ]),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl62'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      CustomTextFormField(
                                          controller: controller
                                              .eyecrossedoutController,
                                          hintText: 'msg_6_12'.tr,
                                          suffix: Container(
                                              margin: EdgeInsets.only(
                                                  left: 30.h,
                                                  top: 7.v,
                                                  bottom: 8.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEyeCrossedOut)),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 39.v))
                                    ]),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl83'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      CustomTextFormField(
                                          controller: controller
                                              .passwordreentryController,
                                          hintText: 'lbl84'.tr,
                                          suffix: Container(
                                              margin: EdgeInsets.only(
                                                  left: 30.h,
                                                  top: 7.v,
                                                  bottom: 8.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEyeCrossedOut)),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 39.v))
                                    ]),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl41'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      CustomTextFormField(
                                          controller: controller
                                              .nicknameinputController,
                                          hintText: 'lbl_83'.tr,
                                          textInputAction: TextInputAction.done)
                                    ])
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    height: 48.v,
                    text: 'lbl85'.tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.titleSmallBluegray200))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
