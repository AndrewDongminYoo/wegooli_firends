// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.dialog(ConfirmDialog(
          title: Text(l10ns.withdrawingMember),
          content:
              Text(l10ns.wouldYouLikeToRequestToBeRemovedFromWegooliFriends),
          cancelText: l10ns.cancel,
          confirmText: l10ns.withdrawal,
          confirmFunc: () async {
            // TODO globalController로 사용자 정보 옮긴 뒤 해당 id 이용해서 회원 탈퇴 진행.
            if (await controller.signOut()) {
              await goIdPwLogin();
            }
          },
        ));
      },
      child: Text(
        l10ns.withdrawingMember,
        style: const TextStyle(
            color: Color(0x66222222), decoration: TextDecoration.underline),
      ),
    );
  }
}
