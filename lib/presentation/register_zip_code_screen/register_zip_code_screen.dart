import 'controller/register_zip_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/core/utils/validation_functions.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterZipCodeScreen extends GetWidget<RegisterZipCodeController> {
  RegisterZipCodeScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl29".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 20),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(right: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "lbl30".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 5,
                                                                bottom: 5),
                                                            child: Text(
                                                                "lbl31".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall))
                                                      ]),
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          160),
                                                      controller: controller
                                                          .zipcodeoneController,
                                                      margin: getMargin(top: 4),
                                                      hintText: "lbl32".tr,
                                                      hintStyle: CustomTextStyles
                                                          .bodyLargeGray50002,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isNumeric(value,
                                                                isRequired:
                                                                    true))) {
                                                          return "Please enter valid number";
                                                        }
                                                        return null;
                                                      })
                                                ]))),
                                    Expanded(
                                        child: CustomElevatedButton(
                                            height: getVerticalSize(48),
                                            text: "lbl33".tr,
                                            margin: getMargin(left: 4, top: 27),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL5,
                                            buttonTextStyle:
                                                theme.textTheme.titleMedium!))
                                  ]),
                              CustomTextFormField(
                                  controller:
                                      controller.defaultaddressController,
                                  margin: getMargin(top: 10),
                                  hintText: "lbl34".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeGray50002,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Field cannot be empty';
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  controller:
                                      controller.detailedaddressController,
                                  margin: getMargin(top: 10),
                                  hintText: "lbl35".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeGray50002),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("lbl24".tr,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 5),
                                                  child: Text("lbl31".tr,
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ]),
                                        CustomTextFormField(
                                            controller: controller
                                                .emailaddressController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl36".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            })
                                      ])),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("lbl25".tr,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 5),
                                                  child: Text("lbl31".tr,
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ]),
                                        Obx(() => CustomTextFormField(
                                            controller: controller
                                                .passwordcomboController,
                                            margin: getMargin(top: 4),
                                            hintText: "msg_6_12".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            suffix: InkWell(
                                                onTap: () {
                                                  controller.isShowPassword
                                                          .value =
                                                      !controller
                                                          .isShowPassword.value;
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 30,
                                                        top: 12,
                                                        right: 12,
                                                        bottom: 12),
                                                    child: CustomImageView(
                                                        svgPath: controller
                                                                .isShowPassword
                                                                .value
                                                            ? ImageConstant
                                                                .imgEyeCrossedOut
                                                            : ImageConstant
                                                                .imgEyeCrossedOut))),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(48)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            obscureText:
                                                controller.isShowPassword.value,
                                            contentPadding: getPadding(
                                                left: 12, top: 14, bottom: 14)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("lbl37".tr,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 5),
                                                  child: Text("lbl31".tr,
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ]),
                                        Obx(() => CustomTextFormField(
                                            controller: controller
                                                .passwordreenterController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl38".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            suffix: InkWell(
                                                onTap: () {
                                                  controller.isShowPassword1
                                                          .value =
                                                      !controller
                                                          .isShowPassword1
                                                          .value;
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 30,
                                                        top: 12,
                                                        right: 12,
                                                        bottom: 12),
                                                    child: CustomImageView(
                                                        svgPath: controller
                                                                .isShowPassword1
                                                                .value
                                                            ? ImageConstant
                                                                .imgEyeCrossedOut
                                                            : ImageConstant
                                                                .imgEyeCrossedOut))),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(48)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            obscureText: controller
                                                .isShowPassword1.value,
                                            contentPadding: getPadding(
                                                left: 12, top: 14, bottom: 14)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("lbl39".tr,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 5),
                                                  child: Text("lbl31".tr,
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ]),
                                        CustomTextFormField(
                                            controller: controller
                                                .nicknameinputController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl_102".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            textInputAction:
                                                TextInputAction.done,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Field cannot be empty';
                                              }
                                              return null;
                                            })
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "lbl40".tr,
                    buttonStyle: CustomButtonStyles.fillAmberA,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumOnPrimary18))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
