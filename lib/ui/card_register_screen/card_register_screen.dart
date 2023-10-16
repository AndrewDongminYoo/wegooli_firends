// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/card_register_controller.dart';

class CardRegisterScreen extends GetWidget<CardRegisterController> {
  const CardRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl124'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl144'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl67'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed600))
                                      ]),
                                      SizedBox(height: 4.v),
                                      CustomTextFormField(
                                          controller: controller
                                              .cardnumbervalueController,
                                          hintText: 'msg_0000_0000_0000'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50003,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 8.h, vertical: 14.v))
                                    ]),
                                SizedBox(height: 26.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl145'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl67'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed600))
                                      ]),
                                      SizedBox(height: 4.v),
                                      CustomTextFormField(
                                          controller: controller
                                              .expirationdatevController,
                                          hintText: 'lbl_mm_yy'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50003,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 8.h, vertical: 14.v))
                                    ]),
                                SizedBox(height: 26.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl146'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl67'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed600))
                                      ]),
                                      SizedBox(height: 4.v),
                                      CustomTextFormField(
                                          controller:
                                              controller.zipcodeController,
                                          hintText: 'lbl_980709'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50003,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 8.h, vertical: 14.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineGrayTL5,
                                          fillColor: appTheme.blueGray30033)
                                    ]),
                                SizedBox(height: 26.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl_23'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl67'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed600))
                                      ]),
                                      SizedBox(height: 4.v),
                                      CustomTextFormField(
                                          controller:
                                              controller.edittextController,
                                          textInputAction: TextInputAction.done)
                                    ])
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
                decoration: AppDecoration.outlineBlack,
                child: CustomElevatedButton(
                    text: 'lbl138'.tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL261,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumBluegray200))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
