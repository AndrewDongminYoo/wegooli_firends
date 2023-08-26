import 'controller/schedule_confirm_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class ScheduleConfirmBottomsheet extends StatelessWidget {
  ScheduleConfirmBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ScheduleConfirmController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          padding: getPadding(
            top: 10,
            bottom: 10,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgLine45,
                height: getVerticalSize(1),
                width: getHorizontalSize(40),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: getHorizontalSize(213),
                  margin: getMargin(
                    left: 16,
                    top: 30,
                  ),
                  child: Text(
                    "msg_2_8_1_16_00".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumBlack900.copyWith(
                      height: 1.44,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(8),
                width: double.maxFinite,
                margin: getMargin(
                  top: 16,
                ),
                decoration: BoxDecoration(
                  color: appTheme.gray100,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 18,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl113".tr,
                      style: CustomTextStyles.titleMediumOnPrimary_1,
                    ),
                    CustomDropDown(
                      width: getHorizontalSize(114),
                      icon: Container(
                        margin: getMargin(
                          left: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrowleftOnprimary,
                        ),
                      ),
                      hintText: "lbl_8_1_16_00".tr,
                      hintStyle: CustomTextStyles.titleMediumOnPrimary_1,
                      items: controller
                          .scheduleConfirmModelObj.value.dropdownItemList.value,
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(8),
                width: double.maxFinite,
                margin: getMargin(
                  top: 17,
                ),
                decoration: BoxDecoration(
                  color: appTheme.gray100,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 18,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl114".tr,
                      style: CustomTextStyles.titleMediumOnPrimary_1,
                    ),
                    CustomDropDown(
                      width: getHorizontalSize(114),
                      icon: Container(
                        margin: getMargin(
                          left: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrowleftOnprimary,
                        ),
                      ),
                      hintText: "lbl_8_1_18_00".tr,
                      hintStyle: CustomTextStyles.titleMediumOnPrimary_1,
                      items: controller.scheduleConfirmModelObj.value
                          .dropdownItemList1.value,
                      onChanged: (value) {
                        controller.onSelected1(value);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(8),
                width: double.maxFinite,
                margin: getMargin(
                  top: 17,
                ),
                decoration: BoxDecoration(
                  color: appTheme.gray100,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 24,
                  right: 16,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      width: getHorizontalSize(104),
                      text: "lbl86".tr,
                      buttonStyle: CustomButtonStyles.fillOnError,
                    ),
                    CustomElevatedButton(
                      width: getHorizontalSize(216),
                      text: "lbl75".tr,
                      margin: getMargin(
                        left: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
