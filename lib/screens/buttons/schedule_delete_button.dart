// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class ScheduleDeleteButton extends StatelessWidget {
  const ScheduleDeleteButton({
    super.key,
    required this.schedule,
  });

  final Schedule schedule;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    return CustomElevatedButton(
      width: 114.h,
      height: 28.v,
      text: '삭제',
      buttonStyle: CustomButtonStyles.fillWhite.copyWith(
          surfaceTintColor: const MaterialStatePropertyAll(Colors.white)),
      buttonTextStyle: CustomTextStyles.bodySmallPretendardGray70001,
      decoration: AppDecoration.minimal,
      onTap: () => controller.deleteSchedule(schedule.seq!),
    );
  }
}
