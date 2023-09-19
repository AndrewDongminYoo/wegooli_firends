// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class ScheduleEditButton extends StatelessWidget {
  const ScheduleEditButton({
    super.key,
    required this.schedule,
  });

  final Schedule schedule;

  @override
  Widget build(BuildContext context) {
    final scheduleController = ScheduleController.to;
    return CustomElevatedButton(
      width: 114.h,
      height: 28.v,
      margin: getMargin(right: 10),
      text: '수정',
      buttonStyle: CustomButtonStyles.fillWhite.copyWith(
          surfaceTintColor: const MaterialStatePropertyAll(Colors.white)),
      buttonTextStyle: CustomTextStyles.bodySmallPretendardGray70001,
      decoration: AppDecoration.minimal,
      onTap: () {
        final items = scheduleController.initItem();
        items[0].date = DateTime.parse(schedule.startAt!);
        items[1].date = DateTime.parse(schedule.endAt!);
        scheduleController.items(items);
        scheduleController.items.refresh();
        Get.bottomSheet(
            DatetimePickerBottomSheet(
                isEditMode: true, scheduleId: schedule.seq),
            ignoreSafeArea: false,
            isScrollControlled: true);
      },
    );
  }
}
