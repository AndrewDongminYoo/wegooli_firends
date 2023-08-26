import 'controller/datetime_picker_a_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_drop_down.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';

class DatetimePickerABottomsheet extends StatelessWidget {
  DatetimePickerABottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DatetimePickerAController controller;

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl113".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Spacer(),
                    Text(
                      "lbl_8_1_16_00".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleftOnprimary,
                      height: getSize(18),
                      width: getSize(18),
                      margin: getMargin(
                        left: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 68,
                    top: 44,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_8_12".tr,
                        style: CustomTextStyles.bodyLargeOnPrimary,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 81,
                        ),
                        child: Text(
                          "lbl_152".tr,
                          style: CustomTextStyles.bodyLargeOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 40,
                  top: 16,
                  right: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getHorizontalSize(80),
                      child: Divider(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(100),
                      child: Divider(
                        color: theme.colorScheme.primary,
                        indent: getHorizontalSize(20),
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(100),
                      child: Divider(
                        color: theme.colorScheme.primary,
                        indent: getHorizontalSize(20),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 67,
                  top: 16,
                  right: 70,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_8_22".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      "lbl_162".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      "lbl_00".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 40,
                  top: 16,
                  right: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getHorizontalSize(80),
                      child: Divider(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(100),
                      child: Divider(
                        color: theme.colorScheme.primary,
                        indent: getHorizontalSize(20),
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(100),
                      child: Divider(
                        color: theme.colorScheme.primary,
                        indent: getHorizontalSize(20),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 16,
                    right: 70,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_172".tr,
                        style: CustomTextStyles.bodyLargeOnPrimary,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 83,
                        ),
                        child: Text(
                          "lbl_103".tr,
                          style: CustomTextStyles.bodyLargeOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(8),
                width: double.maxFinite,
                margin: getMargin(
                  top: 41,
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
                      items: controller
                          .datetimePickerAModelObj.value.dropdownItemList.value,
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
