// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signup_page_identity_verification_waiting_with_telecom_screen/bloc/signup_page_identity_verification_waiting_with_telecom_bloc.dart';
import '/presentation/signup_page_identity_verification_waiting_with_telecom_screen/models/signup_page_identity_verification_waiting_with_telecom_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_2.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class SignupPageIdentityVerificationWaitingWithTelecomScreen
    extends StatelessWidget {
  const SignupPageIdentityVerificationWaitingWithTelecomScreen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPageIdentityVerificationWaitingWithTelecomBloc>(
        create: (context) => SignupPageIdentityVerificationWaitingWithTelecomBloc(
            SignupPageIdentityVerificationWaitingWithTelecomState(
                signupPageIdentityVerificationWaitingWithTelecomModelObj:
                    SignupPageIdentityVerificationWaitingWithTelecomModel()))
          ..add(SignupPageIdentityVerificationWaitingWithTelecomInitialEvent()),
        child: const SignupPageIdentityVerificationWaitingWithTelecomScreen());
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
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('lbl71'.tr,
                                  style: theme.textTheme.bodySmall),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLabeltext,
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 2.h, bottom: 10.v))
                            ]),
                        SizedBox(height: 3.v),
                        BlocSelector<
                                SignupPageIdentityVerificationWaitingWithTelecomBloc,
                                SignupPageIdentityVerificationWaitingWithTelecomState,
                                TextEditingController?>(
                            selector: (state) => state.nameoneController,
                            builder: (context, nameoneController) {
                              return CustomTextFormField(
                                  controller: nameoneController,
                                  hintText: 'lbl18'.tr,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlineBlueGray,
                                  filled: false);
                            })
                      ]),
                  SizedBox(height: 30.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('lbl_133'.tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLabeltext,
                                        height: 5.adaptSize,
                                        width: 5.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 2.h, bottom: 10.v))
                                  ]),
                              SizedBox(height: 3.v),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 9.v),
                                  decoration: AppDecoration.outlineBluegray200,
                                  child: Text('lbl_980709'.tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 3.v),
                              Text('msg_26'.tr,
                                  style: CustomTextStyles
                                      .bodySmallPrimaryContainer)
                            ]),
                        Container(
                            margin: EdgeInsets.only(top: 19.v, bottom: 18.v),
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            decoration: AppDecoration.outlineBluegray200,
                            child: Text('lbl107'.tr,
                                style: theme.textTheme.bodyLarge))
                      ]),
                  SizedBox(height: 30.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('lbl74'.tr,
                                        style: theme.textTheme.bodySmall),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLabeltext,
                                        height: 5.adaptSize,
                                        width: 5.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 2.h, bottom: 10.v))
                                  ]),
                              SizedBox(height: 3.v),
                              BlocSelector<
                                      SignupPageIdentityVerificationWaitingWithTelecomBloc,
                                      SignupPageIdentityVerificationWaitingWithTelecomState,
                                      SignupPageIdentityVerificationWaitingWithTelecomModel?>(
                                  selector: (state) => state
                                      .signupPageIdentityVerificationWaitingWithTelecomModelObj,
                                  builder: (context,
                                      signupPageIdentityVerificationWaitingWithTelecomModelObj) {
                                    return CustomDropDown(
                                        width: 104.h,
                                        icon: Container(
                                            margin: EdgeInsets.only(left: 30.h),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCaretdown)),
                                        hintText: 'lbl_kt'.tr,
                                        hintStyle: theme.textTheme.bodyLarge,
                                        items:
                                            signupPageIdentityVerificationWaitingWithTelecomModelObj
                                                    ?.dropdownItemList ??
                                                [],
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 9.v),
                                        onChanged: (value) {
                                          context
                                              .read<
                                                  SignupPageIdentityVerificationWaitingWithTelecomBloc>()
                                              .add(ChangeDropDownEvent(
                                                  value: value));
                                        });
                                  })
                            ]),
                        BlocSelector<
                                SignupPageIdentityVerificationWaitingWithTelecomBloc,
                                SignupPageIdentityVerificationWaitingWithTelecomState,
                                TextEditingController?>(
                            selector: (state) => state.phonenumberoneController,
                            builder: (context, phonenumberoneController) {
                              return CustomTextFormField(
                                  width: 216.h,
                                  controller: phonenumberoneController,
                                  margin: EdgeInsets.only(top: 19.v),
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
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: CustomElevatedButton(
                    height: 48.v,
                    text: 'lbl78'.tr,
                    buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                    buttonTextStyle: CustomTextStyles.titleSmallBold,
                    onTap: () {
                      onTaptf(context);
                    }))));
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

  /// Navigates to the signupPagePersonalInfoFormZipCodeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signupPagePersonalInfoFormZipCodeScreen.
  void onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupPagePersonalInfoFormZipCodeScreen,
    );
  }
}
