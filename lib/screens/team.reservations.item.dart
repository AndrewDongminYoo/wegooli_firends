// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class TeamReservationsItem extends StatefulWidget {
  final Color? color;
  final Schedule schedule;
  final bool isOwner;
  final EdgeInsets? margin;

  TeamReservationsItem({
    super.key,
    this.color = null,
    required this.schedule,
    this.isOwner = false,
    this.margin = null,
  });

  @override
  State<TeamReservationsItem> createState() => _TeamReservationsItemState();
}

class _TeamReservationsItemState extends State<TeamReservationsItem> {
  bool isToggleOn = false;
  final api = WegooliFriends.client.getScheduleControllerApi();
  String formatering() {
    DateTime start = DateTime.parse(widget.schedule.startAt!);
    DateTime end = DateTime.parse(widget.schedule.endAt!);
    final formatter = DateFormat('M/d (E) HH:mm', 'ko');
    return '${formatter.format(start)} ~ ${formatter.format(end)}';
  }

  void toggle() {
    setState(() {
      isToggleOn = !isToggleOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      width: getHorizontalSize(288),
      height: isToggleOn ? getVerticalSize(115) : getVerticalSize(75),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getHorizontalSize(10),
            decoration: ShapeDecoration(
              color: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(278),
            height: isToggleOn ? getVerticalSize(115) : getVerticalSize(75),
            padding: getPadding(left: 10, right: 10, top: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.schedule.accountId,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 12,
                    fontFamily: FontFamily.pretendard,
                    fontWeight: FontWeight.w400,
                    // height: 1.50,
                    letterSpacing: 0.02,
                  ),
                ),
                // const SizedBox(height: 3),
                Container(
                  width: getHorizontalSize(278),
                  height: getVerticalSize(24),
                  margin: getMargin(bottom: isToggleOn ? 10 : 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                        // '8/16 (수) 15:20 ~ 8/17(목) 14:00',
                        formatering(),
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 16,
                          fontFamily: FontFamily.pretendard,
                          fontWeight: FontWeight.w400,
                          // height: 1.50,
                          letterSpacing: 0.03,
                        ),
                      )),
                      if (widget.isOwner)
                        CustomImageView(
                            svgPath: isToggleOn
                                ? Assets.svg.imgArrowUp.path
                                : Assets.svg.imgArrowDown.path,
                            height: getSize(16),
                            width: getSize(16),
                            onTap: () {
                              if (widget.isOwner) {
                                toggle();
                              }
                            }),
                    ],
                  ),
                ),
                if (widget.isOwner && isToggleOn)
                  Container(
                    width: getHorizontalSize(278),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                            width: getHorizontalSize(124),
                            height: getVerticalSize(28),
                            margin: getMargin(right: 10),
                            text: '수정',
                            buttonTextStyle: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 12,
                              fontFamily: FontFamily.pretendard,
                              fontWeight: FontWeight.w400,
                              // height: 1.50,
                              letterSpacing: 0.02,
                            ),
                            buttonStyle: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    width: 0.50, color: Color(0x33A4A8AF))),
                            onTap: () {
                              // TODO 수정하기
                            },
                          ),
                          CustomElevatedButton(
                            width: getHorizontalSize(124),
                            height: getVerticalSize(28),
                            text: '삭제',
                            buttonStyle: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                            ),
                            buttonTextStyle: TextStyle(
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
                                border: Border.all(
                                    width: 0.50, color: Color(0x33A4A8AF))),
                            onTap: () {
                              api.deleteSchedule(seq: widget.schedule.seq!);
                              goBack();
                            },
                          ),
                        ]),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
