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
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        content: SingleChildScrollView(
          child: Container(
            width: mediaQueryData.size.width,
            margin: getMargin(left: 16, right: 16, bottom: 288),
            padding: getPadding(all: 15),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                          svgPath: Assets.svg.imgCloseGray400Sharp.path,
                          height: getSize(13),
                          width: getSize(13),
                          margin: getMargin(bottom: 15),
                          onTap: goBack)),
                  Padding(
                    padding: getPadding(bottom: 20),
                    child: const Text(
                      '일정 확인',
                      style: TextStyle(
                        color: ColorConstant.fontBlack,
                        fontSize: 18,
                        fontFamily: FontFamily.pretendard,
                        fontWeight: FontWeight.w700,
                        // height: 1.44,
                        letterSpacing: 0.04,
                      ),
                    ),
                  ),
                  StreamBuilder<Schedule>(
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
                      }),
                ]),
          ),
        ));
  }
}
