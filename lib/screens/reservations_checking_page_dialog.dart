// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

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
      return isDateWithinRange(start, end, selectedDay!);
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
                      child: StreamBuilder<Schedule>(
                          stream: Stream.fromIterable(schedules),
                          builder: (context, snapshot) {
                            if (snapshot.data == null) {
                              return Container(
                                margin: getMargin(bottom: 10),
                                width: getHorizontalSize(288),
                                height: getVerticalSize(75),
                                child: const Text('일정 없음'),
                              );
                            } else {
                              return TeamReservationsItem(
                                schedule: snapshot.data!,
                                controller: controller,
                              );
                            }
                          }))
                ]),
          ),
        ));
  }
}
