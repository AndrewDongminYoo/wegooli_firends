import 'controller/send_invitation_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/custom_elevated_button.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SendInvitationDialog extends StatelessWidget {
  SendInvitationDialog(this.controller, {Key? key}) : super(key: key);

  SendInvitationController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: getMargin(left: 16, right: 16, bottom: 313),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgCloseGray400,
                      height: getSize(15),
                      width: getSize(15),
                      alignment: Alignment.centerRight,
                      margin: getMargin(top: 20, right: 20),
                      onTap: () {
                        onTapImgCloseone();
                      }),
                  Padding(
                      padding: getPadding(left: 20, top: 6),
                      child: Text("lbl107".tr,
                          style: CustomTextStyles.titleMedium18)),
                  CustomTextFormField(
                      controller: controller.valueoneController,
                      margin: getMargin(left: 20, top: 22, right: 20),
                      hintText: "msg_qwer_tyui_asdf_zxcv".tr,
                      hintStyle: CustomTextStyles.bodyLargeGray50002,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center),
                  CustomElevatedButton(
                      text: "lbl108".tr,
                      margin: getMargin(top: 20),
                      buttonStyle: CustomButtonStyles.fillPrimaryBL10,
                      buttonTextStyle: theme.textTheme.titleMedium!)
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapImgCloseone() {
    Get.back();
  }
}
