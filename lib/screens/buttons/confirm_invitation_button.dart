// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ConfirmInvitationButton extends StatelessWidget {
  ConfirmInvitationButton({
    super.key,
    required this.controller,
  });

  final VehicleController controller;

  @override
  Widget build(BuildContext context) {
    // final _userController = UserController.to;
    return CustomElevatedButton(
        onTap: () async {
          print('ConfirmInvitationButton');
          if (await controller.joinTeam()) {
            Get.close(2);
          } else {
            goBack();
          }
        },
        text: l10ns.confirm, // '확인'
        margin: getMargin(top: 25),
        buttonStyle: CustomButtonStyles.fillPrimaryB10,
        buttonTextStyle: theme.textTheme.titleMedium);
  }
}
