import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_terms_bottomsheet_screen/bloc/signup_page_identity_verification_terms_bottomsheet_bloc.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_terms_bottomsheet_screen/models/signup_page_identity_verification_terms_bottomsheet_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class SignupPageIdentityVerificationTermsBottomsheetScreen
    extends StatelessWidget {
  const SignupPageIdentityVerificationTermsBottomsheetScreen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPageIdentityVerificationTermsBottomsheetBloc>(
        create: (context) => SignupPageIdentityVerificationTermsBottomsheetBloc(
            SignupPageIdentityVerificationTermsBottomsheetState(
                signupPageIdentityVerificationTermsBottomsheetModelObj:
                    SignupPageIdentityVerificationTermsBottomsheetModel()))
          ..add(SignupPageIdentityVerificationTermsBottomsheetInitialEvent()),
        child: const SignupPageIdentityVerificationTermsBottomsheetScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 50.v,
                leadingWidth: 34.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: 'lbl77'.tr)),
            body: SizedBox(
                height: 593.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, top: 57.v, right: 16.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text('lbl71'.tr,
                                            style: CustomTextStyles
                                                .bodySmallGray70001)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, bottom: 2.v),
                                        child: Text('lbl72'.tr,
                                            style: CustomTextStyles
                                                .labelLargeRed60001))
                                  ]),
                                  BlocSelector<
                                          SignupPageIdentityVerificationTermsBottomsheetBloc,
                                          SignupPageIdentityVerificationTermsBottomsheetState,
                                          TextEditingController?>(
                                      selector: (state) => state.tfController,
                                      builder: (context, tfController) {
                                        return CustomTextFormField(
                                            controller: tfController,
                                            hintText: 'lbl73'.tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 9.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineBlueGray,
                                            filled: false);
                                      })
                                ]),
                            SizedBox(height: 25.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Text('lbl_133'.tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray70001)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h, bottom: 2.v),
                                              child: Text('lbl72'.tr,
                                                  style: CustomTextStyles
                                                      .labelLargeRed60001))
                                        ]),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 9.v),
                                            decoration: AppDecoration
                                                .outlineBluegray200,
                                            child: Text('lbl_yymmdd'.tr,
                                                style: CustomTextStyles
                                                    .bodyLargeBluegray200)),
                                        SizedBox(height: 2.v),
                                        Text('msg_26'.tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimaryContainer)
                                      ]),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 16.v, bottom: 19.v),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 9.v),
                                      decoration:
                                          AppDecoration.outlineBluegray200,
                                      child: Text('lbl_nnnnnnn'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeBluegray200))
                                ]),
                            SizedBox(height: 34.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Text('lbl74'.tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray70001)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.h, bottom: 2.v),
                                              child: Text('lbl72'.tr,
                                                  style: CustomTextStyles
                                                      .labelLargeRed60001))
                                        ]),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8.v),
                                            decoration: AppDecoration
                                                .outlineBluegray200,
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 1.v),
                                                      child: Text('lbl75'.tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeBluegray200)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCaretdown,
                                                      height: 18.adaptSize,
                                                      width: 18.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 43.h,
                                                          bottom: 5.v))
                                                ]))
                                      ]),
                                  Container(
                                      margin: EdgeInsets.only(top: 16.v),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 9.v),
                                      decoration:
                                          AppDecoration.outlineBluegray200,
                                      child: Text('lbl_010_1234_5678'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeBluegray200))
                                ]),
                            SizedBox(height: 18.v),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 125.h, vertical: 12.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Text('lbl76'.tr,
                                    style:
                                        CustomTextStyles.titleSmallBluegray200))
                          ]))),
                  CustomElevatedButton(
                      height: 48.v,
                      width: 328.h,
                      text: 'lbl78'.tr,
                      margin: EdgeInsets.only(bottom: 16.v),
                      buttonStyle: CustomButtonStyles.fillGrayTL8,
                      buttonTextStyle: CustomTextStyles.titleSmallBluegray200,
                      alignment: Alignment.bottomCenter),
                  Align(
                      child: Container(
                          decoration: AppDecoration.fillOnPrimary,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Spacer(),
                                Container(
                                    decoration: AppDecoration.outlineBlack900,
                                    child: Column(children: [
                                      Container(
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16.h,
                                                            vertical: 21.v),
                                                    decoration: AppDecoration
                                                        .outlineBluegray30033,
                                                    child: Text('lbl79'.tr,
                                                        style: theme.textTheme
                                                            .titleMedium)),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 16.h,
                                                                top: 20.v),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckcircle,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                  'lbl80'.tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumPretendardOnPrimary14))
                                                        ]))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 26.h,
                                                        top: 12.v,
                                                        right: 16.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCheck,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                  'lbl81'.tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumPretendardOnPrimary14)),
                                                          const Spacer(),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightOnPrimary,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize)
                                                        ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 26.h,
                                                        top: 12.v,
                                                        right: 16.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheck,
                                                                    height: 18
                                                                        .adaptSize,
                                                                    width: 18
                                                                        .adaptSize),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5
                                                                            .h),
                                                                    child: Text(
                                                                        'lbl82'
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumPretendardOnPrimary14))
                                                              ]),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightOnPrimary,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize)
                                                        ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 26.h,
                                                        top: 12.v,
                                                        right: 16.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheck,
                                                                    height: 18
                                                                        .adaptSize,
                                                                    width: 18
                                                                        .adaptSize),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5
                                                                            .h),
                                                                    child: Text(
                                                                        'msg4'
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumPretendardOnPrimary14))
                                                              ]),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightOnPrimary,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize)
                                                        ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 26.h,
                                                        top: 12.v,
                                                        right: 16.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheck,
                                                                    height: 18
                                                                        .adaptSize,
                                                                    width: 18
                                                                        .adaptSize),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5
                                                                            .h),
                                                                    child: Text(
                                                                        'msg5'
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumPretendardOnPrimary14))
                                                              ])),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightOnPrimary,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          40.h))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            26.h,
                                                            12.v,
                                                            16.h,
                                                            20.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheck,
                                                                    height: 18
                                                                        .adaptSize,
                                                                    width: 18
                                                                        .adaptSize),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5
                                                                            .h),
                                                                    child: Text(
                                                                        'msg6'
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyMediumPretendardOnPrimary14))
                                                              ])),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightOnPrimary,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          66.h))
                                                        ]))
                                              ])),
                                      Container(
                                          padding: EdgeInsets.all(16.h),
                                          decoration: AppDecoration
                                              .fillOnPrimaryContainer,
                                          child: CustomElevatedButton(
                                              height: 48.v,
                                              text: 'lbl83'.tr,
                                              buttonStyle: CustomButtonStyles
                                                  .fillGrayTL8,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallBluegray200))
                                    ]))
                              ])))
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
