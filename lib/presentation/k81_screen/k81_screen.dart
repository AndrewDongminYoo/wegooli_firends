import 'package:wegooli_friends_app/presentation/k81_screen/bloc/k81_bloc.dart';
import 'package:wegooli_friends_app/presentation/k81_screen/models/k81_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/core/utils/validation_functions.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_outlined_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K81Screen extends StatelessWidget {
  K81Screen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<K81Bloc>(
        create: (context) =>
            K81Bloc(K81State(k81ModelObj: K81Model()))..add(K81InitialEvent()),
        child: K81Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 40.v,
                leadingWidth: 33.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: 'lbl48'.tr)),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 19.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('lbl91'.tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        BlocSelector<K81Bloc, K81State,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.emailController,
                                            builder:
                                                (context, emailController) {
                                              return CustomTextFormField(
                                                  controller: emailController,
                                                  hintText:
                                                      'msg_abc1234_gmail_com'
                                                          .tr,
                                                  hintStyle: CustomTextStyles
                                                      .bodyLargeNotoSansKRGray700,
                                                  textInputType: TextInputType
                                                      .emailAddress,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidEmail(value,
                                                            isRequired:
                                                                true))) {
                                                      return 'Please enter valid email';
                                                    }
                                                    return null;
                                                  },
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 9.h,
                                                          vertical: 4.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGray2,
                                                  fillColor: appTheme.gray200);
                                            }),
                                        SizedBox(height: 15.v),
                                        Text('lbl45'.tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        BlocSelector<K81Bloc, K81State,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.currentnicknameController,
                                            builder: (context,
                                                currentnicknameController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      currentnicknameController,
                                                  hintText: 'lbl193'.tr,
                                                  hintStyle: CustomTextStyles
                                                      .bodyLargeNotoSansKRGray700,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 9.h,
                                                          vertical: 4.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGray1,
                                                  filled: false);
                                            }),
                                        SizedBox(height: 15.v),
                                        Text('lbl194'.tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 6.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineGray700,
                                                  child: Text(
                                                      'lbl_010_xxxx_xxxx'.tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeNotoSansKRGray700)),
                                              CustomOutlinedButton(
                                                  width: 100.h,
                                                  text: 'lbl204'.tr)
                                            ]),
                                        SizedBox(height: 15.v),
                                        Text('lbl184'.tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BlocSelector<K81Bloc, K81State,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.zipcodeController,
                                                  builder: (context,
                                                      zipcodeController) {
                                                    return CustomTextFormField(
                                                        width: 220.h,
                                                        controller:
                                                            zipcodeController,
                                                        hintText:
                                                            'lbl_011111'.tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargeNotoSansKRGray700,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        6.h,
                                                                    vertical:
                                                                        4.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineGray1,
                                                        filled: false);
                                                  }),
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 17.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineGray700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder4),
                                                  child: Text('lbl185'.tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeNotoSansKRGray700))
                                            ]),
                                        SizedBox(height: 9.v),
                                        BlocSelector<K81Bloc, K81State,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.tfController,
                                            builder: (context, tfController) {
                                              return CustomTextFormField(
                                                  controller: tfController,
                                                  hintText: 'lbl205'.tr,
                                                  hintStyle: CustomTextStyles
                                                      .bodyLargeNotoSansKRGray700,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 9.h,
                                                          vertical: 4.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineGray1,
                                                  filled: false);
                                            }),
                                        SizedBox(height: 9.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.h, vertical: 2.v),
                                            decoration:
                                                AppDecoration.outlineGray700,
                                            child: Text('lbl_111_1234'.tr,
                                                style: CustomTextStyles
                                                    .bodyLargeNotoSansKRGray700)),
                                        SizedBox(height: 15.v),
                                        Text('lbl197'.tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.h, vertical: 1.v),
                                            decoration:
                                                AppDecoration.outlineGray700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h, top: 4.v),
                                                      child: Text(
                                                          'msg_6_122'.tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeNotoSansKRGray700)),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEye,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v))
                                                ])),
                                        SizedBox(height: 15.v),
                                        Text('lbl93'.tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900),
                                        SizedBox(height: 9.v),
                                        SizedBox(
                                            height: 32.v,
                                            width: 328.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEye,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          right: 6.h,
                                                          bottom: 3.v)),
                                                  Align(
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      9.h,
                                                                  vertical:
                                                                      2.v),
                                                          decoration:
                                                              AppDecoration
                                                                  .outlineGray700,
                                                          child: Text(
                                                              'lbl187'.tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeNotoSansKRGray700)))
                                                ]))
                                      ]))))
                    ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 35.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(width: 147.h, text: 'lbl36'.tr),
                      CustomOutlinedButton(width: 152.h, text: 'lbl198'.tr)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  void onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
