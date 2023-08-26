import 'controller/register_credit_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

class RegisterCreditCardScreen extends GetWidget<RegisterCreditCardController> {
  const RegisterCreditCardScreen({Key? key}) : super(key: key);

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
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineOnErrorTL5,
                                            filled: true,
                                            fillColor: appTheme.blueGray30033)
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
                                                  child: Text("lbl_22".tr,
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
                                            controller:
                                                controller.edittextController,
                                            margin: getMargin(top: 4),
                                            textInputAction:
                                                TextInputAction.done)
                                      ])),
                              CustomDropDown(
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 16),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowleftOnprimary)),
                                  margin: getMargin(top: 82),
                                  hintText: "msg11".tr,
                                  hintStyle: theme.textTheme.bodyLarge!,
                                  items: controller.registerCreditCardModelObj
                                      .value.dropdownItemList.value,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 22,
                                          right: 10,
                                          bottom: 22),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgComputer)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(64)),
                                  contentPadding:
                                      getPadding(top: 22, bottom: 22),
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })
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
