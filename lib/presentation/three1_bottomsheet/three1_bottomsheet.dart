// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/presentation/three1_bottomsheet/bloc/three1_bloc.dart';
import '/presentation/three1_bottomsheet/models/three1_model.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Three1Bottomsheet extends StatelessWidget {
  const Three1Bottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Three1Bloc>(
      create: (context) => Three1Bloc(Three1State(
        three1ModelObj: Three1Model(),
      ))
        ..add(Three1InitialEvent()),
      child: const Three1Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgLine45,
              height: 1.v,
              width: 40.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 213.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 30.v,
                ),
                child: Text(
                  'msg_2_8_1_16_00'.tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumBlack90018.copyWith(
                    height: 1.44,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              height: 8.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 18.v,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'lbl34'.tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  BlocSelector<Three1Bloc, Three1State, Three1Model?>(
                    selector: (state) => state.three1ModelObj,
                    builder: (context, three1ModelObj) {
                      return CustomDropDown(
                        width: 114.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowrightOnPrimary,
                          ),
                        ),
                        hintText: 'lbl_8_1_16_00'.tr,
                        items: three1ModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<Three1Bloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.v),
            Container(
              height: 8.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 18.v,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'lbl35'.tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  BlocSelector<Three1Bloc, Three1State, Three1Model?>(
                    selector: (state) => state.three1ModelObj,
                    builder: (context, three1ModelObj) {
                      return CustomDropDown(
                        width: 114.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowrightOnPrimary,
                          ),
                        ),
                        hintText: 'lbl_8_1_18_00'.tr,
                        items: three1ModelObj?.dropdownItemList1 ?? [],
                        onChanged: (value) {
                          context
                              .read<Three1Bloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.v),
            Container(
              height: 8.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 20.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    width: 104.h,
                    text: 'lbl36'.tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                  ),
                  CustomElevatedButton(
                    width: 216.h,
                    text: 'lbl37'.tr,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
