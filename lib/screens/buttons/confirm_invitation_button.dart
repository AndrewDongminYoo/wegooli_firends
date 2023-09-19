// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class ConfirmInvitationButton extends StatelessWidget {
  const ConfirmInvitationButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = VehicleController.to;
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
