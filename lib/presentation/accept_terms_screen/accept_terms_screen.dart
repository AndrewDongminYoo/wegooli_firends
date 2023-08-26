import 'controller/accept_terms_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_checkbox_button.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

class AcceptTermsScreen extends GetWidget<AcceptTermsController> {
  const AcceptTermsScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl51".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 20),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 16, right: 16),
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
                                                  child: Text("lbl52".tr,
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
                                                .cardnumbervalueController,
                                            margin: getMargin(top: 4),
                                            hintText: "msg_0000_0000_0000".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 26, right: 16),
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
                                                  child: Text("lbl53".tr,
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
                                                .expirationdatevController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl_mm_yy".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 29, right: 16),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl54".tr,
                                            style: theme.textTheme.titleMedium),
                                        CustomTextFormField(
                                            controller:
                                                controller.zipcodeController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl_980709".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            textInputAction:
                                                TextInputAction.done,
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineOnErrorTL5,
                                            filled: true,
                                            fillColor: appTheme.blueGray30033)
                                      ])),
                              Container(
                                  height: getVerticalSize(221),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 26),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, right: 16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2),
                                                                child: Text(
                                                                    "lbl_22".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 5,
                                                                        bottom:
                                                                            5),
                                                                child: Text(
                                                                    "lbl31".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleSmall))
                                                          ]),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  48),
                                                          width:
                                                              getHorizontalSize(
                                                                  328),
                                                          margin:
                                                              getMargin(top: 4),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5)),
                                                              border: Border.all(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onError,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 21,
                                                    right: 16,
                                                    bottom: 21),
                                                decoration: AppDecoration
                                                    .outlineBluegray300331,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Obx(() =>
                                                                CustomCheckboxButton(
                                                                    text:
                                                                        "msg11"
                                                                            .tr,
                                                                    value: controller
                                                                        .tf
                                                                        .value,
                                                                    onChange:
                                                                        (value) {
                                                                      controller
                                                                              .tf
                                                                              .value =
                                                                          value;
                                                                    })),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleftOnprimary,
                                                                height:
                                                                    getSize(18),
                                                                width:
                                                                    getSize(18))
                                                          ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 24),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text("lbl56".tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeBlack900),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleftOnprimary,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text("lbl57".tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeBlack900),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleftOnprimary,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text("lbl58".tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeBlack900),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleftOnprimary,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text("lbl59".tr,
                                                                    style: CustomTextStyles
                                                                        .bodyLargeBlack900),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleftOnprimary,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18))
                                                              ]))
                                                    ])))
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "lbl55".tr,
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
