// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../shared_schedule.dart';
import '/core/app_export.dart';
import 'calendar_body.dart';
import 'members_list.dart';

// ignore: must_be_immutable
class SharedCalendar extends GetWidget<TeamScheduleController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                centerTitle: true,
                title: CustomImageView(
                    height: getVerticalSize(17),
                    width: getHorizontalSize(88),
                    svgPath: Assets.svg.imgFriendsTypo.path),
                styleType: Style.bgOutline),
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
