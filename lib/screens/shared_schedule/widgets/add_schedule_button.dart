// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AddScheduleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.addAnItineraryAdd,
        margin: getMargin(left: 16, top: 30, right: 16),
        buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
                Size(double.maxFinite, getVerticalSize(52)))),
        buttonTextStyle: CustomTextStyles.titleMedium18,
        alignment: Alignment.center);
  }
}
