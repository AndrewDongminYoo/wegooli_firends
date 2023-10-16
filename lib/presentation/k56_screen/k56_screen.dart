// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k56_screen/bloc/k56_bloc.dart';
import '/presentation/k56_screen/models/k56_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_checkbox_button.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class K56Screen extends StatelessWidget {
  const K56Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K56Bloc>(
        create: (context) =>
            K56Bloc(K56State(k56ModelObj: K56Model()))..add(K56InitialEvent()),
        child: const K56Screen());
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
                title: AppbarTitle(text: 'lbl124'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl144'.tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 4.v),
                                          BlocSelector<K56Bloc, K56State,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.cardnumberoneController,
                                              builder: (context,
                                                  cardnumberoneController) {
                                                return CustomTextFormField(
                                                    controller:
                                                        cardnumberoneController,
                                                    hintText:
                                                        'msg_0000_0000_0000'.tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeGray50004);
                                              })
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 29.v, right: 16.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl145'.tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 4.v),
                                          BlocSelector<K56Bloc, K56State,
                                                  TextEditingController?>(
                                              selector: (state) => state
                                                  .expirationdateController,
                                              builder: (context,
                                                  expirationdateController) {
                                                return CustomTextFormField(
                                                    controller:
                                                        expirationdateController,
                                                    hintText: 'lbl_mm_yy'.tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeGray50004);
                                              })
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 29.v, right: 16.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl146'.tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 4.v),
                                          BlocSelector<K56Bloc, K56State,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.zipcodeController,
                                              builder:
                                                  (context, zipcodeController) {
                                                return CustomTextFormField(
                                                    controller:
                                                        zipcodeController,
                                                    hintText: 'lbl_980709'.tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeGray50004,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .outlineGrayTL5,
                                                    fillColor:
                                                        appTheme.blueGray30033);
                                              })
                                        ])),
                                SizedBox(height: 26.v),
                                SizedBox(
                                    height: 221.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2.v),
                                                              child: Text(
                                                                  'lbl_23'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleMedium)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 5.h,
                                                                      bottom:
                                                                          2.v),
                                                              child: Text(
                                                                  'lbl72'.tr,
                                                                  style: CustomTextStyles
                                                                      .titleMediumRed60001))
                                                        ]),
                                                        SizedBox(height: 4.v),
                                                        Container(
                                                            height: 48.v,
                                                            width: 328.h,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5
                                                                                .h),
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .gray40001,
                                                                    width:
                                                                        1.h)))
                                                      ]))),
                                          Align(
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 21.v),
                                                  decoration: AppDecoration
                                                      .outlineBluegray300332,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              BlocSelector<
                                                                      K56Bloc,
                                                                      K56State,
                                                                      bool?>(
                                                                  selector:
                                                                      (state) =>
                                                                          state
                                                                              .tf,
                                                                  builder:
                                                                      (context,
                                                                          tf) {
                                                                    return CustomCheckboxButton(
                                                                        text: 'msg22'
                                                                            .tr,
                                                                        value:
                                                                            tf,
                                                                        onChange:
                                                                            (value) {
                                                                          context
                                                                              .read<K56Bloc>()
                                                                              .add(ChangeCheckBoxEvent(value: value));
                                                                        });
                                                                  }),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowrightOnPrimary,
                                                                  height: 18
                                                                      .adaptSize,
                                                                  width: 18
                                                                      .adaptSize)
                                                            ]),
                                                        SizedBox(height: 24.v),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('lbl165'.tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeBlack900),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowrightOnPrimary,
                                                                  height: 18
                                                                      .adaptSize,
                                                                  width: 18
                                                                      .adaptSize)
                                                            ]),
                                                        SizedBox(height: 16.v),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('lbl166'.tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeBlack900),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowrightOnPrimary,
                                                                  height: 18
                                                                      .adaptSize,
                                                                  width: 18
                                                                      .adaptSize)
                                                            ]),
                                                        SizedBox(height: 16.v),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('lbl167'.tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeBlack900),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowrightOnPrimary,
                                                                  height: 18
                                                                      .adaptSize,
                                                                  width: 18
                                                                      .adaptSize)
                                                            ]),
                                                        SizedBox(height: 15.v),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text('lbl168'.tr,
                                                                  style: CustomTextStyles
                                                                      .bodyLargeBlack900),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowrightOnPrimary,
                                                                  height: 18
                                                                      .adaptSize,
                                                                  width: 18
                                                                      .adaptSize)
                                                            ])
                                                      ])))
                                        ]))
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: 'lbl164'.tr,
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
