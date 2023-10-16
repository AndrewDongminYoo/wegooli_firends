// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k53_screen/bloc/k53_bloc.dart';
import '/ui/k53_screen/models/k53_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class K53Screen extends StatelessWidget {
  const K53Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K53Bloc>(
        create: (context) =>
            K53Bloc(K53State(k53ModelObj: K53Model()))..add(K53InitialEvent()),
        child: const K53Screen());
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
                title: AppbarTitle(text: 'lbl85'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 23.v),
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
                                                    Text('lbl162'.tr,
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    SizedBox(height: 4.v),
                                                    BlocSelector<
                                                            K53Bloc,
                                                            K53State,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .zipcodeoneController,
                                                        builder: (context,
                                                            zipcodeoneController) {
                                                          return CustomTextFormField(
                                                              width: 160.h,
                                                              controller:
                                                                  zipcodeoneController,
                                                              hintText:
                                                                  'lbl87'.tr,
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodyLargeGray50004);
                                                        })
                                                  ]))),
                                      Expanded(
                                          child: CustomElevatedButton(
                                              height: 48.v,
                                              text: 'lbl88'.tr,
                                              margin: EdgeInsets.only(
                                                  left: 4.h, top: 24.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimaryTL5,
                                              buttonTextStyle:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                SizedBox(height: 10.v),
                                BlocSelector<K53Bloc, K53State,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.defaultaddressController,
                                    builder:
                                        (context, defaultaddressController) {
                                      return CustomTextFormField(
                                          controller: defaultaddressController,
                                          hintText: 'lbl89'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50004);
                                    }),
                                SizedBox(height: 10.v),
                                BlocSelector<K53Bloc, K53State,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.detailedaddressController,
                                    builder:
                                        (context, detailedaddressController) {
                                      return CustomTextFormField(
                                          controller: detailedaddressController,
                                          hintText: 'lbl90'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50004);
                                    }),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl91'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K53Bloc, K53State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.emailaddressController,
                                          builder: (context,
                                              emailaddressController) {
                                            return CustomTextFormField(
                                                controller:
                                                    emailaddressController,
                                                hintText: 'lbl92'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004);
                                          })
                                    ]),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl66'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K53Bloc, K53State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.passwordcomboController,
                                          builder: (context,
                                              passwordcomboController) {
                                            return CustomTextFormField(
                                                controller:
                                                    passwordcomboController,
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
                                                    BoxConstraints(
                                                        maxHeight: 48.v),
                                                contentPadding: EdgeInsets.only(
                                                    left: 8.h,
                                                    top: 14.v,
                                                    bottom: 14.v));
                                          })
                                    ]),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl93'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K53Bloc, K53State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.passwordreenterController,
                                          builder: (context,
                                              passwordreenterController) {
                                            return CustomTextFormField(
                                                controller:
                                                    passwordreenterController,
                                                hintText: 'lbl94'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004,
                                                suffix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30.h, 12.v, 12.h, 12.v),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEyeCrossedOut)),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 48.v),
                                                contentPadding: EdgeInsets.only(
                                                    left: 8.h,
                                                    top: 14.v,
                                                    bottom: 14.v));
                                          })
                                    ]),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl45'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K53Bloc, K53State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.nicknameinputController,
                                          builder: (context,
                                              nicknameinputController) {
                                            return CustomTextFormField(
                                                controller:
                                                    nicknameinputController,
                                                hintText: 'lbl_83'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004,
                                                textInputAction:
                                                    TextInputAction.done);
                                          })
                                    ])
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: 'lbl95'.tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL26,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumBluegray200))));
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
