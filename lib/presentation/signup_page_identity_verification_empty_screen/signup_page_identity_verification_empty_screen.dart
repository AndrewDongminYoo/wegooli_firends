// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signup_page_identity_verification_empty_screen/bloc/signup_page_identity_verification_empty_bloc.dart';
import '/presentation/signup_page_identity_verification_empty_screen/models/signup_page_identity_verification_empty_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_2.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class SignupPageIdentityVerificationEmptyScreen extends StatelessWidget {
  const SignupPageIdentityVerificationEmptyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPageIdentityVerificationEmptyBloc>(
        create: (context) => SignupPageIdentityVerificationEmptyBloc(
            SignupPageIdentityVerificationEmptyState(
                signupPageIdentityVerificationEmptyModelObj:
                    SignupPageIdentityVerificationEmptyModel()))
          ..add(SignupPageIdentityVerificationEmptyInitialEvent()),
        child: const SignupPageIdentityVerificationEmptyScreen());
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
                title: AppbarSubtitle2(text: 'lbl77'.tr),
                styleType: Style.bgFill),
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
                                SignupPageIdentityVerificationEmptyBloc,
                                SignupPageIdentityVerificationEmptyState,
                                TextEditingController?>(
                            selector: (state) => state.nameinputoneController,
                            builder: (context, nameinputoneController) {
                              return CustomTextFormField(
                                  controller: nameinputoneController,
                                  hintText: 'lbl73'.tr,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlineBlueGray,
                                  filled: false);
                            })
                      ]),
                  SizedBox(height: 30.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl_133'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            decoration: AppDecoration.outlineBluegray200,
                            child: Row(children: [
                              Text('lbl_63'.tr,
                                  style: CustomTextStyles.bodyLargeBluegray200),
                              const Spacer(),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.v, bottom: 6.v),
                                  child: SizedBox(
                                      child: Divider(
                                          color: appTheme.blueGray200))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 29.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 4.h, top: 6.v, bottom: 6.v)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGlobe,
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin:
                                      EdgeInsets.fromLTRB(4.h, 6.v, 70.h, 6.v))
                            ])),
                        SizedBox(height: 3.v),
                        Text('msg_26'.tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer)
                      ]),
                  SizedBox(height: 30.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('lbl74'.tr, style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        BlocSelector<
                                SignupPageIdentityVerificationEmptyBloc,
                                SignupPageIdentityVerificationEmptyState,
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
                  SizedBox(height: 17.v),
                  CustomElevatedButton(
                      height: 42.v,
                      text: 'lbl76'.tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL8,
                      buttonTextStyle: CustomTextStyles.titleSmallBluegray200),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: CustomElevatedButton(
                    height: 48.v,
                    text: 'lbl78'.tr,
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
