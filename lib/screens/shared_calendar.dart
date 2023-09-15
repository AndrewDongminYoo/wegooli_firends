// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class SharedCalendar extends StatefulWidget {
  const SharedCalendar({super.key});

  @override
  State<SharedCalendar> createState() => _SharedCalendarState();
}

class _SharedCalendarState extends State<SharedCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getFriendsTypoAppBar(),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 21),
            child: Padding(
                padding: getPadding(bottom: 5),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MemberListTitle(),
                    MembersList(),
                    GrayHorizonSeparator(),
                    CalendarTitle(),
                    AddScheduleButton(),
                    CalendarBody(),
                  ],
                )),
          )),
    );
  }
}
