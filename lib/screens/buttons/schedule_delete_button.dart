// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ScheduleDeleteButton extends StatelessWidget {
  const ScheduleDeleteButton({
    super.key,
    required this.controller,
    required this.schedule,
  });

  final UserController controller;
  final Schedule schedule;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: getHorizontalSize(124),
      height: getVerticalSize(28),
      text: '삭제',
      buttonStyle: CustomButtonStyles.fillWhite,
      buttonTextStyle: CustomTextStyles.bodySmallPretendardGray70001,
      decoration: AppDecoration.minimal,
      onTap: () => controller.deleteSchedule(schedule.seq!),
    );
  }
}
