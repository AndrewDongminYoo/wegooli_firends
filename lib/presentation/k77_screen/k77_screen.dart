import 'package:wegooli_friends_app/presentation/k77_screen/bloc/k77_bloc.dart';
import 'package:wegooli_friends_app/presentation/k77_screen/models/k77_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/core/utils/validation_functions.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K77Screen extends StatelessWidget {
  K77Screen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<K77Bloc>(
        create: (context) =>
            K77Bloc(K77State(k77ModelObj: K77Model()))..add(K77InitialEvent()),
        child: K77Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl48'.tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('lbl91'.tr,
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 4.v),
                                BlocSelector<K77Bloc, K77State,
                                        TextEditingController?>(
                                    selector: (state) => state.emailController,
                                    builder: (context, emailController) {
                                      return CustomTextFormField(
                                          controller: emailController,
                                          hintText: 'msg_abc123_gmail_com'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50004,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value,
                                                    isRequired: true))) {
                                              return 'Please enter valid email';
                                            }
                                            return null;
                                          },
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineGrayTL5,
                                          fillColor: appTheme.blueGray30033);
                                    })
                              ]),
                          SizedBox(height: 29.v),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('lbl45'.tr,
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 4.v),
                                BlocSelector<K77Bloc, K77State,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.currentnicknameController,
                                    builder:
                                        (context, currentnicknameController) {
                                      return CustomTextFormField(
                                          controller: currentnicknameController,
                                          hintText: 'lbl193'.tr);
                                    })
                              ]),
                          SizedBox(height: 29.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 4.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('lbl194'.tr,
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 4.v),
                                              BlocSelector<K77Bloc, K77State,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.tfController,
                                                  builder:
                                                      (context, tfController) {
                                                    return CustomTextFormField(
                                                        width: 160.h,
                                                        controller:
                                                            tfController,
                                                        hintText:
                                                            'lbl_010_1234_5678'
                                                                .tr);
                                                  })
                                            ]))),
                                Expanded(
                                    child: CustomElevatedButton(
                                        height: 48.v,
                                        text: 'lbl195'.tr,
                                        margin: EdgeInsets.only(
                                            left: 4.h, top: 24.v),
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimaryTL5,
                                        buttonTextStyle:
                                            theme.textTheme.titleMedium))
                              ]),
                          SizedBox(height: 29.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 4.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('lbl162'.tr,
                                                  style: theme
                                                      .textTheme.titleMedium),
                                              SizedBox(height: 4.v),
                                              BlocSelector<K77Bloc, K77State,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.zipcodeController,
                                                  builder: (context,
                                                      zipcodeController) {
                                                    return CustomTextFormField(
                                                        width: 160.h,
                                                        controller:
                                                            zipcodeController,
                                                        hintText:
                                                            'lbl_010101'.tr);
                                                  })
                                            ]))),
                                Expanded(
                                    child: CustomElevatedButton(
                                        height: 48.v,
                                        text: 'lbl88'.tr,
                                        margin: EdgeInsets.only(
                                            left: 4.h, top: 24.v),
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimaryTL5,
                                        buttonTextStyle:
                                            theme.textTheme.titleMedium))
                              ]),
                          SizedBox(height: 10.v),
                          BlocSelector<K77Bloc, K77State,
                                  TextEditingController?>(
                              selector: (state) => state.oneController,
                              builder: (context, oneController) {
                                return CustomTextFormField(
                                    controller: oneController,
                                    hintText: 'lbl196'.tr);
                              }),
                          SizedBox(height: 10.v),
                          BlocSelector<K77Bloc, K77State,
                                  TextEditingController?>(
                              selector: (state) => state.twoController,
                              builder: (context, twoController) {
                                return CustomTextFormField(
                                    controller: twoController,
                                    hintText: 'lbl_123_4562'.tr);
                              }),
                          SizedBox(height: 29.v),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('lbl197'.tr,
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 4.v),
                                BlocSelector<K77Bloc, K77State,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.passwordcombinaController,
                                    builder:
                                        (context, passwordcombinaController) {
                                      return CustomTextFormField(
                                          controller: passwordcombinaController,
                                          hintText: 'msg_6_12'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50004,
                                          suffix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 12.v, 12.h, 12.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEyeCrossedOut)),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 48.v),
                                          contentPadding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 14.v,
                                              bottom: 14.v));
                                    })
                              ]),
                          SizedBox(height: 29.v),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('lbl93'.tr,
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 4.v),
                                BlocSelector<K77Bloc, K77State,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.passwordreenterController,
                                    builder:
                                        (context, passwordreenterController) {
                                      return CustomTextFormField(
                                          controller: passwordreenterController,
                                          hintText: 'lbl94'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50004,
                                          textInputAction: TextInputAction.done,
                                          suffix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 12.v, 12.h, 12.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgEyeCrossedOut)),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 48.v),
                                          contentPadding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 14.v,
                                              bottom: 14.v));
                                    })
                              ]),
                          SizedBox(height: 51.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomElevatedButton(
                                    width: 104.h,
                                    text: 'lbl36'.tr,
                                    buttonStyle: CustomButtonStyles.fillGray),
                                CustomElevatedButton(
                                    width: 216.h, text: 'lbl198'.tr)
                              ])
                        ]))))));
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
