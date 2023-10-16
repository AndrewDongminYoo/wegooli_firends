import 'package:wegooli_friends_app/presentation/frame_466_screen/bloc/frame_466_bloc.dart';
import 'package:wegooli_friends_app/presentation/frame_466_screen/models/frame_466_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_checkbox_button.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

class Frame466Screen extends StatelessWidget {
  const Frame466Screen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame466Bloc>(
      create: (context) => Frame466Bloc(Frame466State(
        frame466ModelObj: Frame466Model(),
      ))
        ..add(Frame466InitialEvent()),
      child: const Frame466Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 22.v,
                ),
                decoration: AppDecoration.outlineBluegray30033,
                child: Text(
                  'lbl79'.tr,
                  style: CustomTextStyles.titleMediumBlack90018,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: BlocSelector<Frame466Bloc, Frame466State, bool?>(
                  selector: (state) => state.totalAgreement,
                  builder: (context, totalAgreement) {
                    return CustomCheckboxButton(
                      alignment: Alignment.centerLeft,
                      text: 'lbl80'.tr,
                      value: totalAgreement,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        top: 22.v,
                      ),
                      onChange: (value) {
                        context
                            .read<Frame466Bloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 24.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowdownOnPrimarycontainer,
                          height: 7.v,
                          width: 14.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            'lbl157'.tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 14.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<Frame466Bloc, Frame466State, bool?>(
                      selector: (state) => state.tf,
                      builder: (context, tf) {
                        return CustomCheckboxButton(
                          text: 'lbl158'.tr,
                          value: tf,
                          onChange: (value) {
                            context
                                .read<Frame466Bloc>()
                                .add(ChangeCheckBox1Event(value: value));
                          },
                        );
                      },
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 14.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<Frame466Bloc, Frame466State, bool?>(
                      selector: (state) => state.tf1,
                      builder: (context, tf1) {
                        return CustomCheckboxButton(
                          text: 'lbl159'.tr,
                          value: tf1,
                          onChange: (value) {
                            context
                                .read<Frame466Bloc>()
                                .add(ChangeCheckBox2Event(value: value));
                          },
                        );
                      },
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 14.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: BlocSelector<Frame466Bloc, Frame466State, bool?>(
                        selector: (state) => state.tf2,
                        builder: (context, tf2) {
                          return CustomCheckboxButton(
                            text: 'msg19'.tr,
                            value: tf2,
                            onChange: (value) {
                              context
                                  .read<Frame466Bloc>()
                                  .add(ChangeCheckBox3Event(value: value));
                            },
                          );
                        },
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        left: 80.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 14.v,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: BlocSelector<Frame466Bloc, Frame466State, bool?>(
                        selector: (state) => state.tf3,
                        builder: (context, tf3) {
                          return CustomCheckboxButton(
                            text: 'msg5'.tr,
                            value: tf3,
                            onChange: (value) {
                              context
                                  .read<Frame466Bloc>()
                                  .add(ChangeCheckBox4Event(value: value));
                            },
                          );
                        },
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 5.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: BlocSelector<Frame466Bloc, Frame466State, bool?>(
                        selector: (state) => state.tf4,
                        builder: (context, tf4) {
                          return CustomCheckboxButton(
                            text: 'msg6'.tr,
                            value: tf4,
                            onChange: (value) {
                              context
                                  .read<Frame466Bloc>()
                                  .add(ChangeCheckBox5Event(value: value));
                            },
                          );
                        },
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        left: 39.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 29.v,
          ),
          decoration: AppDecoration.shadow,
          child: CustomElevatedButton(
            text: 'lbl83'.tr,
            buttonStyle: CustomButtonStyles.fillGrayTL26,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray200,
          ),
        ),
      ),
    );
  }
}
