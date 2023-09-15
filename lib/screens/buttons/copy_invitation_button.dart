// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CopyInvitationButton extends StatelessWidget {
  CopyInvitationButton({
    super.key,
    required this.controller,
  });
  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        onTap: () {
          Clipboard.setData(ClipboardData(text: controller.invitation.text));
          Get.showSnackbar(
              GetSnackBar(title: '복사 완료', message: controller.invitation.text));
        },
        text: '복사하기',
        margin: getMargin(top: 25),
        buttonStyle: CustomButtonStyles.fillPrimaryB10,
        buttonTextStyle: theme.textTheme.titleMedium);
  }
}
