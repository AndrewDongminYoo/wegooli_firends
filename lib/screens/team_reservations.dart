// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class ReservationsCheckingPageDialog extends StatelessWidget {
  const ReservationsCheckingPageDialog({super.key, this.selectedDay});
  final DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.to;
    final schedules = controller.schedules.where((schedule) {
      if (selectedDay == null) {
        return false;
      }
      final start = DateTime.parse(schedule.startAt!);
      final end = DateTime.parse(schedule.endAt!);
      final isContain = isDateWithinRange(start, end, selectedDay!);
      // print(
      //     'start($start), end($end), selectedDay($selectedDay) ::isContain($isContain)');
      return isContain;
    }).toList();
    return AlertDialog(
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.all(20),
        content: SingleChildScrollView(
          child: Container(
            width: getHorizontalSize(330),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: getPadding(left: 20, top: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 6),
                                child: Text(
                                  '일정 확인',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.titleMedium18.copyWith(
                                    letterSpacing: 0.04,
                                  ),
                                )),
                            CustomImageView(
                                svgPath: Assets.svg.imgCloseGray400Sharp.path,
                                height: getSize(13),
                                width: getSize(13),
                                margin: getMargin(bottom: 15),
                                onTap: goBack),
                          ])),
                  Padding(
                      padding: getPadding(left: 20, top: 20, right: 20),
                      child: Column(
                        children: List.generate(
                            schedules.length,
                            (index) => TeamReservationsItem(
                                schedule: schedules[index],
                                controller: controller)),
                      ))
                ]),
          ),
        ));
  }
}
