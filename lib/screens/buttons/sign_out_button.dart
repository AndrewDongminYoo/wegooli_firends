// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return TextButton(
      onPressed: () {
        Get.dialog(ConfirmDialog(
          title: l10ns.withdrawingMember,
          content:
              Text(l10ns.wouldYouLikeToRequestToBeRemovedFromWegooliFriends),
          cancelText: l10ns.cancel,
          confirmText: l10ns.signOut,
          confirmFunc: () async {
            if (await controller.signOut()) {
              await goIdPwLogin();
            }
          },
        ));
      },
      child: Text(
        l10ns.withdrawingMember,
        style: const TextStyle(
            color: ColorConstant.fontBlackDisabled,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
