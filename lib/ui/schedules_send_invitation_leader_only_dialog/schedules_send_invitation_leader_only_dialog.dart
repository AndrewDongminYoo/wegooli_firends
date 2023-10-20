// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/schedules_send_invitation_leader_only_controller.dart';

// ignore_for_file: must_be_immutable
class SchedulesSendInvitationLeaderOnlyDialog extends StatelessWidget {
  SchedulesSendInvitationLeaderOnlyDialog(this.controller, {Key? key})
      : super(key: key);

  SchedulesSendInvitationLeaderOnlyController controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 318.v),
      backgroundColor: lightTheme.onPrimaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              svgPath: Assets.svg.icoCloseRound.path,
              height: 15.adaptSize,
              width: 15.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 20.v, right: 20.h),
              onTap: Get.back,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.h, top: 6.v),
              child: Text(
                '초대 코드',
                style: textTheme.titleMedium!.copyWith(
                  fontSize: 18.fSize,
                ),
              ),
            ),
            CustomTextFormField(
                controller: controller.valueoneController,
                margin: EdgeInsets.only(left: 20.h, top: 22.v, right: 20.h),
                hintText: '0000-0000-0000-0000',
                hintStyle: textTheme.bodyLarge!.copyWith(
                  color: const Color(0xFF8E9199),
                ),
                textInputAction: TextInputAction.done,
                alignment: Alignment.center,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v)),
            SizedBox(height: 20.v),
            CustomElevatedButton(
                text: '복사하기',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: lightTheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ),
                buttonTextStyle: textTheme.titleMedium)
          ],
        ),
      ),
    );
  }
}
