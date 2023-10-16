// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/add_an_appointment_start_expanded_bottomsheet/bloc/add_an_appointment_start_expanded_bloc.dart';
import '/ui/add_an_appointment_start_expanded_bottomsheet/models/add_an_appointment_start_expanded_model.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AddAnAppointmentStartExpandedBottomsheet extends StatelessWidget {
  const AddAnAppointmentStartExpandedBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddAnAppointmentStartExpandedBloc>(
      create: (context) =>
          AddAnAppointmentStartExpandedBloc(AddAnAppointmentStartExpandedState(
        addAnAppointmentStartExpandedModelObj:
            AddAnAppointmentStartExpandedModel(),
      ))
            ..add(AddAnAppointmentStartExpandedInitialEvent()),
      child: const AddAnAppointmentStartExpandedBottomsheet(),
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
                  BlocSelector<
                      AddAnAppointmentStartExpandedBloc,
                      AddAnAppointmentStartExpandedState,
                      AddAnAppointmentStartExpandedModel?>(
                    selector: (state) =>
                        state.addAnAppointmentStartExpandedModelObj,
                    builder: (context, addAnAppointmentStartExpandedModelObj) {
                      return CustomDropDown(
                        width: 114.h,
                        icon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowrightOnPrimary,
                          ),
                        ),
                        hintText: 'lbl_8_1_16_00'.tr,
                        items: addAnAppointmentStartExpandedModelObj
                                ?.dropdownItemList ??
                            [],
                        onChanged: (value) {
                          context
                              .read<AddAnAppointmentStartExpandedBloc>()
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'lbl35'.tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  const Spacer(),
                  Text(
                    'lbl_8_1_18_00'.tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowrightOnPrimary,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 10.h),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 68.h,
                  top: 44.v,
                ),
                child: Row(
                  children: [
                    Text(
                      'lbl_8_1'.tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 81.h),
                      child: Text(
                        'lbl_152'.tr,
                        style: CustomTextStyles.bodyLargeOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                top: 16.v,
                right: 40.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                      indent: 20.h,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                      indent: 20.h,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 67.h,
                top: 16.v,
                right: 70.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'lbl_8_2'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    'lbl_162'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    'lbl_00'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                top: 16.v,
                right: 40.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                      indent: 20.h,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                      indent: 20.h,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 16.v,
                  right: 70.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'lbl_172'.tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 83.h),
                      child: Text(
                        'lbl_102'.tr,
                        style: CustomTextStyles.bodyLargeOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 41.v),
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
