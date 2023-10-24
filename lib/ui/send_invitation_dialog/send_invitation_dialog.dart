// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_router.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/send_invitation_controller.dart';

// ignore_for_file: must_be_immutable
class SendInvitationDialog extends StatelessWidget {
  SendInvitationDialog({super.key});

  InvitationController controller = Get.put(InvitationController());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 313.v),
          decoration: BoxDecoration(
              color: lightTheme.onPrimaryContainer,
              borderRadius: BorderRadiusStyle.circleBorder10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              customIcon(
                Assets.svg.icoCloseRound.path,
                size: 15.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 20.v, right: 20.h),
                onTap: AppRouter.back,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h, top: 6.v),
                child: Text(
                  '초대 코드',
                  style: textTheme.titleMedium!.copyWith(fontSize: 18.fSize),
                ),
              ),
              CustomTextFormField(
                  controller: controller.invitationCode,
                  margin: EdgeInsets.only(left: 20.h, top: 22.v, right: 20.h),
                  hintText: 'asdf-asdf-asdf-asdf',
                  hintStyle: textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF8E9199),
                  ),
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                      child: CustomImageView(
                          svgPath: Assets.svg.icoEyeCrossedOut.path)),
                  suffixConstraints: BoxConstraints(maxHeight: 48.v),
                  contentPadding:
                      EdgeInsets.only(left: 12.h, top: 14.v, bottom: 14.v)),
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
      ),
    );
  }
}
