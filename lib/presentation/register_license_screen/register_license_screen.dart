import 'controller/register_license_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/core/utils/validation_functions.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterLicenseScreen extends GetWidget<RegisterLicenseController> {
  RegisterLicenseScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl43".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 20),
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
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
                                              child: Text("lbl44".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 5, bottom: 5),
                                              child: Text("lbl31".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallPrimaryContainer))
                                        ]),
                                    CustomDropDown(
                                        width: double.maxFinite,
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 10),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCaretdown)),
                                        margin: getMargin(top: 4),
                                        hintText: "lbl45".tr,
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray500,
                                        items: controller
                                            .registerLicenseModelObj
                                            .value
                                            .dropdownItemList
                                            .value,
                                        onChanged: (value) {
                                          controller.onSelected(value);
                                        })
                                  ]),
                              Padding(
                                  padding: getPadding(top: 26),
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
                                                                    "lbl44".tr,
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
                                                                    style: CustomTextStyles
                                                                        .titleSmallPrimaryContainer))
                                                          ]),
                                                      CustomDropDown(
                                                          width:
                                                              getHorizontalSize(
                                                                  160),
                                                          icon: Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  right: 10),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCaretdown)),
                                                          margin:
                                                              getMargin(top: 4),
                                                          hintText: "lbl46".tr,
                                                          hintStyle:
                                                              CustomTextStyles
                                                                  .bodyLargeGray500,
                                                          items: controller
                                                              .registerLicenseModelObj
                                                              .value
                                                              .dropdownItemList1
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .onSelected1(
                                                                    value);
                                                          })
                                                    ]))),
                                        Expanded(
                                            child: CustomDropDown(
                                                icon: Container(
                                                    margin: getMargin(
                                                        left: 30, right: 10),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCaretdown)),
                                                margin:
                                                    getMargin(left: 4, top: 27),
                                                hintText: "lbl_112".tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray500,
                                                items: controller
                                                    .registerLicenseModelObj
                                                    .value
                                                    .dropdownItemList2
                                                    .value,
                                                onChanged: (value) {
                                                  controller.onSelected2(value);
                                                }))
                                      ])),
                              CustomTextFormField(
                                  controller:
                                      controller.licensenumberController,
                                  margin: getMargin(top: 10),
                                  hintText: "msg8".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeGray50002,
                                  validator: (value) {
                                    if (!isNumeric(value)) {
                                      return "Please enter valid number";
                                    }
                                    return null;
                                  }),
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
                                                  child: Text("lbl47".tr,
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
                                                .expirationdateController,
                                            margin: getMargin(top: 4),
                                            hintText: "msg9".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isNumeric(value,
                                                      isRequired: true))) {
                                                return "Please enter valid number";
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
                                                  child: Text("lbl48".tr,
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
                                                .licensenumberController1,
                                            margin: getMargin(top: 4),
                                            hintText: "msg10".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            textInputAction:
                                                TextInputAction.done,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isNumeric(value,
                                                      isRequired: true))) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            })
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "lbl49".tr,
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
