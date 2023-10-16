// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k63_screen/bloc/k63_bloc.dart';
import '/presentation/k63_screen/models/k63_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class K63Screen extends StatelessWidget {
  const K63Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K63Bloc>(
        create: (context) =>
            K63Bloc(K63State(k63ModelObj: K63Model()))..add(K63InitialEvent()),
        child: const K63Screen());
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
                title: AppbarSubtitle1(text: 'lbl183'.tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('lbl184'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 8.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocSelector<K63Bloc, K63State,
                                    TextEditingController?>(
                                selector: (state) => state.tfController,
                                builder: (context, tfController) {
                                  return CustomTextFormField(
                                      width: 220.h,
                                      controller: tfController,
                                      margin: EdgeInsets.only(top: 1.v),
                                      hintText: 'lbl87'.tr,
                                      hintStyle: CustomTextStyles
                                          .bodyLargeNotoSansKRGray700,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 6.h, vertical: 4.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.outlineGray1,
                                      filled: false);
                                }),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.h, vertical: 3.v),
                                decoration: AppDecoration.outlineGray700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: Text('lbl185'.tr,
                                    style: CustomTextStyles
                                        .bodyLargeNotoSansKRGray700))
                          ]),
                      SizedBox(height: 9.v),
                      BlocSelector<K63Bloc, K63State, TextEditingController?>(
                          selector: (state) => state.oneController,
                          builder: (context, oneController) {
                            return CustomTextFormField(
                                controller: oneController,
                                hintText: 'lbl89'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 9.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 1.v),
                          decoration: AppDecoration.outlineGray700,
                          child: Text('lbl186'.tr,
                              style:
                                  CustomTextStyles.bodyLargeNotoSansKRGray700)),
                      SizedBox(height: 20.v),
                      Text('lbl91'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K63Bloc, K63State, TextEditingController?>(
                          selector: (state) => state.twoController,
                          builder: (context, twoController) {
                            return CustomTextFormField(
                                controller: twoController,
                                hintText: 'lbl92'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 4.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 20.v),
                      Text('lbl66'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 1.v),
                          decoration: AppDecoration.outlineGray700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 4.v),
                                    child: Text('msg_6_122'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeNotoSansKRGray700)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEye,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 3.v))
                              ])),
                      SizedBox(height: 20.v),
                      Text('lbl93'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      SizedBox(
                          height: 32.v,
                          width: 328.h,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgEye,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 3.v, right: 6.h)),
                            Align(
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 9.h, vertical: 2.v),
                                    decoration: AppDecoration.outlineGray700,
                                    child: Text('lbl187'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeNotoSansKRGray700)))
                          ])),
                      SizedBox(height: 20.v),
                      Text('lbl45'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<K63Bloc, K63State, TextEditingController?>(
                          selector: (state) => state.threeController,
                          builder: (context, threeController) {
                            return CustomTextFormField(
                                controller: threeController,
                                hintText: 'lbl_84'.tr,
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
                text: 'lbl95'.tr,
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
