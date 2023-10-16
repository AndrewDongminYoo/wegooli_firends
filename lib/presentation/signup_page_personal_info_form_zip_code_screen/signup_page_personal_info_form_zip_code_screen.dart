import 'package:wegooli_friends_app/presentation/signup_page_personal_info_form_zip_code_screen/bloc/signup_page_personal_info_form_zip_code_bloc.dart';
import 'package:wegooli_friends_app/presentation/signup_page_personal_info_form_zip_code_screen/models/signup_page_personal_info_form_zip_code_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class SignupPagePersonalInfoFormZipCodeScreen extends StatelessWidget {
  const SignupPagePersonalInfoFormZipCodeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPagePersonalInfoFormZipCodeBloc>(
        create: (context) => SignupPagePersonalInfoFormZipCodeBloc(
            SignupPagePersonalInfoFormZipCodeState(
                signupPagePersonalInfoFormZipCodeModelObj:
                    SignupPagePersonalInfoFormZipCodeModel()))
          ..add(SignupPagePersonalInfoFormZipCodeInitialEvent()),
        child: const SignupPagePersonalInfoFormZipCodeScreen());
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
                title: AppbarSubtitle2(text: 'lbl85'.tr),
                styleType: Style.bgFill),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 4.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('lbl86'.tr,
                                                        style: theme.textTheme
                                                            .bodySmall),
                                                    SizedBox(height: 3.v),
                                                    BlocSelector<
                                                            SignupPagePersonalInfoFormZipCodeBloc,
                                                            SignupPagePersonalInfoFormZipCodeState,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .postalcodeoneController,
                                                        builder: (context,
                                                            postalcodeoneController) {
                                                          return CustomTextFormField(
                                                              width: 160.h,
                                                              controller:
                                                                  postalcodeoneController,
                                                              hintText:
                                                                  'lbl87'.tr,
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      vertical:
                                                                          9.v),
                                                              borderDecoration:
                                                                  TextFormFieldStyleHelper
                                                                      .outlineBlueGray,
                                                              filled: false);
                                                        })
                                                  ]))),
                                      Expanded(
                                          child: CustomElevatedButton(
                                              height: 42.v,
                                              text: 'lbl88'.tr,
                                              margin: EdgeInsets.only(
                                                  left: 4.h, top: 15.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillBlueGray,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallOnPrimaryContainer))
                                    ]),
                                SizedBox(height: 10.v),
                                BlocSelector<
                                        SignupPagePersonalInfoFormZipCodeBloc,
                                        SignupPagePersonalInfoFormZipCodeState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.defaultaddressController,
                                    builder:
                                        (context, defaultaddressController) {
                                      return CustomTextFormField(
                                          controller: defaultaddressController,
                                          hintText: 'lbl89'.tr,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlueGray,
                                          filled: false);
                                    }),
                                SizedBox(height: 10.v),
                                BlocSelector<
                                        SignupPagePersonalInfoFormZipCodeBloc,
                                        SignupPagePersonalInfoFormZipCodeState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.detailedaddressController,
                                    builder:
                                        (context, detailedaddressController) {
                                      return CustomTextFormField(
                                          controller: detailedaddressController,
                                          hintText: 'lbl90'.tr,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlueGray,
                                          filled: false);
                                    }),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl91'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      BlocSelector<
                                              SignupPagePersonalInfoFormZipCodeBloc,
                                              SignupPagePersonalInfoFormZipCodeState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.emailaddressController,
                                          builder: (context,
                                              emailaddressController) {
                                            return CustomTextFormField(
                                                controller:
                                                    emailaddressController,
                                                hintText: 'lbl92'.tr,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 9.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlineBlueGray,
                                                filled: false);
                                          })
                                    ]),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl66'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      BlocSelector<
                                              SignupPagePersonalInfoFormZipCodeBloc,
                                              SignupPagePersonalInfoFormZipCodeState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.eyecrossedoutController,
                                          builder: (context,
                                              eyecrossedoutController) {
                                            return CustomTextFormField(
                                                controller:
                                                    eyecrossedoutController,
                                                hintText: 'msg_6_12'.tr,
                                                suffix: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30.h,
                                                        top: 7.v,
                                                        bottom: 8.v),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEyeCrossedOut)),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 39.v),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 9.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlineBlueGray,
                                                filled: false);
                                          })
                                    ]),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl93'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      BlocSelector<
                                              SignupPagePersonalInfoFormZipCodeBloc,
                                              SignupPagePersonalInfoFormZipCodeState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.passwordreentryController,
                                          builder: (context,
                                              passwordreentryController) {
                                            return CustomTextFormField(
                                                controller:
                                                    passwordreentryController,
                                                hintText: 'lbl94'.tr,
                                                suffix: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30.h,
                                                        top: 7.v,
                                                        bottom: 8.v),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEyeCrossedOut)),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 39.v),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 9.v),
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlineBlueGray,
                                                filled: false);
                                          })
                                    ]),
                                SizedBox(height: 30.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl45'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 3.v),
                                      BlocSelector<
                                              SignupPagePersonalInfoFormZipCodeBloc,
                                              SignupPagePersonalInfoFormZipCodeState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.nicknameinputController,
                                          builder: (context,
                                              nicknameinputController) {
                                            return CustomTextFormField(
                                                controller:
                                                    nicknameinputController,
                                                hintText: 'lbl_83'.tr,
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
                                    ])
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: CustomElevatedButton(
                    height: 48.v,
                    text: 'lbl95'.tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL8,
                    buttonTextStyle: CustomTextStyles.titleSmallBluegray200))));
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
