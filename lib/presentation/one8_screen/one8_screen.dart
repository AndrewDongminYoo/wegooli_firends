// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/one8_screen/bloc/one8_bloc.dart';
import '/presentation/one8_screen/models/one8_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_subtitle_1.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class One8Screen extends StatelessWidget {
  const One8Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<One8Bloc>(
        create: (context) => One8Bloc(One8State(one8ModelObj: One8Model()))
          ..add(One8InitialEvent()),
        child: const One8Screen());
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('lbl190'.tr,
                          style: CustomTextStyles.titleLargeBlack900),
                      SizedBox(height: 33.v),
                      Text('lbl144'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<One8Bloc, One8State, TextEditingController?>(
                          selector: (state) => state.cardnumberoneController,
                          builder: (context, cardnumberoneController) {
                            return CustomTextFormField(
                                controller: cardnumberoneController,
                                hintText: 'msg_0000_0000_0000_0000'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 3.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 16.v),
                      Text('lbl145'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<One8Bloc, One8State, TextEditingController?>(
                          selector: (state) => state.expirationdateController,
                          builder: (context, expirationdateController) {
                            return CustomTextFormField(
                                controller: expirationdateController,
                                hintText: 'lbl_mm_yy'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 3.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 11.v),
                      Text('lbl146'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<One8Bloc, One8State, TextEditingController?>(
                          selector: (state) => state.tfController,
                          builder: (context, tfController) {
                            return CustomTextFormField(
                                controller: tfController,
                                hintText: 'lbl_yymmdd'.tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeNotoSansKRGray700,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 3.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 18.v),
                      Text('lbl_23'.tr,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(height: 9.v),
                      BlocSelector<One8Bloc, One8State, TextEditingController?>(
                          selector: (state) => state.edittextController,
                          builder: (context, edittextController) {
                            return CustomTextFormField(
                                controller: edittextController,
                                textInputAction: TextInputAction.done,
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineGray1,
                                filled: false);
                          }),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: 'lbl164'.tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 41.v),
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
