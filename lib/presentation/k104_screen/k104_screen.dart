// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k104_screen/bloc/k104_bloc.dart';
import '/presentation/k104_screen/models/k104_model.dart';
import '/widgets/app_bar/appbar_image_1.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class K104Screen extends StatelessWidget {
  const K104Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K104Bloc>(
        create: (context) => K104Bloc(K104State(k104ModelObj: K104Model()))
          ..add(K104InitialEvent()),
        child: const K104Screen());
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
                  SizedBox(height: 33.v),
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
                                      Text('lbl144'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K104Bloc, K104State,
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
                                    ]),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl145'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K104Bloc, K104State,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.expirationdateController,
                                          builder: (context,
                                              expirationdateController) {
                                            return CustomTextFormField(
                                                controller:
                                                    expirationdateController,
                                                hintText: 'lbl_mm_yy'.tr,
                                                hintStyle: CustomTextStyles
                                                    .bodyLargeGray50004);
                                          })
                                    ]),
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl146'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K104Bloc, K104State,
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
                                SizedBox(height: 29.v),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl_23'.tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      BlocSelector<K104Bloc, K104State,
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
