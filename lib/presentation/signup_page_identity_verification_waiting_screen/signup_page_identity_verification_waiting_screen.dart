import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_waiting_screen/bloc/signup_page_identity_verification_waiting_bloc.dart';
import 'package:wegooli_friends_app/presentation/signup_page_identity_verification_waiting_screen/models/signup_page_identity_verification_waiting_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class SignupPageIdentityVerificationWaitingScreen extends StatelessWidget {
  const SignupPageIdentityVerificationWaitingScreen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPageIdentityVerificationWaitingBloc>(
        create: (context) => SignupPageIdentityVerificationWaitingBloc(
            SignupPageIdentityVerificationWaitingState(
                signupPageIdentityVerificationWaitingModelObj:
                    SignupPageIdentityVerificationWaitingModel()))
          ..add(SignupPageIdentityVerificationWaitingInitialEvent()),
        child: const SignupPageIdentityVerificationWaitingScreen());
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl71'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        BlocSelector<
                                SignupPageIdentityVerificationWaitingBloc,
                                SignupPageIdentityVerificationWaitingState,
                                TextEditingController?>(
                            selector: (state) => state.nameoneController,
                            builder: (context, nameoneController) {
                              return CustomTextFormField(
                                  controller: nameoneController,
                                  hintText: 'lbl18'.tr,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9.v));
                            })
                      ]),
                  SizedBox(height: 30.v),
                  SizedBox(
                      height: 76.v,
                      width: 328.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl_133'.tr,
                                      style: theme.textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  BlocSelector<
                                          SignupPageIdentityVerificationWaitingBloc,
                                          SignupPageIdentityVerificationWaitingState,
                                          TextEditingController?>(
                                      selector: (state) =>
                                          state.zipcodeController,
                                      builder: (context, zipcodeController) {
                                        return CustomTextFormField(
                                            width: 156.h,
                                            controller: zipcodeController,
                                            hintText: 'lbl_980709'.tr,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 9.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineBlueGray,
                                            filled: false);
                                      }),
                                  SizedBox(height: 3.v),
                                  Text('msg_26'.tr,
                                      style: CustomTextStyles
                                          .bodySmallPrimaryContainer)
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 39.v,
                                width: 156.h,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: appTheme.blueGray200,
                                            width: 1.h))))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 24.v, right: 76.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.v, bottom: 8.v),
                                          child: SizedBox(
                                              child: Divider(
                                                  color:
                                                      appTheme.blueGray200))),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text('lbl_22'.tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h, top: 6.v, bottom: 6.v))
                                    ])))
                      ])),
                  SizedBox(height: 30.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl74'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        BlocSelector<
                                SignupPageIdentityVerificationWaitingBloc,
                                SignupPageIdentityVerificationWaitingState,
                                TextEditingController?>(
                            selector: (state) => state.phonenumberoneController,
                            builder: (context, phonenumberoneController) {
                              return CustomTextFormField(
                                  controller: phonenumberoneController,
                                  hintText: 'lbl_010_1234_5678'.tr,
                                  textInputAction: TextInputAction.done,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlineBlueGray,
                                  filled: false);
                            })
                      ]),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      height: 42.v,
                      text: 'lbl76'.tr,
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainer),
                  SizedBox(height: 20.v),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 9.v),
                      decoration: AppDecoration.outlineBluegray200,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('lbl84'.tr,
                                style: CustomTextStyles.bodyLargeBluegray200),
                            Text('lbl_3_00'.tr,
                                style:
                                    CustomTextStyles.bodyLargePrimaryContainer)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 48.v,
                text: 'lbl78'.tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                buttonStyle: CustomButtonStyles.fillGrayTL8,
                buttonTextStyle: CustomTextStyles.titleSmallBluegray200)));
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
