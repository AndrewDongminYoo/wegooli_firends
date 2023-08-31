// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class SendingCrewInvitationDialog extends StatelessWidget {
  SendingCrewInvitationDialog(this.controller, {Key? key}) : super(key: key);

  DeviceController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: getMargin(left: 16, right: 16, bottom: 323),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Column(
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
                                child: Text(l10ns.invitationCode,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleMedium18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.04)))),
                            CustomImageView(
                                svgPath: Assets.svg.imgCloseGray400Sharp.path,
                                height: getSize(13),
                                width: getSize(13),
                                margin: getMargin(bottom: 15),
                                onTap: () {
                                  onTapImgClose();
                                })
                          ])),
                  CustomTextFormField(
                      controller: controller.invitationCodeController,
                      hintText: "xxxx-xxxx-xxxx-xxxx",
                      margin: getMargin(left: 25, top: 17, right: 25),
                      contentPadding:
                          getPadding(left: 12, top: 14, right: 12, bottom: 14),
                      filled: true,
                      enabled: false,
                      textStyle: CustomTextStyles.bodyLargeGray50003,
                      hintStyle: CustomTextStyles.bodyLargeGray50003,
                      fillColor: theme.colorScheme.onPrimaryContainer),
                  CustomElevatedButton(
                      onTap: () {
                        /// FIXME: controller.invitationCodeController.text 값을 클립보드에 복사 / 또는 공유 모달 띄우기
                        Get.dialog(AlertDialog(
                            title: Text(
                                controller.invitationCodeController.text)));
                      },
                      text: l10ns.copy,
                      margin: getMargin(top: 25),
                      buttonStyle: CustomButtonStyles.fillPrimaryB10.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(double.maxFinite, getVerticalSize(52)))),
                      buttonTextStyle: theme.textTheme.titleMedium!)
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgClose() {
    Get.back();
  }
}
