// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/signup_page_license_register_screen/bloc/signup_page_license_register_bloc.dart';
import '/presentation/signup_page_license_register_screen/models/signup_page_license_register_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_2.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_text_form_field.dart';

class SignupPageLicenseRegisterScreen extends StatelessWidget {
  const SignupPageLicenseRegisterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPageLicenseRegisterBloc>(
        create: (context) => SignupPageLicenseRegisterBloc(
            SignupPageLicenseRegisterState(
                signupPageLicenseRegisterModelObj:
                    SignupPageLicenseRegisterModel()))
          ..add(SignupPageLicenseRegisterInitialEvent()),
        child: const SignupPageLicenseRegisterScreen());
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
                title: AppbarSubtitle2(text: 'lbl98'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Container(
                                    height: 200.v,
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40.h, vertical: 20.v),
                                    decoration: AppDecoration.fillIndigo,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.zero,
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height: 160.v,
                                                      width: 262.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                              vertical: 9.v),
                                                      decoration: AppDecoration
                                                          .fillOnPrimaryContainer
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLightbulb,
                                                                height: 67.v,
                                                                width: 64.h),
                                                            Align(
                                                                child:
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 6
                                                                                .h),
                                                                        padding: EdgeInsets.symmetric(
                                                                            vertical: 13
                                                                                .v),
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: fs.Svg(ImageConstant
                                                                                    .imgGroup22),
                                                                                fit: BoxFit
                                                                                    .cover)),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              Container(
                                                                                  margin: EdgeInsets.only(left: 69.h),
                                                                                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v),
                                                                                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                  child: Text(
                                                                                    'lbl_b'.tr,
                                                                                    style: CustomTextStyles.bodySmallPrimary,
                                                                                  )),
                                                                              SizedBox(height: 65.v),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    Container(
                                                                                        margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                                                                                        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v),
                                                                                        decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                        child: Text(
                                                                                          'lbl_c'.tr,
                                                                                          style: CustomTextStyles.bodySmallPrimary,
                                                                                        )),
                                                                                    CustomIconButton(
                                                                                      height: 24.adaptSize,
                                                                                      width: 24.adaptSize,
                                                                                      decoration: IconButtonStyleHelper.fillBlueGray,
                                                                                      child: CustomImageView(
                                                                                        svgPath: ImageConstant.imgFrame,
                                                                                      ),
                                                                                    )
                                                                                  ]))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 28
                                                                            .h),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              'lbl99'.tr,
                                                                              style: CustomTextStyles.sUITGray60001),
                                                                          SizedBox(
                                                                              height: 6.v),
                                                                          Text(
                                                                              'lbl_11_12_345678_90'.tr,
                                                                              style: CustomTextStyles.bodyMediumPretendardGray60001),
                                                                          SizedBox(
                                                                              height: 11.v),
                                                                          Text(
                                                                              'lbl18'.tr,
                                                                              style: CustomTextStyles.sUITGray60001),
                                                                          SizedBox(
                                                                              height: 1.v),
                                                                          Text(
                                                                              'lbl_000000_1000000'.tr,
                                                                              style: CustomTextStyles.sUITGray60001),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.centerRight,
                                                                            child:
                                                                                Container(
                                                                              width: 41.h,
                                                                              margin: EdgeInsets.only(top: 37.v, right: 18.h),
                                                                              child: Text(
                                                                                'msg_20xx_01_01_20xx_12_31'.tr,
                                                                                maxLines: 2,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.right,
                                                                                style: CustomTextStyles.sUITGray60001.copyWith(
                                                                                  height: 1.43,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                              height: 8.v),
                                                                          Text(
                                                                              'lbl_20xx_01_01'.tr,
                                                                              style: CustomTextStyles.sUITGray60001)
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Container(
                                                                    height:
                                                                        17.v,
                                                                    width: 48.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                appTheme.blueGray700,
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    height:
                                                                        17.v,
                                                                    width: 58.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                appTheme.blueGray700,
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Container(
                                                                    height:
                                                                        23.v,
                                                                    width:
                                                                        124.h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 15
                                                                            .v,
                                                                        right: 24
                                                                            .h),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                appTheme.blueGray700,
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Container(
                                                                    height:
                                                                        26.v,
                                                                    width:
                                                                        107.h,
                                                                    margin: EdgeInsets.only(
                                                                        right: 41
                                                                            .h,
                                                                        bottom: 18
                                                                            .v),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                appTheme.blueGray700,
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Container(
                                                                    margin: EdgeInsets.only(
                                                                        left: 75
                                                                            .h),
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            4.h,
                                                                        vertical: 2
                                                                            .v),
                                                                    decoration: AppDecoration
                                                                        .outlineOnPrimaryContainer
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Text(
                                                                        'lbl_d'
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodySmallPrimary)))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.v),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineOnPrimaryContainer
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Text('lbl_a'.tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPrimary)))
                                        ])),
                                SizedBox(height: 20.v),
                                SizedBox(
                                    height: 58.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: Text('lbl100'.tr,
                                                        style: theme.textTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                BlocSelector<
                                                        SignupPageLicenseRegisterBloc,
                                                        SignupPageLicenseRegisterState,
                                                        SignupPageLicenseRegisterModel?>(
                                                    selector: (state) => state
                                                        .signupPageLicenseRegisterModelObj,
                                                    builder: (context,
                                                        signupPageLicenseRegisterModelObj) {
                                                      return CustomDropDown(
                                                          icon: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 30
                                                                          .h),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCaretdown)),
                                                          hintText: 'lbl101'.tr,
                                                          items: signupPageLicenseRegisterModelObj
                                                                  ?.dropdownItemList ??
                                                              [],
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          9.v),
                                                          onChanged: (value) {
                                                            context
                                                                .read<
                                                                    SignupPageLicenseRegisterBloc>()
                                                                .add(ChangeDropDownEvent(
                                                                    value:
                                                                        value));
                                                          });
                                                    })
                                              ])),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineOnPrimaryContainer
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Text('lbl_a'.tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPrimary)))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 30.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 58.v,
                                              width: 160.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          19.h),
                                                              child: Text(
                                                                  'lbl102'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)),
                                                          SizedBox(height: 3.v),
                                                          Container(
                                                              width: 160.h,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          9.v),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBluegray200,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        'lbl103'
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodyLargeBluegray200),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCaretdown,
                                                                        height: 18
                                                                            .adaptSize,
                                                                        width: 18
                                                                            .adaptSize)
                                                                  ]))
                                                        ])),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4.h,
                                                                    vertical:
                                                                        2.v),
                                                            decoration: AppDecoration
                                                                .outlineOnPrimaryContainer
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Text(
                                                                'lbl_b'.tr,
                                                                style: CustomTextStyles
                                                                    .bodySmallPrimary)))
                                                  ])),
                                          BlocSelector<
                                                  SignupPageLicenseRegisterBloc,
                                                  SignupPageLicenseRegisterState,
                                                  SignupPageLicenseRegisterModel?>(
                                              selector: (state) => state
                                                  .signupPageLicenseRegisterModelObj,
                                              builder: (context,
                                                  signupPageLicenseRegisterModelObj) {
                                                return CustomDropDown(
                                                    width: 160.h,
                                                    icon: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 30.h),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCaretdown)),
                                                    margin: EdgeInsets.only(
                                                        left: 8.h, top: 19.v),
                                                    hintText: 'lbl_112'.tr,
                                                    items: signupPageLicenseRegisterModelObj
                                                            ?.dropdownItemList1 ??
                                                        [],
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 9.v),
                                                    onChanged: (value) {
                                                      context
                                                          .read<
                                                              SignupPageLicenseRegisterBloc>()
                                                          .add(
                                                              ChangeDropDown1Event(
                                                                  value:
                                                                      value));
                                                    });
                                              })
                                        ])),
                                BlocSelector<
                                        SignupPageLicenseRegisterBloc,
                                        SignupPageLicenseRegisterState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.licensenumberinController,
                                    builder:
                                        (context, licensenumberinController) {
                                      return CustomTextFormField(
                                          controller: licensenumberinController,
                                          margin: EdgeInsets.only(
                                              left: 16.h,
                                              top: 10.v,
                                              right: 16.h),
                                          hintText: 'msg7'.tr,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlueGray,
                                          filled: false);
                                    }),
                                SizedBox(height: 30.v),
                                SizedBox(
                                    height: 58.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: Text('lbl104'.tr,
                                                        style: theme.textTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                BlocSelector<
                                                        SignupPageLicenseRegisterBloc,
                                                        SignupPageLicenseRegisterState,
                                                        TextEditingController?>(
                                                    selector: (state) =>
                                                        state.tfController,
                                                    builder: (context,
                                                        tfController) {
                                                      return CustomTextFormField(
                                                          controller:
                                                              tfController,
                                                          hintText: 'msg8'.tr,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          9.v),
                                                          borderDecoration:
                                                              TextFormFieldStyleHelper
                                                                  .outlineBlueGray,
                                                          filled: false);
                                                    })
                                              ])),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineOnPrimaryContainer
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Text('lbl_c'.tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPrimary)))
                                        ])),
                                SizedBox(height: 30.v),
                                SizedBox(
                                    height: 58.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: Text('lbl105'.tr,
                                                        style: theme.textTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                BlocSelector<
                                                        SignupPageLicenseRegisterBloc,
                                                        SignupPageLicenseRegisterState,
                                                        TextEditingController?>(
                                                    selector: (state) => state
                                                        .licensedateinpuController,
                                                    builder: (context,
                                                        licensedateinpuController) {
                                                      return CustomTextFormField(
                                                          controller:
                                                              licensedateinpuController,
                                                          hintText: 'msg9'.tr,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          9.v),
                                                          borderDecoration:
                                                              TextFormFieldStyleHelper
                                                                  .outlineBlueGray,
                                                          filled: false);
                                                    })
                                              ])),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.h,
                                                      vertical: 2.v),
                                                  decoration: AppDecoration
                                                      .outlineOnPrimaryContainer
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Text('lbl_d'.tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPrimary)))
                                        ]))
                              ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 48.v,
                text: 'lbl106'.tr,
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
