import 'package:wegooli_friends_app/presentation/k54_screen/bloc/k54_bloc.dart';
import 'package:wegooli_friends_app/presentation/k54_screen/models/k54_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_text_form_field.dart';

class K54Screen extends StatelessWidget {
  const K54Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K54Bloc>(
        create: (context) =>
            K54Bloc(K54State(k54ModelObj: K54Model()))..add(K54InitialEvent()),
        child: const K54Screen());
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
                title: AppbarTitle(text: 'lbl98'.tr)),
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
                                      Text('lbl100'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K54Bloc, K54State,
                                              K54Model?>(
                                          selector: (state) =>
                                              state.k54ModelObj,
                                          builder: (context, k54ModelObj) {
                                            return CustomDropDown(
                                                icon: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30.h, 12.v, 10.h, 12.v),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCaretdownGray800)),
                                                hintText: 'lbl101'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray500,
                                                items: k54ModelObj
                                                        ?.dropdownItemList ??
                                                    [],
                                                onChanged: (value) {
                                                  context.read<K54Bloc>().add(
                                                      ChangeDropDownEvent(
                                                          value: value));
                                                });
                                          })
                                    ]),
                                SizedBox(height: 29.v),
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
                                                    Text('lbl100'.tr,
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                    SizedBox(height: 4.v),
                                                    BlocSelector<
                                                            K54Bloc,
                                                            K54State,
                                                            K54Model?>(
                                                        selector: (state) =>
                                                            state.k54ModelObj,
                                                        builder: (context,
                                                            k54ModelObj) {
                                                          return CustomDropDown(
                                                              width: 160.h,
                                                              icon: Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          30.h,
                                                                          12.v,
                                                                          10.h,
                                                                          12.v),
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCaretdownGray800)),
                                                              hintText:
                                                                  'lbl103'.tr,
                                                              hintStyle:
                                                                  CustomTextStyles
                                                                      .bodyLargeGray500,
                                                              items: k54ModelObj
                                                                      ?.dropdownItemList1 ??
                                                                  [],
                                                              onChanged:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        K54Bloc>()
                                                                    .add(ChangeDropDown1Event(
                                                                        value:
                                                                            value));
                                                              });
                                                        })
                                                  ]))),
                                      Expanded(
                                          child: BlocSelector<K54Bloc, K54State,
                                                  K54Model?>(
                                              selector: (state) =>
                                                  state.k54ModelObj,
                                              builder: (context, k54ModelObj) {
                                                return CustomDropDown(
                                                    icon: Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                30.h,
                                                                12.v,
                                                                10.h,
                                                                12.v),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCaretdownGray800)),
                                                    margin: EdgeInsets.only(
                                                        left: 4.h, top: 24.v),
                                                    hintText: 'lbl_112'.tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeGray500,
                                                    items: k54ModelObj
                                                            ?.dropdownItemList2 ??
                                                        [],
                                                    onChanged: (value) {
                                                      context.read<K54Bloc>().add(
                                                          ChangeDropDown2Event(
                                                              value: value));
                                                    });
                                              }))
                                    ]),
                                SizedBox(height: 10.v),
                                BlocSelector<K54Bloc, K54State,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.licensenumberController,
                                    builder:
                                        (context, licensenumberController) {
                                      return CustomTextFormField(
                                          controller: licensenumberController,
                                          hintText: 'msg20'.tr,
                                          hintStyle: CustomTextStyles
                                              .bodyLargeGray50004);
                                    }),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl104'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K54Bloc, K54State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.tfController,
                                          builder: (context, tfController) {
                                            return CustomTextFormField(
                                                controller: tfController,
                                                hintText: 'msg8'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004);
                                          })
                                    ]),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl163'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K54Bloc, K54State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.licensenumberController1,
                                          builder: (context,
                                              licensenumberController1) {
                                            return CustomTextFormField(
                                                controller:
                                                    licensenumberController1,
                                                hintText: 'msg21'.tr,
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
                    text: 'lbl106'.tr,
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
