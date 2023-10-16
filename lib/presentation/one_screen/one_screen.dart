// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/one_screen/bloc/one_bloc.dart';
import '/presentation/one_screen/models/one_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OneBloc>(
        create: (context) =>
            OneBloc(OneState(oneModelObj: OneModel()))..add(OneInitialEvent()),
        child: const OneScreen());
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
                title: AppbarTitle(text: 'lbl77'.tr)),
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
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl71'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<OneBloc, OneState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.nameinputoneController,
                                          builder: (context,
                                              nameinputoneController) {
                                            return CustomTextFormField(
                                                controller:
                                                    nameinputoneController,
                                                hintText: 'lbl73'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004);
                                          })
                                    ]),
                                SizedBox(height: 29.v),
                                SizedBox(
                                    height: 91.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('lbl160'.tr,
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    SizedBox(height: 4.v),
                                                    Row(children: [
                                                      BlocSelector<
                                                              OneBloc,
                                                              OneState,
                                                              TextEditingController?>(
                                                          selector: (state) => state
                                                              .dateformatoneController,
                                                          builder: (context,
                                                              dateformatoneController) {
                                                            return CustomTextFormField(
                                                                width: 160.h,
                                                                controller:
                                                                    dateformatoneController,
                                                                hintText:
                                                                    'lbl_yymmdd'
                                                                        .tr,
                                                                hintStyle:
                                                                    CustomTextStyles
                                                                        .bodyLargeGray50004);
                                                          }),
                                                      Container(
                                                          height: 1.v,
                                                          width: 4.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.h,
                                                                  top: 24.v,
                                                                  bottom: 23.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimary))
                                                    ]),
                                                    SizedBox(height: 4.v),
                                                    Text('msg_262'.tr,
                                                        style: CustomTextStyles
                                                            .bodySmallErrorContainer)
                                                  ])),
                                          BlocSelector<OneBloc, OneState,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.settingsController,
                                              builder: (context,
                                                  settingsController) {
                                                return CustomTextFormField(
                                                    width: 160.h,
                                                    controller:
                                                        settingsController,
                                                    margin: EdgeInsets.only(
                                                        bottom: 19.v),
                                                    hintText: 'lbl_n'.tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeGray50004,
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    suffix: Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                8.h,
                                                                20.v,
                                                                30.h,
                                                                19.v),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgSettings)),
                                                    suffixConstraints:
                                                        BoxConstraints(
                                                            maxHeight: 48.v),
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            left: 8.h,
                                                            top: 14.v,
                                                            bottom: 14.v));
                                              })
                                        ])),
                                SizedBox(height: 10.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl74'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<OneBloc, OneState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.phonenumberoneController,
                                          builder: (context,
                                              phonenumberoneController) {
                                            return CustomTextFormField(
                                                controller:
                                                    phonenumberoneController,
                                                hintText:
                                                    'lbl_010_1234_5678'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004,
                                                textInputAction:
                                                    TextInputAction.done);
                                          })
                                    ]),
                                SizedBox(height: 10.v),
                                CustomElevatedButton(
                                    height: 48.v,
                                    text: 'lbl76'.tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL5,
                                    buttonTextStyle:
                                        theme.textTheme.titleMedium),
                                SizedBox(height: 12.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 4.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 13.v),
                                              decoration: AppDecoration
                                                  .outlineGray40001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text('lbl_000000'.tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeGray50004),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 41.h),
                                                        child: Text(
                                                            'lbl_3_00'.tr,
                                                            style: CustomTextStyles
                                                                .bodyLargeGray50004))
                                                  ]))),
                                      Expanded(
                                          child: CustomElevatedButton(
                                              height: 48.v,
                                              text: 'lbl37'.tr,
                                              margin:
                                                  EdgeInsets.only(left: 4.h),
                                              buttonStyle: CustomButtonStyles
                                                  .fillGrayTL5,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleMediumBluegray200_1))
                                    ])
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: 'lbl161'.tr,
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
