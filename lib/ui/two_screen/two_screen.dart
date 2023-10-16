// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/two_screen/bloc/two_bloc.dart';
import '/ui/two_screen/models/two_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TwoBloc>(
        create: (context) =>
            TwoBloc(TwoState(twoModelObj: TwoModel()))..add(TwoInitialEvent()),
        child: const TwoScreen());
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
                title: AppbarSubtitle1(text: 'lbl188'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 36.v),
                          child: Text('lbl190'.tr,
                              style: CustomTextStyles.titleLargeBlack900)),
                      SizedBox(height: 33.v),
                      SizedBox(
                          height: 436.v,
                          width: 359.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('lbl144'.tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900),
                                              SizedBox(height: 9.v),
                                              BlocSelector<TwoBloc, TwoState,
                                                      TextEditingController?>(
                                                  selector: (state) => state
                                                      .cardnumberoneController,
                                                  builder: (context,
                                                      cardnumberoneController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            cardnumberoneController,
                                                        hintText:
                                                            'msg_0000_0000_0000_0000'
                                                                .tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargeNotoSansKRGray700,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        9.h,
                                                                    vertical:
                                                                        4.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineGray1,
                                                        filled: false);
                                                  }),
                                              SizedBox(height: 20.v),
                                              Text('lbl145'.tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900),
                                              SizedBox(height: 9.v),
                                              BlocSelector<TwoBloc, TwoState,
                                                      TextEditingController?>(
                                                  selector: (state) => state
                                                      .expirationdateController,
                                                  builder: (context,
                                                      expirationdateController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            expirationdateController,
                                                        hintText:
                                                            'lbl_mm_yy'.tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargeNotoSansKRGray700,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        9.h,
                                                                    vertical:
                                                                        4.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineGray1,
                                                        filled: false);
                                                  }),
                                              SizedBox(height: 20.v),
                                              Text('lbl146'.tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900),
                                              SizedBox(height: 9.v),
                                              BlocSelector<TwoBloc, TwoState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.zipcodeController,
                                                  builder: (context,
                                                      zipcodeController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            zipcodeController,
                                                        hintText:
                                                            'lbl_940111'.tr,
                                                        hintStyle: CustomTextStyles
                                                            .bodyLargeNotoSansKRGray700,
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        9.h,
                                                                    vertical:
                                                                        4.v),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineGray2,
                                                        fillColor:
                                                            appTheme.gray200);
                                                  }),
                                              SizedBox(height: 20.v),
                                              Text('lbl_23'.tr,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900),
                                              SizedBox(height: 9.v),
                                              BlocSelector<TwoBloc, TwoState,
                                                      TextEditingController?>(
                                                  selector: (state) =>
                                                      state.edittextController,
                                                  builder: (context,
                                                      edittextController) {
                                                    return CustomTextFormField(
                                                        controller:
                                                            edittextController,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .outlineGray1,
                                                        filled: false);
                                                  })
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 11.h, vertical: 6.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 9.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 2.v),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomIconButton(
                                                                      height: 24
                                                                          .adaptSize,
                                                                      width: 24
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          bottom: 2
                                                                              .v),
                                                                      padding: EdgeInsets
                                                                          .all(5
                                                                              .h),
                                                                      decoration:
                                                                          IconButtonStyleHelper
                                                                              .outlineGray,
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgArrowdownGray50002)),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 12
                                                                              .h),
                                                                      child: Text(
                                                                          'msg22'
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleMediumNotoSansKRBluegray900))
                                                                ]))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowdownGray5000230x30,
                                                        height: 30.adaptSize,
                                                        width: 30.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 42.h))
                                                  ]),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h,
                                                      top: 27.v,
                                                      right: 1.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        1.v),
                                                            child: Text(
                                                                'lbl165'.tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeNotoSansKRGray50002)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height:
                                                                30.adaptSize,
                                                            width: 30.adaptSize)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h,
                                                      top: 11.v,
                                                      right: 2.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        1.v),
                                                            child: Text(
                                                                'lbl166'.tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeNotoSansKRGray50002)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height:
                                                                30.adaptSize,
                                                            width: 30.adaptSize)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h,
                                                      top: 11.v,
                                                      right: 2.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        1.v),
                                                            child: Text(
                                                                'lbl167'.tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeNotoSansKRGray50002)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height:
                                                                30.adaptSize,
                                                            width: 30.adaptSize)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h,
                                                      top: 6.v,
                                                      right: 1.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    bottom:
                                                                        1.v),
                                                            child: Text(
                                                                'lbl168'.tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeNotoSansKRGray50002)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height:
                                                                30.adaptSize,
                                                            width: 30.adaptSize)
                                                      ]))
                                            ])))
                              ]))
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: 'lbl164'.tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 35.v),
                buttonStyle: CustomButtonStyles.outlineGrayTL4)));
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