// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
    required this.plural,
  });

  final bool plural;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: plural ? 145.h : 104.h,
      height: 52.v,
      text: l10ns.cancel,
      buttonStyle: plural
          ? CustomButtonStyles.fillPrimaryBL10.copyWith(
              backgroundColor: MaterialStatePropertyAll(appTheme.gray400),
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
