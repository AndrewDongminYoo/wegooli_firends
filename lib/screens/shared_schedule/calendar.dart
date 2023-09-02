// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class SharedCalendar extends GetWidget<ScheduleController> {
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
                              MembersList(controller: controller),
                              GrayHorizonSeparator(),
                              CalendarTitle(),
                              CalendarBody(),
                              AddScheduleButton(),
                            ]))))));
  }
}