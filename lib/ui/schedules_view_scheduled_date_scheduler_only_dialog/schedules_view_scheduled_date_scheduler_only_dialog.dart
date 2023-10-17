// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';
import 'controller/schedules_view_scheduled_date_scheduler_only_controller.dart';

// ignore_for_file: must_be_immutable
class SchedulesViewScheduledDateSchedulerOnlyDialog extends StatelessWidget {
  SchedulesViewScheduledDateSchedulerOnlyDialog(this.controller, {Key? key})
      : super(key: key);

  SchedulesViewScheduledDateSchedulerOnlyController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 238.v),
            padding: EdgeInsets.all(20.h),
            decoration: BoxDecoration(
                color: lightTheme.onPrimaryContainer,
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: Assets.imgClose,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    alignment: Alignment.centerRight,
                    onTap: Get.back,
                  ),
                  SizedBox(height: 6.v),
                  Text('일정 확인',
                      style: textTheme.titleMedium!.copyWith(
                        fontSize: 18.fSize,
                      )),
                  SizedBox(height: 22.v),
                  SizedBox(
                      height: 75.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            child: Container(
                                height: 75.v,
                                width: 288.h,
                                decoration: BoxDecoration(
                                    color: lightTheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.h),
                                    child: LinearProgressIndicator(
                                        value: 0.03,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                lightTheme.primary))))),
                        Align(
                            child: SizedBox(
                                height: 43.v,
                                width: 258.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text('홍길동',
                                              style: textTheme.bodySmall)),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                    '8/16 (수) 15:20 ~ 8/17(목) 14:00',
                                                    style: theme
                                                        .textTheme.bodyLarge),
                                                CustomImageView(
                                                    svgPath: Assets
                                                        .imgArrowleft,
                                                    height: 18.adaptSize,
                                                    width: 18.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 17.h,
                                                        bottom: 2.v))
                                              ])),
                                      Align(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Text('홍길동',
                                                style: textTheme.bodySmall),
                                            SizedBox(height: 7.v),
                                            Row(children: [
                                              Text(
                                                  '8/16 (수) 15:20 ~ 8/17(목) 14:00',
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              CustomImageView(
                                                  svgPath: Assets
                                                      .imgArrowleft,
                                                  height: 18.adaptSize,
                                                  width: 18.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 17.h, bottom: 2.v))
                                            ])
                                          ]))
                                    ])))
                      ])),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 75.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            child: Container(
                                height: 75.v,
                                width: 288.h,
                                decoration: BoxDecoration(
                                    color: lightTheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.h),
                                    child: LinearProgressIndicator(
                                        value: 0.03,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(theme
                                                .colorScheme
                                                .errorContainer))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('홍길동', style: textTheme.bodySmall),
                                      SizedBox(height: 8.v),
                                      Text('8/16 (수) 15:20 ~ 8/17(목) 14:00',
                                          style: textTheme.bodyLarge)
                                    ])))
                      ])),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 75.v,
                      width: 288.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            child: Container(
                                height: 75.v,
                                width: 288.h,
                                decoration: BoxDecoration(
                                    color: lightTheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.h),
                                    child: LinearProgressIndicator(
                                        value: 0.03,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                                Color(0xFF7850E9)))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('홍길동', style: textTheme.bodySmall),
                                      SizedBox(height: 8.v),
                                      Text('8/16 (수) 15:20 ~ 8/17(목) 14:00',
                                          style: textTheme.bodyLarge)
                                    ])))
                      ])),
                  SizedBox(height: 10.v)
                ])));
  }
}
