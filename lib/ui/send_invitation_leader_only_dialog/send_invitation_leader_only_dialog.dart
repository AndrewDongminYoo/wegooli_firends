// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/send_invitation_leader_only_controller.dart';

// ignore_for_file: must_be_immutable
class SendInvitationLeaderOnlyDialog extends StatelessWidget {
  SendInvitationLeaderOnlyDialog(this.controller, {Key? key}) : super(key: key);

  SendInvitationLeaderOnlyController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 313.v),
            decoration: BoxDecoration(
                color: defaultColors.onPrimaryContainer,
                borderRadius: BorderRadiusStyle.roundedBorder10),
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
                    onTap: Get.back,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h, top: 6.v),
                      child: Text('초대 코드',
                          style: textTheme.titleMedium!.copyWith(
                            fontSize: 18.fSize,
                          ))),
                  CustomTextFormField(
                      controller: controller.invitationcode,
                      margin:
                          EdgeInsets.only(left: 20.h, top: 22.v, right: 20.h),
                      hintText: 'qwer-tyui-asdf-zxcv',
                      hintStyle: textTheme.bodyLarge!.copyWith(
                        color: const Color(0xFF8E9199),
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgEyeCrossedOut)),
                      suffixConstraints: BoxConstraints(maxHeight: 48.v),
                      contentPadding:
                          EdgeInsets.only(left: 12.h, top: 14.v, bottom: 14.v)),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      text: '복사하기',
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: defaultColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(
                              10.h,
                            ),
                          ),
                        ),
                      ),
                      buttonTextStyle: textTheme.titleMedium)
                ])));
  }
}
