// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SignUpAcceptTermsNextButton extends StatelessWidget {
  const SignUpAcceptTermsNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 24, right: 28, bottom: 41),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: AppDecoration.shadows,
      ),
      child: CustomElevatedButton(
        text: l10ns.acceptanceComplete,
        buttonStyle: CustomButtonStyles.fillAmberA200C26,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onTap: goPhoneAuth,
      ),
    );
  }
}
