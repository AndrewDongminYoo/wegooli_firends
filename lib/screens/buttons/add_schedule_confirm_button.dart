// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AddScheduleConfirmButton extends StatelessWidget {
  const AddScheduleConfirmButton({
    super.key,
    required this.controller,
  });

  final ScheduleController controller;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        width: getHorizontalSize(216),
        onTap: () {
          print('AddScheduleConfirmButton');
          controller.addSchedule();
          Navigator.pop(context);
        },
        text: l10ns.confirm,
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: theme.textTheme.titleMedium);
  }
}
