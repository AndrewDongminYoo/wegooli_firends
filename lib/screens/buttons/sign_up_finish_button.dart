// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class SignUpFinishButton extends StatelessWidget {
  const SignUpFinishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.getStarted,
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: goSharedSchedule);
  }
}
