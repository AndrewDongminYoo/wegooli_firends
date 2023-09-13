// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class SharedCalendar extends StatefulWidget {
  const SharedCalendar({super.key});

  @override
  State<SharedCalendar> createState() => _SharedCalendarState();
}

class _SharedCalendarState extends State<SharedCalendar> {
  final controller = UserController.to;

  @override
  Widget build(BuildContext context) {
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
                  children: [
                    const MemberListTitle(),
                    MembersList(controller: controller),
                    const GrayHorizonSeparator(),
                    const CalendarTitle(),
                    const AddScheduleButton(),
                    const CalendarBody(),
                  ],
                )),
          )),
    ));
  }
}
