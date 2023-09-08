// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class ReservationsCheckingPageDialog extends StatelessWidget {
  final DateTime? selectedDay;
  ReservationsCheckingPageDialog({super.key, this.selectedDay});

  final userController = UserController.to;

  List<Schedule> findBySelectedDay() {
    if (selectedDay == null) {
      return List.empty();
    }

    return userController.schedules.where((schedule) {
      if (selectedDay == null) {
        return false;
      }
      DateTime start = DateTime.parse(schedule.startAt!);
      DateTime end = DateTime.parse(schedule.endAt!);
      return isDateWithinRange(start, end, selectedDay!);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                      svgPath: Assets.svg.imgCloseGray400Sharp.path,
                      height: getSize(13),
                      width: getSize(13),
                      margin: getMargin(bottom: 15),
                      onTap: () {
                        goBack();
                      })),
              Padding(
                padding: getPadding(bottom: 20),
                child: Text(
                  '일정 확인',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 18,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w700,
                    // height: 1.44,
                    letterSpacing: 0.04,
                  ),
                ),
              ),
              Obx(
                () => ListView.builder(
                    itemBuilder: (_, int index) {
                      final currentUser = userController.currentUser.value;
                      Schedule schedule = findBySelectedDay()[index];
                      bool isOwner = schedule.accountId == currentUser.id;
                      Color? color =
                          userController.getColor(schedule.accountId);
                      return TeamReservationsItem(
                        color: color,
                        schedule: schedule,
                        isOwner: isOwner,
                        margin: getMargin(bottom: 10),
                      );
                    },
                    itemCount: findBySelectedDay().length,
                    shrinkWrap: true),
              ),
            ]),
      ),
    ));
  }
}
