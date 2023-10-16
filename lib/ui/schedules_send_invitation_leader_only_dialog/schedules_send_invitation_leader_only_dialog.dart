// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/schedules_send_invitation_leader_only_controller.dart';

// ignore_for_file: must_be_immutable
class SchedulesSendInvitationLeaderOnlyDialog extends StatelessWidget {
  SchedulesSendInvitationLeaderOnlyDialog(this.controller, {Key? key})
      : super(key: key);

  SchedulesSendInvitationLeaderOnlyController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 318.v),
            decoration: AppDecoration.shadow
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 20.v, right: 20.h),
                      onTap: Get.back),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 6.v),
                      child: Text('lbl8'.tr,
                          style: CustomTextStyles.titleMedium18)),
                  CustomTextFormField(
                      controller: controller.valueoneController,
                      margin:
                          EdgeInsets.only(left: 20.h, top: 22.v, right: 20.h),
                      hintText: 'msg_qwer_tyui_asdf_zxcv'.tr,
                      hintStyle: CustomTextStyles.bodyLargeGray50003,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 14.v)),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      text: 'lbl9'.tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.titleMedium)
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapImgCloseone() {
    Get.back();
  }
}
