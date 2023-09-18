// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 🌎 Project imports:
import '/lib.dart';

class UpdateScheduleConfirmButton extends StatelessWidget {
  const UpdateScheduleConfirmButton({
    super.key,
    required this.controller,
    required this.scheduleId,
  });

  final ScheduleController controller;
  final int scheduleId;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        width: getHorizontalSize(216),
        onTap: () {
          print('UpdateScheduleConfirmButton : scheduleId => $scheduleId');
          controller.updateSchedule(scheduleId);
          Navigator.pop(context);
        },
        // text: l10ns.confirm,
        text: '수정',
        buttonStyle: CustomButtonStyles.fillPrimaryC26,
        buttonTextStyle: theme.textTheme.titleMedium);
  }
}
