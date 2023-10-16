// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/k61_bottomsheet/bloc/k61_bloc.dart';
import '/ui/k61_bottomsheet/models/k61_model.dart';
import '/widgets/custom_checkbox_button.dart';
import '/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class K61Bottomsheet extends StatelessWidget {
  const K61Bottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<K61Bloc>(
      create: (context) => K61Bloc(K61State(
        k61ModelObj: K61Model(),
      ))
        ..add(K61InitialEvent()),
      child: const K61Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              'lbl174'.tr,
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 27.v,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.totalAgreement,
                          builder: (context, totalAgreement) {
                            return CustomCheckboxButton(
                              text: 'lbl175'.tr,
                              value: totalAgreement,
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBoxEvent(value: value));
                              },
                            );
                          },
                        ),
                        SizedBox(height: 9.v),
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.serviceAgreemen,
                          builder: (context, serviceAgreemen) {
                            return CustomCheckboxButton(
                              text: 'lbl176'.tr,
                              value: serviceAgreemen,
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBox1Event(value: value));
                              },
                            );
                          },
                        ),
                        SizedBox(height: 8.v),
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.privacyAgreemen,
                          builder: (context, privacyAgreemen) {
                            return CustomCheckboxButton(
                              text: 'lbl177'.tr,
                              value: privacyAgreemen,
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBox2Event(value: value));
                              },
                            );
                          },
                        ),
                        SizedBox(height: 8.v),
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.rentalAgreement,
                          builder: (context, rentalAgreement) {
                            return CustomCheckboxButton(
                              text: 'lbl178'.tr,
                              value: rentalAgreement,
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBox3Event(value: value));
                              },
                            );
                          },
                        ),
                        SizedBox(height: 8.v),
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.locationAgreeme,
                          builder: (context, locationAgreeme) {
                            return CustomCheckboxButton(
                              text: 'msg23'.tr,
                              value: locationAgreeme,
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBox4Event(value: value));
                              },
                            );
                          },
                        ),
                        SizedBox(height: 8.v),
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.vehicleAgreemen,
                          builder: (context, vehicleAgreemen) {
                            return CustomCheckboxButton(
                              text: 'msg24'.tr,
                              value: vehicleAgreemen,
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBox5Event(value: value));
                              },
                            );
                          },
                        ),
                        BlocSelector<K61Bloc, K61State, bool?>(
                          selector: (state) => state.marketingAgreem,
                          builder: (context, marketingAgreem) {
                            return CustomCheckboxButton(
                              text: 'msg25'.tr,
                              value: marketingAgreem,
                              margin: EdgeInsets.only(
                                top: 8.v,
                                right: 29.h,
                              ),
                              textStyle: CustomTextStyles
                                  .bodyMediumNotoSansKRGray50002,
                              onChange: (value) {
                                context
                                    .read<K61Bloc>()
                                    .add(ChangeCheckBox6Event(value: value));
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 32.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      SizedBox(height: 3.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      SizedBox(height: 3.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      SizedBox(height: 3.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      SizedBox(height: 3.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      SizedBox(height: 3.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomOutlinedButton(
            text: 'lbl179'.tr,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 22.v,
              right: 8.h,
            ),
          ),
        ],
      ),
    );
  }
}
