// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class VerificationConfirmButton extends StatelessWidget {
  const VerificationConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.confirm,
        width: getHorizontalSize(160),
        margin: getMargin(top: 10),
        buttonStyle: CustomButtonStyles.fillPrimaryC5,
        buttonTextStyle: theme.textTheme.titleMedium);
  }
}
