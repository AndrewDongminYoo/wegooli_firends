// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class SharedCalendar extends StatefulWidget {
  @override
  State<SharedCalendar> createState() => _SharedCalendarState();
}

class _SharedCalendarState extends State<SharedCalendar> {
  ScheduleController controller = ScheduleController.to;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: CustomAppBar.getFriendsTypoAppBar(),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 21),
            child: Padding(
                padding: getPadding(bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MemberListTitle(),
                    MembersList(),
                    GrayHorizonSeparator(),
                    CalendarTitle(),
                    CalendarBody(),
                    AddScheduleButton(),
                  ],
                )),
          )),
    ));
  }
}
