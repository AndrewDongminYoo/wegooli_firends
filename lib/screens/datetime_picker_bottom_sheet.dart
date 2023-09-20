// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/lib.dart';

class DatetimePickerBottomSheet extends GetWidget<ScheduleController> {
  const DatetimePickerBottomSheet({
    super.key,
    this.isEditMode = false,
    this.scheduleId,
  });
  final bool isEditMode;
  final int? scheduleId;
  String formatting(DateTime date) {
    final formatter = DateFormat('M/d (E) HH:mm', 'ko');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: mediaQueryData.size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // TODO
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: mediaQueryData.size.width,
                    height: 85.v,
                    padding: getPadding(left: 16, top: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        border: Border(
                          top: BorderSide(
                              width: 1.v, color: ColorConstant.separationBar),
                          right: BorderSide(
                              width: 1.v, color: ColorConstant.separationBar),
                          left: BorderSide(
                              width: 1.v, color: ColorConstant.separationBar),
                          bottom: BorderSide(
                              width: 8.v, color: ColorConstant.separationBar),
                        )),
                    child: Obx(() => Text(
                          l10ns.reservationTotalPeriod(
                            controller.returnTime
                                .difference(controller.reservationTime)
                                .inHours,
                            formatting(controller.reservationTime),
                            formatting(controller.returnTime),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumBlack900.copyWith(
                              letterSpacing: 0.04.h, fontSize: 18.fSize),
                        )))),
            Obx(() => ExpansionPanelList(
                dividerColor: ColorConstant.separationBar,
                materialGapSize: 0.adaptSize,
                expansionCallback: (panelIndex, nextState) {
                  print('panelIndex: $panelIndex &isExpanded: $nextState');
                  final isOpen = controller.items[panelIndex].isExpanded;

                  if (isOpen) {
                    // 이미 열려있던 상태에서 닫히는 거니까 그냥 닫으면 됨.
                  } else {
                    // 이미 닫혀있는 상태에서 열리는 거라 다른걸 닫고 열면 됨.
                    controller.items.value = controller.items.map((item) {
                      item.isExpanded = false;
                      return item;
                    }).toList();
                  }
                  controller.items[panelIndex].isExpanded = nextState;
                  controller.items.refresh();
                },
                elevation: 0,
                children: controller.items.mapIndexed(
                  (index, item) {
                    return ExpansionPanel(
                        headerBuilder: (context, isOpen) {
                          return Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      color: isOpen
                                          ? ColorConstant.fontBlack
                                          : ColorConstant.fontBlackDisabled,
                                      fontSize: 16.fSize,
                                      fontFamily: FontFamily.pretendard,
                                      fontWeight: FontWeight.w700,
                                      height: 1.50,
                                      letterSpacing: 0.03,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        final prevState =
                                            controller.items[index].isExpanded;
                                        final isOpen =
                                            controller.items[index].isExpanded;

                                        if (isOpen) {
                                          // 이미 열려있던 상태에서 닫히는 거니까 그냥 닫으면 됨.
                                        } else {
                                          // 이미 닫혀있는 상태에서 열리는 거라 다른걸 닫고 열면 됨.
                                          controller.items.value =
                                              controller.items.map((item) {
                                            item.isExpanded = false;
                                            return item;
                                          }).toList();
                                        }

                                        controller.items[index].isExpanded =
                                            !prevState;
                                        controller.items.refresh();
                                      },
                                      child: Text(
                                        formatting(item.date),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: isOpen
                                              ? ColorConstant.fontBlack
                                              : ColorConstant.fontBlackDisabled,
                                          fontSize: 16.fSize,
                                          fontFamily: FontFamily.pretendard,
                                          fontWeight: FontWeight.w700,
                                          height: 1.50,
                                          letterSpacing: 0.03,
                                        ),
                                      )),
                                ],
                              ));
                        },
                        body: Container(
                            height: 100.v,
                            alignment: Alignment.center,
                            width: mediaQueryData.size.width,
                            child: CupertinoTheme(
                                data: CupertinoThemeData(
                                  textTheme: CupertinoTextThemeData(
                                    dateTimePickerTextStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.fSize,
                                        fontFamily: FontFamily.pretendard),
                                  ),
                                ),
                                child: CupertinoDatePicker(
                                  use24hFormat: true,
                                  minuteInterval: 10,
                                  backgroundColor: CupertinoColors
                                      .systemBackground
                                      .resolveFrom(context),
                                  initialDateTime: item.date,
                                  onDateTimeChanged: (newDateTime) {
                                    // print('newDateTime: $newDateTime');
                                    controller.items[index].date = newDateTime;
                                    controller.items.refresh();
                                  },
                                  // TODO 생각처럼 안되네요 ㅋㅋㅋ 개선 필요 !!
                                  // minimumDate:
                                  //     index == 1 ? controller.items[0].date : DateTime.now(),
                                  // minimumDate:
                                  //     isEditMode ? null : DateTime.now(),
                                ))),
                        isExpanded: controller.items[index].isExpanded);
                  },
                ).toList())),
            Container(
                color: ColorConstant.white,
                height: 106.v,
                padding: getPadding(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CancelButton(plural: false),
                    // TODO: 일정을 등록할 때와 수정할 때 각각 상황에 따라 동작
                    if (isEditMode && scheduleId != null)
                      CustomElevatedButton(
                          width: 216.h,
                          onTap: () {
                            print(
                                'UpdateScheduleConfirmButton : scheduleId => $scheduleId');
                            controller.updateSchedule(scheduleId!);
                            Navigator.pop(context);
                          },
                          text: '수정',
                          buttonStyle: CustomButtonStyles.fillPrimaryC26,
                          buttonTextStyle: theme.textTheme.titleMedium)
                    else
                      CustomElevatedButton(
                          width: 216.h,
                          onTap: () {
                            print('AddScheduleConfirmButton');
                            controller.addSchedule();
                            Navigator.pop(context);
                          },
                          text: l10ns.confirm,
                          buttonStyle: CustomButtonStyles.fillPrimaryC26,
                          buttonTextStyle: theme.textTheme.titleMedium)
                  ],
                )),
          ],
        ));
  }
}
