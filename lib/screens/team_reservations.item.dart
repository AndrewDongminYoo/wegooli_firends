// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/lib.dart';

class TeamReservationsItem extends StatefulWidget {
  TeamReservationsItem({
    super.key,
    required this.schedule,
    required this.controller,
  });
  final Schedule schedule;
  final UserController controller;
  @override
  State<TeamReservationsItem> createState() => _TeamReservationsItemState();
}

class _TeamReservationsItemState extends State<TeamReservationsItem> {
  bool isToggleOn = false;
  String formatering(Schedule schedule) {
    final start = DateTime.parse(schedule.startAt!);
    final end = DateTime.parse(schedule.endAt!);
    final formatter = DateFormat('M/d (E) HH:mm', 'ko');
    // '8/16 (수) 15:20 ~ 8/17(목) 14:00'
    return '${formatter.format(start)} ~ ${formatter.format(end)}';
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.schedule.highlightColor;
    final isOwner =
        widget.schedule.accountId == widget.controller.currentUser.id;
    return Container(
      margin: getMargin(bottom: 10),
      width: 288.h,
      height: isToggleOn ? 115.v : 75.v,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: AppDecoration.shadows,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.h,
            decoration: ShapeDecoration(
              color: color,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            width: 268.h,
            height: isToggleOn ? 115.v : 75.v,
            padding: getPadding(left: 10, right: 10, top: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.schedule.accountId,
                  style: TextStyle(
                    color: ColorConstant.fontBlack,
                    fontSize: 12.fSize,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w400,
                    // height: 1.50,
                    letterSpacing: 0.02,
                  ),
                ),
                Container(
                  width: 268.h,
                  height: 24.v,
                  margin: getMargin(bottom: isToggleOn ? 10 : 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatering(widget.schedule),
                        style: TextStyle(
                          color: ColorConstant.fontBlack,
                          fontSize: 16.fSize,
                          fontFamily: FontFamily.pretendard,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.03,
                        ),
                      ),
                      if (isOwner)
                        CustomImageView(
                            svgPath: isToggleOn
                                ? Assets.svg.imgArrowUp.path
                                : Assets.svg.imgArrowDown.path,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            onTap: () {
                              if (isOwner) {
                                setState(() {
                                  isToggleOn = !isToggleOn;
                                });
                              }
                            }),
                    ],
                  ),
                ),
                if (isOwner && isToggleOn)
                  SizedBox(
                    width: 268.h,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ScheduleEditButton(
                            schedule: widget.schedule,
                          ),
                          ScheduleDeleteButton(
                            controller: widget.controller,
                            schedule: widget.schedule,
                          ),
                        ]),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
