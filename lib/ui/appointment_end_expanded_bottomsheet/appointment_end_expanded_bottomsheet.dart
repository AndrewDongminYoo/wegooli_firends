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
import 'controller/appointment_end_expanded_controller.dart';

// ignore: must_be_immutable
class AppointmentEndExpandedBottomsheet extends StatelessWidget {
  AppointmentEndExpandedBottomsheet(
    this.controller, {
    Key? key,
  }) : super(key: key);

  AppointmentEndExpandedController controller;

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'lbl30'.tr,
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
                    hintText: 'lbl_8_1_16_00'.tr,
                    items:
                        controller.appointmentEndExpanded.value.choices.value,
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
                        controller.appointmentEndExpanded.value.choices1.value,
                    onChanged: (value) {
                      controller.onSelected1(value);
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
