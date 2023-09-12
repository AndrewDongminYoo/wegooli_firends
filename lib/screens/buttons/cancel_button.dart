// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
    required this.plural,
  });

  final bool plural;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: plural ? getHorizontalSize(145) : getHorizontalSize(104),
      height: getVerticalSize(52),
      text: l10ns.cancel,
      buttonStyle: plural
          ? CustomButtonStyles.fillPrimaryBL10.copyWith(
            backgroundColor: MaterialStatePropertyAll(Color(0xFFB9BCC3)),
          )
          : CustomButtonStyles.fillGray400C26,
      buttonTextStyle: plural
          ? CustomTextStyles.titleMedium16
          : CustomTextStyles.titleMedium18,
      onTap: () {
        popWithValue(context, false);
      },
    );
  }
}
