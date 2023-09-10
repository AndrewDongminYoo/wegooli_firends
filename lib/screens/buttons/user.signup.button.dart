// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AcceptTermsNextButton extends StatefulWidget {
  const AcceptTermsNextButton({super.key, required this.enabled});
  final bool enabled;
  @override
  State<AcceptTermsNextButton> createState() => _AcceptTermsNextButtonState();
}

class _AcceptTermsNextButtonState extends State<AcceptTermsNextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16, bottom: 29),
        child: CustomElevatedButton(
            isDisabled: !widget.enabled,
            text: l10ns.acceptanceComplete,
            buttonStyle: CustomButtonStyles.fillPrimaryC26,
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onTap: widget.enabled ? goPhoneAuth : null));
  }
}
