// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AddScheduleButton extends StatelessWidget {
  const AddScheduleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: Localized.message.addAnItineraryAdd,
        margin: getMargin(left: 16, top: 30, right: 16),
        buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
                Size(double.maxFinite, getVerticalSize(52)))),
        buttonTextStyle: CustomTextStyles.titleMedium18,
        alignment: Alignment.center);
  }
}
