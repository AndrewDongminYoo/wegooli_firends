// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/appointment_all_collapsed_controller.dart';

// ignore: must_be_immutable
class AppointmentAllCollapsedBottomsheet extends StatelessWidget {
  AppointmentAllCollapsedBottomsheet(
    this.controller, {
    Key? key,
  }) : super(key: key);

  AppointmentAllCollapsedController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: BoxDecoration(
          color: defaultColors.onPrimaryContainer,
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
                  style: defaultTextTheme.titleMedium!
                      .copyWith(
                        color: Colors.black,
                        fontSize: 18.fSize,
                      )
                      .copyWith(
                        height: 1.44,
                      ),
                ),
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              height: 8.v,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xFFF6F7F7),
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
                    'lbl30'.tr,
                    style: defaultTextTheme.titleMedium,
                  ),
                  const Spacer(),
                  Text(
                    'lbl_8_1_16_00'.tr,
                    style: defaultTextTheme.titleMedium,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowleft,
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
                      style: defaultTextTheme.bodyLarge!.copyWith(
                        color: defaultColors.onPrimary.withOpacity(0.4),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 81.h),
                      child: Text(
                        'lbl_152'.tr,
                        style: defaultTextTheme.bodyLarge!.copyWith(
                          color: defaultColors.onPrimary.withOpacity(0.4),
                        ),
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
                      color: defaultColors.primary,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: defaultColors.primary,
                      indent: 20.h,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: defaultColors.primary,
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
                    style: defaultTextTheme.bodyLarge,
                  ),
                  Text(
                    'lbl_162'.tr,
                    style: defaultTextTheme.bodyLarge,
                  ),
                  Text(
                    'lbl_00'.tr,
                    style: defaultTextTheme.bodyLarge,
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
                      color: defaultColors.primary,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: defaultColors.primary,
                      indent: 20.h,
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                    child: Divider(
                      color: defaultColors.primary,
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
                      style: defaultTextTheme.bodyLarge!.copyWith(
                        color: defaultColors.onPrimary.withOpacity(0.4),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 83.h),
                      child: Text(
                        'lbl_102'.tr,
                        style: defaultTextTheme.bodyLarge!.copyWith(
                          color: defaultColors.onPrimary.withOpacity(0.4),
                        ),
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
              decoration: const BoxDecoration(
                color: Color(0xFFF6F7F7),
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
                    'lbl31'.tr,
                    style: defaultTextTheme.titleMedium!.copyWith(
                      color: defaultColors.onPrimary.withOpacity(0.4),
                    ),
                  ),
                  CustomDropDown(
                    width: 114.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 10.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowleft,
                      ),
                    ),
                    hintText: 'lbl_8_1_18_00'.tr,
                    items:
                        controller.appointmentAllCollapsed.value.choices.value,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.v),
            Container(
              height: 8.v,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xFFF6F7F7),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 18.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    width: 104.h,
                    text: 'lbl32'.tr,
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB9BCC3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26.h),
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    width: 216.h,
                    text: 'lbl33'.tr,
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
