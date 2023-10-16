import 'bloc/add_an_appointment_end_expanded_bloc.dart';
import 'models/add_an_appointment_end_expanded_model.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AddAnAppointmentEndExpandedBottomsheet extends StatelessWidget {
  const AddAnAppointmentEndExpandedBottomsheet({Key? key})
      : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddAnAppointmentEndExpandedBloc>(
      create: (context) =>
          AddAnAppointmentEndExpandedBloc(AddAnAppointmentEndExpandedState(
        addAnAppointmentEndExpandedModelObj: AddAnAppointmentEndExpandedModel(),
      ))
            ..add(AddAnAppointmentEndExpandedInitialEvent()),
      child: AddAnAppointmentEndExpandedBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
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
                  top: 33.v,
                ),
                child: Text(
                  "msg_2_8_1_16_00".tr,
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
                    "lbl34".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  BlocSelector<
                      AddAnAppointmentEndExpandedBloc,
                      AddAnAppointmentEndExpandedState,
                      AddAnAppointmentEndExpandedModel?>(
                    selector: (state) =>
                        state.addAnAppointmentEndExpandedModelObj,
                    builder: (context, addAnAppointmentEndExpandedModelObj) {
                      return CustomDropDown(
                        width: 114.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowrightOnPrimary,
                          ),
                        ),
                        hintText: "lbl_8_1_16_00".tr,
                        items: addAnAppointmentEndExpandedModelObj
                                ?.dropdownItemList ??
                            [],
                        onChanged: (value) {
                          context
                              .read<AddAnAppointmentEndExpandedBloc>()
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
                    "lbl35".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  BlocSelector<
                      AddAnAppointmentEndExpandedBloc,
                      AddAnAppointmentEndExpandedState,
                      AddAnAppointmentEndExpandedModel?>(
                    selector: (state) =>
                        state.addAnAppointmentEndExpandedModelObj,
                    builder: (context, addAnAppointmentEndExpandedModelObj) {
                      return CustomDropDown(
                        width: 114.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowrightOnPrimary,
                          ),
                        ),
                        hintText: "lbl_8_1_18_00".tr,
                        items: addAnAppointmentEndExpandedModelObj
                                ?.dropdownItemList1 ??
                            [],
                        onChanged: (value) {
                          context
                              .read<AddAnAppointmentEndExpandedBloc>()
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
              padding: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 18.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    width: 104.h,
                    text: "lbl36".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                  ),
                  CustomElevatedButton(
                    width: 216.h,
                    text: "lbl37".tr,
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
