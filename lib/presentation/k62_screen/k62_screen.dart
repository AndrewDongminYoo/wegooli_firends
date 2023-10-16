// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k62_screen/bloc/k62_bloc.dart';
import '/presentation/k62_screen/models/k62_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class K62Screen extends StatelessWidget {
  const K62Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K62Bloc>(
        create: (context) =>
            K62Bloc(K62State(k62ModelObj: K62Model()))..add(K62InitialEvent()),
        child: const K62Screen());
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
                title: AppbarSubtitle1(text: 'lbl180'.tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('lbl71'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K62Bloc, K62State, TextEditingController?>(
                          selector: (state) => state.nameinputoneController,
                          builder: (context, nameinputoneController) {
                            return CustomTextFormField(
                                controller: nameinputoneController,
                                hintText: 'lbl73'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 20.v),
                      Text('lbl181'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocSelector<K62Bloc, K62State,
                                    TextEditingController?>(
                                selector: (state) => state.tfController,
                                builder: (context, tfController) {
                                  return CustomTextFormField(
                                      width: 156.h,
                                      controller: tfController,
                                      hintText: 'lbl_yymmdd'.tr,
                                      hintStyle: CustomTextStyles
                                          .bodyLargeNotoSansKRGray700,
                                      contentPadding: EdgeInsets.all(4.h),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.outlineGray1,
                                      filled: false);
                                }),
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                                child: Text('lbl182'.tr,
                                    style:
                                        CustomTextStyles.titleMediumBlack900)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 2.v),
                                decoration: AppDecoration.outlineGray700,
                                child: Text('lbl_n2'.tr,
                                    style: CustomTextStyles
                                        .bodyLargeNotoSansKRGray700))
                          ]),
                      Padding(
                          padding: EdgeInsets.only(top: 4.v, right: 90.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 3.adaptSize,
                                    width: 3.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 9.v, bottom: 11.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray900,
                                        borderRadius:
                                            BorderRadius.circular(1.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text('msg_263'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeNotoSansKRBluegray900))
                              ])),
                      SizedBox(height: 16.v),
                      Text('lbl74'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K62Bloc, K62State, TextEditingController?>(
                          selector: (state) => state.phonenumberoneController,
                          builder: (context, phonenumberoneController) {
                            return CustomTextFormField(
                                controller: phonenumberoneController,
                                hintText: 'lbl_0'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 9.v),
                      BlocSelector<K62Bloc, K62State, TextEditingController?>(
                          selector: (state) => state.sendverificatioController,
                          builder: (context, sendverificatioController) {
                            return CustomTextFormField(
                                controller: sendverificatioController,
                                hintText: 'lbl76'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGrayTL4,
                                filled: false);
                          }),
                      SizedBox(height: 9.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 2.v),
                                decoration: AppDecoration.outlineGray700,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text('lbl84'.tr,
                                              style: CustomTextStyles
                                                  .bodyLargeNotoSansKRGray700)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 92.h, top: 2.v),
                                          child: Text('lbl_3_00'.tr,
                                              style: CustomTextStyles
                                                  .bodyLargeNotoSansKRBlack900))
                                    ])),
                            CustomOutlinedButton(width: 88.h, text: 'lbl37'.tr)
                          ]),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: 'lbl161'.tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v),
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
