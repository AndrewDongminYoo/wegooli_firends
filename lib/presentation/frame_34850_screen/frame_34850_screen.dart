import 'package:wegooli_friends_app/presentation/frame_34850_screen/bloc/frame_34850_bloc.dart';
import 'package:wegooli_friends_app/presentation/frame_34850_screen/models/frame_34850_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_checkbox_button.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

class Frame34850Screen extends StatelessWidget {
  const Frame34850Screen({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame34850Bloc>(
      create: (context) => Frame34850Bloc(Frame34850State(
        frame34850ModelObj: Frame34850Model(),
      ))
        ..add(Frame34850InitialEvent()),
      child: const Frame34850Screen(),
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
                child: BlocSelector<Frame34850Bloc, Frame34850State, bool?>(
                  selector: (state) => state.totalAgreement,
                  builder: (context, totalAgreement) {
                    return CustomCheckboxButton(
                      alignment: Alignment.centerLeft,
                      text: 'lbl80'.tr,
                      value: totalAgreement,
                      margin: EdgeInsets.only(
                        left: 15.h,
                        top: 22.v,
                      ),
                      onChange: (value) {
                        context
                            .read<Frame34850Bloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 24.v,
                  right: 15.h,
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
                  left: 15.h,
                  top: 15.v,
                  right: 15.h,
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
                            'lbl158'.tr,
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
                  left: 15.h,
                  top: 15.v,
                  right: 15.h,
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
                            'lbl159'.tr,
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
                  left: 15.h,
                  top: 15.v,
                  right: 15.h,
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
                            'msg19'.tr,
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
                  left: 15.h,
                  top: 15.v,
                  right: 15.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgArrowdownOnPrimarycontainer,
                            height: 7.v,
                            width: 14.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              'msg5'.tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightOnPrimary,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        left: 11.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.h, 14.v, 15.h, 5.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child:
                          BlocSelector<Frame34850Bloc, Frame34850State, bool?>(
                        selector: (state) => state.computer,
                        builder: (context, computer) {
                          return CustomCheckboxButton(
                            text: 'msg6'.tr,
                            value: computer,
                            onChange: (value) {
                              context
                                  .read<Frame34850Bloc>()
                                  .add(ChangeCheckBox1Event(value: value));
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
                        left: 40.h,
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
          ),
        ),
      ),
    );
  }
}
