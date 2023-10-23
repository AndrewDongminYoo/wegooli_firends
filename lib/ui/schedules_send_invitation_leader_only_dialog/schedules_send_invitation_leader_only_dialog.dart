// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/l10n/l10n.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/schedules_send_invitation_leader_only_controller.dart';

// ignore_for_file: must_be_immutable
class SchedulesSendInvitationDialog extends StatelessWidget {
  SchedulesSendInvitationDialog(this.controller, {super.key});

  SchedulesSendInvitationLeaderOnlyController controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10),
      content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding: getPadding(left: 25, top: 15, right: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text(
                            l10ns.invitationCode,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: textTheme.titleMedium!
                                .copyWith(fontSize: TextSize.lg.fSize)
                                .modest,
                          )),
                      CustomImageView.icon(
                        Assets.svg.icoCloseGray.path,
                        size: 13.adaptSize,
                        margin: getMargin(bottom: 15),
                        onTap: () => Navigator.of(context).pop(false),
                      ),
                    ])),
            CustomTextFormField(
              controller: controller.teamCode,
              margin: getMargin(left: 25, top: 17, right: 25),
            ),
            if (true)
              CustomElevatedButton(
                onTap: () {
                  Clipboard.setData(
                      ClipboardData(text: controller.teamCode.text));
                  Get.showSnackbar(GetSnackBar(
                    title: '복사 완료',
                    message: controller.teamCode.text,
                    duration: 1.seconds,
                  ));
                },
                text: '복사하기',
                margin: getMargin(top: 25),
                buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: lightTheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderB10,
                    )).noEffect,
                buttonTextStyle: textTheme.titleMedium,
              )
          ]),
    );
  }
}
