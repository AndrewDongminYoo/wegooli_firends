// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class SharedCalendar extends StatelessWidget {
  const SharedCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScheduleController.to;
    return Scaffold(
      backgroundColor: Colors.white,
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
                    CalendarBody(controller: controller),
                  ],
                )),
          )),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
