// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k64_screen/bloc/k64_bloc.dart';
import '/presentation/k64_screen/models/k64_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class K64Screen extends StatelessWidget {
  const K64Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K64Bloc>(
        create: (context) =>
            K64Bloc(K64State(k64ModelObj: K64Model()))..add(K64InitialEvent()),
        child: const K64Screen());
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
                title: AppbarSubtitle1(text: 'lbl98'.tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('lbl100'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K64Bloc, K64State, K64Model?>(
                          selector: (state) => state.k64ModelObj,
                          builder: (context, k64ModelObj) {
                            return CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 3.v, 6.h, 5.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: 'lbl101'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                items: k64ModelObj?.dropdownItemList ?? [],
                                contentPadding: EdgeInsets.only(
                                    left: 9.h, top: 4.v, bottom: 4.v),
                                borderDecoration:
                                    DropDownStyleHelper.outlineGray1,
                                onChanged: (value) {
                                  context
                                      .read<K64Bloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                });
                          }),
                      SizedBox(height: 20.v),
                      Text('lbl102'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child:
                                    BlocSelector<K64Bloc, K64State, K64Model?>(
                                        selector: (state) => state.k64ModelObj,
                                        builder: (context, k64ModelObj) {
                                          return CustomDropDown(
                                              icon: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      28.h, 4.v, 12.h, 4.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray700)),
                                              margin:
                                                  EdgeInsets.only(right: 8.h),
                                              hintText: 'lbl103'.tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeNotoSansKRGray700,
                                              items: k64ModelObj
                                                      ?.dropdownItemList1 ??
                                                  [],
                                              contentPadding: EdgeInsets.only(
                                                  left: 30.h,
                                                  top: 2.v,
                                                  bottom: 2.v),
                                              borderDecoration:
                                                  DropDownStyleHelper
                                                      .fillOnPrimaryContainer,
                                              filled: true,
                                              fillColor: theme.colorScheme
                                                  .onPrimaryContainer,
                                              onChanged: (value) {
                                                context.read<K64Bloc>().add(
                                                    ChangeDropDown1Event(
                                                        value: value));
                                              });
                                        })),
                            Expanded(
                                child:
                                    BlocSelector<K64Bloc, K64State, K64Model?>(
                                        selector: (state) => state.k64ModelObj,
                                        builder: (context, k64ModelObj) {
                                          return CustomDropDown(
                                              icon: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      30.h, 4.v, 12.h, 4.v),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray700)),
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              hintText: 'lbl_112'.tr,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeNotoSansKRGray700,
                                              items: k64ModelObj
                                                      ?.dropdownItemList2 ??
                                                  [],
                                              contentPadding: EdgeInsets.only(
                                                  left: 30.h,
                                                  top: 2.v,
                                                  bottom: 2.v),
                                              borderDecoration:
                                                  DropDownStyleHelper
                                                      .fillOnPrimaryContainer,
                                              filled: true,
                                              fillColor: theme.colorScheme
                                                  .onPrimaryContainer,
                                              onChanged: (value) {
                                                context.read<K64Bloc>().add(
                                                    ChangeDropDown2Event(
                                                        value: value));
                                              });
                                        }))
                          ]),
                      SizedBox(height: 9.v),
                      BlocSelector<K64Bloc, K64State, TextEditingController?>(
                          selector: (state) => state.licensenumberonController,
                          builder: (context, licensenumberonController) {
                            return CustomTextFormField(
                                controller: licensenumberonController,
                                hintText: 'msg20'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 20.v),
                      Text('lbl104'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K64Bloc, K64State, TextEditingController?>(
                          selector: (state) => state.expirationdateoController,
                          builder: (context, expirationdateoController) {
                            return CustomTextFormField(
                                controller: expirationdateoController,
                                hintText: 'msg8'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 20.v),
                      Text('lbl163'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K64Bloc, K64State, TextEditingController?>(
                          selector: (state) => state.issuancedateonlController,
                          builder: (context, issuancedateonlController) {
                            return CustomTextFormField(
                                controller: issuancedateonlController,
                                hintText: 'msg26'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: 'lbl106'.tr,
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
