import 'controller/personal_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/core/utils/validation_functions.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalInfoScreen extends GetWidget<PersonalInfoController> {
  PersonalInfoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(34),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimary,
                    margin: getMargin(left: 16, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl82".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 23),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl24".tr,
                                        style: theme.textTheme.titleMedium),
                                    CustomTextFormField(
                                        controller: controller.emailController,
                                        margin: getMargin(top: 4),
                                        hintText: "msg_abc123_gmail_com".tr,
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50002,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        },
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineOnErrorTL5,
                                        filled: true,
                                        fillColor: appTheme.blueGray30033)
                                  ]),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl39".tr,
                                            style: theme.textTheme.titleMedium),
                                        CustomTextFormField(
                                            controller: controller
                                                .currentnicknameController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl83".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(right: 4),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl84".tr,
                                                          style: theme.textTheme
                                                              .titleMedium),
                                                      CustomTextFormField(
                                                          width:
                                                              getHorizontalSize(
                                                                  160),
                                                          controller: controller
                                                              .tfController,
                                                          margin:
                                                              getMargin(top: 4),
                                                          hintText:
                                                              "lbl_010_1234_5678"
                                                                  .tr,
                                                          hintStyle:
                                                              CustomTextStyles
                                                                  .bodyLargeGray50002)
                                                    ]))),
                                        Expanded(
                                            child: CustomElevatedButton(
                                                height: getVerticalSize(48),
                                                text: "lbl85".tr,
                                                margin:
                                                    getMargin(left: 4, top: 24),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimaryTL5,
                                                buttonTextStyle: theme
                                                    .textTheme.titleMedium!))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(right: 4),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl30".tr,
                                                          style: theme.textTheme
                                                              .titleMedium),
                                                      CustomTextFormField(
                                                          width:
                                                              getHorizontalSize(
                                                                  160),
                                                          controller: controller
                                                              .zipcodeController,
                                                          margin:
                                                              getMargin(top: 4),
                                                          hintText:
                                                              "lbl_010101".tr,
                                                          hintStyle:
                                                              CustomTextStyles
                                                                  .bodyLargeGray50002)
                                                    ]))),
                                        Expanded(
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .addresssearchController,
                                                margin:
                                                    getMargin(left: 4, top: 24),
                                                hintText: "lbl33".tr,
                                                hintStyle: theme
                                                    .textTheme.titleMedium!,
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .fillPrimary,
                                                filled: true,
                                                fillColor:
                                                    theme.colorScheme.primary))
                                      ])),
                              CustomTextFormField(
                                  controller: controller.oneController,
                                  margin: getMargin(top: 10),
                                  hintText: "lbl23".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeGray50002),
                              CustomTextFormField(
                                  controller: controller.twoController,
                                  margin: getMargin(top: 10),
                                  hintText: "lbl_123_456".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeGray50002),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl25".tr,
                                            style: theme.textTheme.titleMedium),
                                        CustomTextFormField(
                                            controller: controller
                                                .eyecrossedoutController,
                                            margin: getMargin(top: 4),
                                            hintText: "msg_6_12".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 12,
                                                    right: 12,
                                                    bottom: 12),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgEyeCrossedOut)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(48)),
                                            contentPadding: getPadding(
                                                left: 12, top: 14, bottom: 14))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl37".tr,
                                            style: theme.textTheme.titleMedium),
                                        CustomTextFormField(
                                            controller: controller
                                                .passwordreenterController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl38".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            textInputAction:
                                                TextInputAction.done,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 12,
                                                    right: 12,
                                                    bottom: 12),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgEyeCrossedOut)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(48)),
                                            contentPadding: getPadding(
                                                left: 12, top: 14, bottom: 14))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 71),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomElevatedButton(
                                            width: getHorizontalSize(104),
                                            text: "lbl86".tr,
                                            buttonStyle:
                                                CustomButtonStyles.fillOnError),
                                        CustomElevatedButton(
                                            width: getHorizontalSize(216),
                                            text: "lbl87".tr)
                                      ]))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
