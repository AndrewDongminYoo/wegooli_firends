import 'package:wegooli_friends_app/presentation/k89_screen/bloc/k89_bloc.dart';
import 'package:wegooli_friends_app/presentation/k89_screen/models/k89_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_image_1.dart';
import 'package:wegooli_friends_app/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_app/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_app/widgets/custom_radio_button.dart';

class K89Screen extends StatelessWidget {
  const K89Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K89Bloc>(
        create: (context) =>
            K89Bloc(K89State(k89ModelObj: K89Model()))..add(K89InitialEvent()),
        child: const K89Screen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 34.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      NavigatorService.goBack();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: 'lbl124'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 22.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocSelector<K89Bloc, K89State, String?>(
                                        selector: (state) => state.radioGroup,
                                        builder: (context, radioGroup) {
                                          return CustomRadioButton(
                                              text: 'lbl_7210'.tr,
                                              value: 'lbl_7210'.tr,
                                              groupValue: radioGroup,
                                              onChange: (value) {
                                                context.read<K89Bloc>().add(
                                                    ChangeRadioButtonEvent(
                                                        value: value));
                                              });
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCloseGray700,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(top: 13.v, right: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocSelector<K89Bloc, K89State, String?>(
                                        selector: (state) => state.radioGroup1,
                                        builder: (context, radioGroup1) {
                                          return CustomRadioButton(
                                              text: 'lbl_1210'.tr,
                                              value: 'lbl_1210'.tr,
                                              groupValue: radioGroup1,
                                              onChange: (value) {
                                                context.read<K89Bloc>().add(
                                                    ChangeRadioButton1Event(
                                                        value: value));
                                              });
                                        }),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCloseGray700,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          SizedBox(height: 31.v),
                          CustomElevatedButton(text: 'lbl125'.tr)
                        ]))))));
  }
}
