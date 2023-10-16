// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/mypage_card_register_screen/bloc/mypage_card_register_bloc.dart';
import '/presentation/mypage_card_register_screen/models/mypage_card_register_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class MyPageCardRegisterScreen extends StatelessWidget {
  const MyPageCardRegisterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyPageCardRegisterBloc>(
        create: (context) => MyPageCardRegisterBloc(MyPageCardRegisterState(
            mypageCardRegisterModelObj: MyPageCardRegisterModel()))
          ..add(MyPageCardRegisterInitialEvent()),
        child: const MyPageCardRegisterScreen());
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
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl144'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl72'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed60001))
                                      ]),
                                      SizedBox(height: 4.v),
                                      BlocSelector<
                                              MyPageCardRegisterBloc,
                                              MyPageCardRegisterState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.cardnumbervalueController,
                                          builder: (context,
                                              cardnumbervalueController) {
                                            return CustomTextFormField(
                                                controller:
                                                    cardnumbervalueController,
                                                hintText:
                                                    'msg_0000_0000_0000'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004);
                                          })
                                    ]),
                                SizedBox(height: 26.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl145'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl72'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed60001))
                                      ]),
                                      SizedBox(height: 4.v),
                                      BlocSelector<
                                              MyPageCardRegisterBloc,
                                              MyPageCardRegisterState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.expirationdatevController,
                                          builder: (context,
                                              expirationdatevController) {
                                            return CustomTextFormField(
                                                controller:
                                                    expirationdatevController,
                                                hintText: 'lbl_mm_yy'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004);
                                          })
                                    ]),
                                SizedBox(height: 26.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl146'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl72'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed60001))
                                      ]),
                                      SizedBox(height: 4.v),
                                      BlocSelector<
                                              MyPageCardRegisterBloc,
                                              MyPageCardRegisterState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.zipcodeController,
                                          builder:
                                              (context, zipcodeController) {
                                            return CustomTextFormField(
                                                controller: zipcodeController,
                                                hintText: 'lbl_980709'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004,
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlineGrayTL5,
                                                fillColor:
                                                    appTheme.blueGray30033);
                                          })
                                    ]),
                                SizedBox(height: 26.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text('lbl_23'.tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h, bottom: 2.v),
                                            child: Text('lbl72'.tr,
                                                style: CustomTextStyles
                                                    .titleMediumRed60001))
                                      ]),
                                      SizedBox(height: 4.v),
                                      BlocSelector<
                                              MyPageCardRegisterBloc,
                                              MyPageCardRegisterState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.edittextController,
                                          builder:
                                              (context, edittextController) {
                                            return CustomTextFormField(
                                                controller: edittextController,
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
                    text: 'lbl138'.tr,
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
