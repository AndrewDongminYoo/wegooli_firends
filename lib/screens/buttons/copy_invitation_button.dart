// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class CopyInvitationButton extends StatelessWidget {
  CopyInvitationButton({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomElevatedButton(
        onTap: () {
          Clipboard.setData(ClipboardData(text: controller.invitation.text));
          Get.showSnackbar(GetSnackBar(
            title: '복사 완료',
            message: controller.invitation.text,
            duration: const Duration(seconds: 1),
          ));
        },
        text: '복사하기',
        margin: getMargin(top: 25),
        buttonStyle: CustomButtonStyles.fillPrimaryB10,
        buttonTextStyle: theme.textTheme.titleMedium);
  }
}
