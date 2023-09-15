// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class UnsubscribeConfirmButton extends StatelessWidget {
  const UnsubscribeConfirmButton({
    super.key,
    required this.controller,
  });

  final VehicleController controller;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: getHorizontalSize(160),
      height: getVerticalSize(48),
      text: controller.subscriptionModel.value.withdrawalAt == null
          ? l10ns.unsubscribe
          : l10ns.unsubscribeCancel,
      margin: getMargin(left: 9, top: 21, right: 9),
      buttonStyle: CustomButtonStyles.fillPrimaryC5,
      buttonTextStyle: theme.textTheme.titleMedium,
      alignment: Alignment.centerRight,
      onTap: () {
        controller.subscriptionModel.value.withdrawalAt == null
            ? goUnsubscribeConfirm()
            : controller.subscribe();
      },
    );
  }
}
