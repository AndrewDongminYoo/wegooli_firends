// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class VerificationConfirmButton extends StatelessWidget {
  const VerificationConfirmButton({
    super.key,
    required this.controller,
  });

  /// '확인'
  final UserController controller;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.confirm,
        width: getHorizontalSize(160),
        margin: getMargin(top: 10),
        buttonStyle: CustomButtonStyles.fillPrimaryC5,
        buttonTextStyle: theme.textTheme.titleMedium,
        onTap: () async {
          print('VerificationConfirmButton ${controller.phoneAuthCompleted}');
          if (controller.phoneAuthCompleted) {
            Get.showSnackbar(GetSnackBar(
                title: 'OTP 인증',
                message: 'OTP 코드 인증에 성공했습니다!',
                duration: const Duration(seconds: 5),
                backgroundColor: ColorConstant.fontBlack,
                icon: const Icon(
                  Icons.message_rounded,
                  color: Colors.white,
                )));
          }
        });
  }
}
