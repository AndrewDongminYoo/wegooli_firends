import 'controller/phone_auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

class PhoneAuthScreen extends GetWidget<PhoneAuthController> {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(42),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimary,
                    margin: getMargin(left: 24, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl70".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
                    child: Padding(
                        padding: getPadding(left: 24, right: 28, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl71".tr,
                                                  style: CustomTextStyles
                                                      .titleMedium16)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 5, bottom: 5),
                                              child: Text("lbl31".tr,
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ]),
                                    CustomTextFormField(
                                        controller:
                                            controller.nameinputoneController,
                                        margin: getMargin(top: 4),
                                        hintText: "lbl72".tr,
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50003)
                                  ]),
                              Container(
                                  height: getVerticalSize(94),
                                  width: getHorizontalSize(328),
                                  margin: getMargin(top: 26),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
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
                                                                "lbl_132".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 6,
                                                                bottom: 5),
                                                            child: Text(
                                                                "lbl31".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Row(children: [
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    160),
                                                            controller: controller
                                                                .tfController,
                                                            hintText:
                                                                "lbl_yymmdd".tr,
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargeGray50003),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            width:
                                                                getHorizontalSize(
                                                                    4),
                                                            margin: getMargin(
                                                                left: 2,
                                                                top: 24,
                                                                bottom: 23),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimary))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("msg_262".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallErrorContainer))
                                                ])),
                                        CustomTextFormField(
                                            width: getHorizontalSize(160),
                                            controller:
                                                controller.oneController,
                                            margin: getMargin(bottom: 19),
                                            hintText: "lbl_nnnnnnn".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50003,
                                            alignment: Alignment.bottomRight)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
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
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text("lbl73".tr,
                                                            style: CustomTextStyles
                                                                .titleMedium16)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 5, bottom: 5),
                                                        child: Text("lbl31".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallPrimaryContainer))
                                                  ]),
                                              CustomDropDown(
                                                  width: getHorizontalSize(104),
                                                  icon: Container(
                                                      margin: getMargin(
                                                          left: 30, right: 10),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCaretdown)),
                                                  margin: getMargin(top: 4),
                                                  hintText: "lbl_skt".tr,
                                                  hintStyle: CustomTextStyles
                                                      .bodyLargeGray500,
                                                  items: controller
                                                      .phoneAuthModelObj
                                                      .value
                                                      .dropdownItemList
                                                      .value,
                                                  onChanged: (value) {
                                                    controller
                                                        .onSelected(value);
                                                  })
                                            ]),
                                        CustomTextFormField(
                                            width: getHorizontalSize(216),
                                            controller: controller
                                                .phoneinputoneController,
                                            margin: getMargin(top: 27),
                                            hintText: "lbl_010_1234_5678".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50003,
                                            textInputAction:
                                                TextInputAction.done)
                                      ])),
                              CustomElevatedButton(
                                  height: getVerticalSize(48),
                                  text: "lbl74".tr,
                                  margin: getMargin(top: 10),
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL5,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMedium16),
                              Padding(
                                  padding: getPadding(top: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFrame121,
                                                height: getVerticalSize(35),
                                                width: getHorizontalSize(160),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(5)),
                                                margin: getMargin(
                                                    right: 4, bottom: 12))),
                                        Expanded(
                                            child: CustomElevatedButton(
                                                height: getVerticalSize(48),
                                                text: "lbl75".tr,
                                                margin: getMargin(left: 4),
                                                buttonStyle: CustomButtonStyles
                                                    .fillAmberATL51,
                                                buttonTextStyle: CustomTextStyles
                                                    .titleMediumOnPrimary16))
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 28, bottom: 41),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "lbl76".tr,
                    buttonStyle: CustomButtonStyles.fillAmberATL26,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
