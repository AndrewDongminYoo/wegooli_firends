import 'controller/profile_add_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/core/utils/validation_functions.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileAddCardScreen extends GetWidget<ProfileAddCardController> {
  ProfileAddCardScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl51".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
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
                                              child: Text("lbl52".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 5, bottom: 5),
                                              child: Text("lbl31".tr,
                                                  style: theme
                                                      .textTheme.titleSmall))
                                        ]),
                                    CustomTextFormField(
                                        controller:
                                            controller.cardnumberoneController,
                                        margin: getMargin(top: 4),
                                        hintText: "msg_0000_0000_0000".tr,
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50002,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isNumeric(value,
                                                  isRequired: true))) {
                                            return "Please enter valid number";
                                          }
                                          return null;
                                        })
                                  ]),
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
                                                .expirationdateController,
                                            margin: getMargin(top: 4),
                                            hintText: "lbl_mm_yy".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyLargeGray50002,
                                            validator: (value) {
                                              if (!isNumeric(value)) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            })
                                      ])),
                              Padding(
                                  padding: getPadding(top: 29),
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
                                                TextInputAction.done,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            obscureText: true)
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(text: "lbl55".tr))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
