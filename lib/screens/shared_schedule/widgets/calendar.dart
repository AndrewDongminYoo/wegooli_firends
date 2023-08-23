// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../shared_schedule.dart';
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'calendar_body.dart';

// ignore: must_be_immutable
class SharedCalendar extends GetWidget<TeamScheduleController> {
  SharedCalendar({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar(
          height: getVerticalSize(
            45,
          ),
          centerTitle: true,
          title: AppbarImage(
            height: getVerticalSize(
              17,
            ),
            width: getHorizontalSize(
              88,
            ),
            svgPath: Assets.svg.imgFriendsTypo.path,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 21,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MemberListTitle(),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 12,
                    ),
                    child: Row(
                      children: controller.members.map((user) {
                        return MemberAvatar(
                          name: user.name ?? '김철수',
                          avatarImagePath: Assets.images.imgAvatar1.path,
                          personalColor: user.color?.toColor(),
                        );
                      }).toList(),
                    ),
                  ),
                  GrayHorizonSeparator(),
                  CalendarTitle(),
                  CalendarBody(),
                  AddScheduleButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
