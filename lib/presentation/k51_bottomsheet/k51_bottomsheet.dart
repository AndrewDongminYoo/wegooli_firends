// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/k51_bottomsheet/bloc/k51_bloc.dart';
import '/presentation/k51_bottomsheet/models/k51_model.dart';
import '/widgets/custom_checkbox_button.dart';
import '/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class K51Bottomsheet extends StatelessWidget {
  const K51Bottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K51Bloc>(
      create: (context) => K51Bloc(K51State(
        k51ModelObj: K51Model(),
      ))
        ..add(K51InitialEvent()),
      child: const K51Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              child: BlocSelector<K51Bloc, K51State, bool?>(
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
                          .read<K51Bloc>()
                          .add(ChangeCheckBoxEvent(value: value));
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 23.v,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocSelector<K51Bloc, K51State, bool?>(
                    selector: (state) => state.tf,
                    builder: (context, tf) {
                      return CustomCheckboxButton(
                        text: 'lbl157'.tr,
                        value: tf,
                        onChange: (value) {
                          context
                              .read<K51Bloc>()
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
                  BlocSelector<K51Bloc, K51State, bool?>(
                    selector: (state) => state.tf1,
                    builder: (context, tf1) {
                      return CustomCheckboxButton(
                        text: 'lbl158'.tr,
                        value: tf1,
                        onChange: (value) {
                          context
                              .read<K51Bloc>()
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocSelector<K51Bloc, K51State, bool?>(
                    selector: (state) => state.tf2,
                    builder: (context, tf2) {
                      return CustomCheckboxButton(
                        text: 'lbl159'.tr,
                        value: tf2,
                        onChange: (value) {
                          context
                              .read<K51Bloc>()
                              .add(ChangeCheckBox3Event(value: value));
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
                    child: BlocSelector<K51Bloc, K51State, bool?>(
                      selector: (state) => state.tf3,
                      builder: (context, tf3) {
                        return CustomCheckboxButton(
                          text: 'msg19'.tr,
                          value: tf3,
                          onChange: (value) {
                            context
                                .read<K51Bloc>()
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
                    child: BlocSelector<K51Bloc, K51State, bool?>(
                      selector: (state) => state.tf4,
                      builder: (context, tf4) {
                        return CustomCheckboxButton(
                          text: 'msg5'.tr,
                          value: tf4,
                          onChange: (value) {
                            context
                                .read<K51Bloc>()
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
                      left: 9.h,
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
                    child: BlocSelector<K51Bloc, K51State, bool?>(
                      selector: (state) => state.tf5,
                      builder: (context, tf5) {
                        return CustomCheckboxButton(
                          text: 'msg6'.tr,
                          value: tf5,
                          onChange: (value) {
                            context
                                .read<K51Bloc>()
                                .add(ChangeCheckBox6Event(value: value));
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
            SizedBox(height: 20.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.shadow,
              child: CustomElevatedButton(
                text: 'lbl83'.tr,
                buttonStyle: CustomButtonStyles.fillGrayTL26,
                buttonTextStyle: CustomTextStyles.titleMediumBluegray200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
