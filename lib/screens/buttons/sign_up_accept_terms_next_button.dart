// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SignUpAcceptTermsNextButton extends StatelessWidget {
  const SignUpAcceptTermsNextButton({
    super.key,
    required this.controller,
    required this.acceptTerms,
  });
  final UserController controller;
  final List<Agreement> acceptTerms;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 24, right: 28, bottom: 41),
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: AppDecoration.shadows,
        ),
        child: CustomElevatedButton(
          text: l10ns.acceptanceComplete,
          buttonStyle: CustomButtonStyles.fillPrimaryC5,
          buttonTextStyle: CustomTextStyles.titleMedium18,
          onTap: () => controller.acceptanceComplete(acceptTerms),
        ));
  }
}
