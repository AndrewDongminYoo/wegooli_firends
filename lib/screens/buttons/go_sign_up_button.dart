// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class GoSignUpButton extends StatelessWidget {
  const GoSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: l10ns.signUp,
      width: double.infinity,
      margin: getMargin(top: 11, bottom: 5),
      buttonStyle: CustomButtonStyles.fillPrimaryC26,
      buttonTextStyle: CustomTextStyles.titleMedium18,
      onTap: goPhoneAuth,
    );
  }
}
