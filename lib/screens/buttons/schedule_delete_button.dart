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
      buttonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
      ),
      buttonTextStyle: const TextStyle(
        color: Color(0xFF5D5D5D),
        fontSize: 12,
        fontFamily: FontFamily.pretendard,
        fontWeight: FontWeight.w400,
        // height: 1.50,
        letterSpacing: 0.02,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 0.50, color: const Color(0x33A4A8AF))),
      onTap: () {
        controller.deleteSchedule(schedule.seq!);
        popWithValue(context, true);
      },
    );
  }
}
