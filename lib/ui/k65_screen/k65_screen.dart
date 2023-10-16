// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k65_screen/bloc/k65_bloc.dart';
import '/ui/k65_screen/models/k65_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class K65Screen extends StatelessWidget {
  const K65Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K65Bloc>(
        create: (context) =>
            K65Bloc(K65State(k65ModelObj: K65Model()))..add(K65InitialEvent()),
        child: const K65Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 42.v,
                leadingWidth: 33.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 3.h, top: 6.v, bottom: 6.v),
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
                          padding: EdgeInsets.only(left: 16.h, top: 10.v),
                          child: Text('lbl144'.tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      BlocSelector<K65Bloc, K65State, TextEditingController?>(
                          selector: (state) => state.cardnumberoneController,
                          builder: (context, cardnumberoneController) {
                            return CustomTextFormField(
                                controller: cardnumberoneController,
                                margin: EdgeInsets.only(
                                    left: 16.h, top: 9.v, right: 16.h),
                                hintText: 'msg_0000_0000_0000_0000'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                alignment: Alignment.center,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 20.v),
                          child: Text('lbl145'.tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      BlocSelector<K65Bloc, K65State, TextEditingController?>(
                          selector: (state) => state.expirationdateController,
                          builder: (context, expirationdateController) {
                            return CustomTextFormField(
                                controller: expirationdateController,
                                margin: EdgeInsets.only(
                                    left: 16.h, top: 9.v, right: 16.h),
                                hintText: 'lbl_mm_yy'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                alignment: Alignment.center,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 20.v),
                          child: Text('lbl146'.tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      BlocSelector<K65Bloc, K65State, TextEditingController?>(
                          selector: (state) => state.zipcodeController,
                          builder: (context, zipcodeController) {
                            return CustomTextFormField(
                                controller: zipcodeController,
                                margin: EdgeInsets.only(
                                    left: 16.h, top: 9.v, right: 16.h),
                                hintText: 'lbl_940111'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                alignment: Alignment.center,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray2,
                                fillColor: appTheme.gray200);
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, top: 20.v),
                          child: Text('lbl_23'.tr,
                              style: CustomTextStyles.titleMediumBlack900)),
                      BlocSelector<K65Bloc, K65State, TextEditingController?>(
                          selector: (state) => state.edittextController,
                          builder: (context, edittextController) {
                            return CustomTextFormField(
                                controller: edittextController,
                                margin: EdgeInsets.only(
                                    left: 16.h, top: 9.v, right: 16.h),
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      const Spacer(),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 14.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdownGray50002,
                                                  height: 7.v,
                                                  width: 13.h),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.h),
                                                  child: Text('msg22'.tr,
                                                      style: CustomTextStyles
                                                          .titleMediumNotoSansKRBluegray900))
                                            ]))),
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowdownGray5000230x30,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    margin:
                                        EdgeInsets.only(left: 42.h, top: 1.v))
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
