import 'package:wegooli_friends_app/presentation/k55_screen/bloc/k55_bloc.dart';
import 'package:wegooli_friends_app/presentation/k55_screen/models/k55_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class K55Screen extends StatelessWidget {
  const K55Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K55Bloc>(
        create: (context) =>
            K55Bloc(K55State(k55ModelObj: K55Model()))..add(K55InitialEvent()),
        child: const K55Screen());
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
                                          BlocSelector<K55Bloc, K55State,
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
                                          BlocSelector<K55Bloc, K55State,
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
                                          BlocSelector<K55Bloc, K55State,
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
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .outlineGrayTL5,
                                                    fillColor:
                                                        appTheme.blueGray30033);
                                              })
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 29.v, right: 16.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl_23'.tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          SizedBox(height: 4.v),
                                          BlocSelector<K55Bloc, K55State,
                                                  TextEditingController?>(
                                              selector: (state) =>
                                                  state.edittextController,
                                              builder: (context,
                                                  edittextController) {
                                                return CustomTextFormField(
                                                    controller:
                                                        edittextController,
                                                    textInputAction:
                                                        TextInputAction.done);
                                              })
                                        ])),
                                SizedBox(height: 82.v),
                                BlocSelector<K55Bloc, K55State, K55Model?>(
                                    selector: (state) => state.k55ModelObj,
                                    builder: (context, k55ModelObj) {
                                      return CustomDropDown(
                                          icon: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 23.v, 16.h, 23.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightOnPrimary)),
                                          hintText: 'msg22'.tr,
                                          hintStyle: theme.textTheme.bodyLarge,
                                          items:
                                              k55ModelObj?.dropdownItemList ??
                                                  [],
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  16.h, 22.v, 10.h, 22.v),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgComputer)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 64.v),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 22.v),
                                          borderDecoration: DropDownStyleHelper
                                              .outlineBlueGray1,
                                          filled: true,
                                          fillColor: theme
                                              .colorScheme.onPrimaryContainer,
                                          onChanged: (value) {
                                            context.read<K55Bloc>().add(
                                                ChangeDropDownEvent(
                                                    value: value));
                                          });
                                    })
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
