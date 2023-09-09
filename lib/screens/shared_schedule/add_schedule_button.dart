// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AddScheduleButton extends StatelessWidget {
  const AddScheduleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        text: l10ns.addAnSchedule,
        margin: getMargin(left: 16, top: 30, right: 16),
        buttonStyle: CustomButtonStyles.fillPrimaryC5,
        buttonTextStyle: CustomTextStyles.titleMedium18,
        alignment: Alignment.center,
        onTap: () => goBookDatetimePicker());
  }
}
