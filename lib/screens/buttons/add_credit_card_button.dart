// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class AddCreditCardButton extends StatelessWidget {
  const AddCreditCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.cardAdditions,
        // margin: getMargin(top: 30, bottom: 20),
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        onTap: goRegisterCreditCard);
  }
}
