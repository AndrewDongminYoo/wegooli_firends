// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class DatetimePickerBottomSheet extends GetWidget<ScheduleController> {
  const DatetimePickerBottomSheet({super.key});
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
                    height: getVerticalSize(85),
                    padding: getPadding(left: 16, top: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        border: Border(
                          top: BorderSide(
                              width: getVerticalSize(1),
                              color: Color(0xFFF6F7F7)),
                          right: BorderSide(
                              width: getVerticalSize(1),
                              color: Color(0xFFF6F7F7)),
                          left: BorderSide(
                              width: getVerticalSize(1),
                              color: Color(0xFFF6F7F7)),
                          bottom: BorderSide(
                              width: getVerticalSize(8),
                              color: Color(0xFFF6F7F7)),
                        )),
                    child: Obx(() => Text(
                          l10ns.reservationTotalPeriod(
                            controller.returnTime
                                .difference(controller.reservationTime)
                                .inHours,
                            formatting(controller.reservationTime.add(Duration(
                                minutes: 10 -
                                    controller.reservationTime.minute % 10))),
                            formatting(controller.returnTime.add(Duration(
                                minutes:
                                    10 - controller.returnTime.minute % 10))),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumBlack900.copyWith(
                              letterSpacing: getHorizontalSize(0.04),
                              fontSize: getFontSize(18)),
                        )))),
            Obx(() => ExpansionPanelList(
                dividerColor: Color(0xFFF6F7F7),
                materialGapSize: getSize(0),
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
                // animationDuration: Duration(seconds: 1),
                elevation: 0,
                children: controller.items.mapIndexed(
                  (index, item) {
                    return ExpansionPanel(
                        // backgroundColor: Colors.amber,
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
                                      fontSize: getFontSize(16),
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
                                        formatting(item.date.add(Duration(
                                            minutes:
                                                10 - item.date.minute % 10))),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: isOpen
                                              ? ColorConstant.fontBlack
                                              : ColorConstant.fontBlackDisabled,
                                          fontSize: getFontSize(16),
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
                            height: getVerticalSize(100),
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.all(20),
                            width: mediaQueryData.size.width,
                            child: CupertinoTheme(
                                data: CupertinoThemeData(
                                  textTheme: CupertinoTextThemeData(
                                    dateTimePickerTextStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: getFontSize(16),
                                        fontFamily: FontFamily.pretendard),
                                  ),
                                ),
                                child: CupertinoDatePicker(
                                  use24hFormat: true,
                                  minuteInterval: 10,
                                  backgroundColor: CupertinoColors
                                      .systemBackground
                                      .resolveFrom(context),
                                  initialDateTime: item.date.add(Duration(
                                      minutes: 10 - item.date.minute % 10)),
                                  onDateTimeChanged: (newDateTime) {
                                    // print('newDateTime: $newDateTime');
                                    controller.items[index].date = newDateTime;
                                    controller.items.refresh();
                                  },
                                  // TODO 생각처럼 안되네요 ㅋㅋㅋ 개선 필요 !!
                                  // minimumDate:
                                  //     index == 1 ? controller.items[0].date : DateTime.now(),
                                  minimumDate: DateTime.now(),
                                ))),
                        isExpanded: controller.items[index].isExpanded);
                  },
                ).toList())),
            Container(
                color: ColorConstant.white,
                height: getVerticalSize(106),
                padding: getPadding(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CancelButton(plural: false),
                    AddScheduleConfirmButton(controller: controller),
                  ],
                )),
          ],
        ));
    // return SafeArea(
    //     child: Container(
    //         height: getVerticalSize(664),
    //         padding: getPadding(top: 20),
    //         decoration: AppDecoration.fillOnPrimaryContainer
    //             .copyWith(borderRadius: BorderRadiusStyle.customBorderT10),
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Container(
    //                     width: mediaQueryData.size.width,
    //                     padding: getPadding(left: 16, top: 16),
    //                     child: Text(
    //                       l10ns.reservationTotalPeriod(
    //                         controller.returnTime
    //                             .difference(controller.reservationTime)
    //                             .inHours,
    //                         formatting(controller.reservationTime.add(Duration(
    //                             minutes: 10 -
    //                                 controller.reservationTime.minute % 10))),
    //                         formatting(controller.returnTime.add(Duration(
    //                             minutes:
    //                                 10 - controller.returnTime.minute % 10))),
    //                       ),
    //                       maxLines: 2,
    //                       overflow: TextOverflow.ellipsis,
    //                       textAlign: TextAlign.left,
    //                       style: CustomTextStyles.titleMediumBlack900.copyWith(
    //                         letterSpacing: getHorizontalSize(0.04),
    //                       ),
    //                     ))),
    //             Container(
    //                 height: getVerticalSize(8),
    //                 width: mediaQueryData.size.width,
    //                 margin: getMargin(top: 16),
    //                 decoration: AppDecoration.fillGray100),
    //             Obx(() => ExpansionPanelList(
    //                 materialGapSize: getSize(8),
    //                 expansionCallback: (panelIndex, isExpanded) {
    //                   print('panelIndex: $panelIndex &isExpanded: $isExpanded');
    //                   controller.items[panelIndex].isExpanded = isExpanded;
    //                   controller.items.refresh();
    //                 },
    //                 // animationDuration: Duration(seconds: 1),
    //                 elevation: 1,
    //                 children: controller.items.mapIndexed(
    //                   (index, item) {
    //                     return ExpansionPanel(
    //                         // backgroundColor: Colors.amber,
    //                         headerBuilder: (context, isOpen) {
    //                           return Padding(
    //                               padding: const EdgeInsets.all(15),
    //                               child: Row(
    //                                 mainAxisAlignment:
    //                                     MainAxisAlignment.spaceBetween,
    //                                 children: [
    //                                   Text(
    //                                     item.title,
    //                                     style: TextStyle(
    //                                       color: isOpen
    //                                           ? ColorConstant.fontBlack
    //                                           : ColorConstant.fontBlackDisabled,
    //                                       fontSize: getFontSize(16),
    //                                       fontFamily: FontFamily.pretendard,
    //                                       fontWeight: FontWeight.w700,
    //                                       height: 1.50,
    //                                       letterSpacing: 0.03,
    //                                     ),
    //                                   ),
    //                                   TextButton(
    //                                       onPressed: () {
    //                                         controller.items[index].isExpanded =
    //                                             !controller
    //                                                 .items[index].isExpanded;
    //                                         controller.items.refresh();
    //                                       },
    //                                       child: Text(
    //                                         formatting(item.date.add(Duration(
    //                                             minutes: 10 -
    //                                                 item.date.minute % 10))),
    //                                         textAlign: TextAlign.right,
    //                                         style: TextStyle(
    //                                           color: isOpen
    //                                               ? ColorConstant.fontBlack
    //                                               : ColorConstant
    //                                                   .fontBlackDisabled,
    //                                           fontSize: getFontSize(16),
    //                                           fontFamily: FontFamily.pretendard,
    //                                           fontWeight: FontWeight.w700,
    //                                           height: 1.50,
    //                                           letterSpacing: 0.03,
    //                                         ),
    //                                       )),
    //                                 ],
    //                               ));
    //                         },
    //                         body: Container(
    //                           height: getVerticalSize(200),
    //                           alignment: Alignment.center,
    //                           padding: const EdgeInsets.all(20),
    //                           width: double.infinity,
    //                           child: CupertinoDatePicker(
    //                             minuteInterval: 10,
    //                             backgroundColor: CupertinoColors
    //                                 .systemBackground
    //                                 .resolveFrom(context),
    //                             initialDateTime: item.date.add(Duration(
    //                                 minutes: 10 - item.date.minute % 10)),
    //                             onDateTimeChanged: (newDateTime) {
    //                               // print('newDateTime: $newDateTime');
    //                               controller.items[index].date = newDateTime;
    //                               controller.items.refresh();
    //                             },
    //                             minimumDate: index == 1
    //                                 ? controller.reservationTime
    //                                 : null,
    //                           ),
    //                         ),
    //                         isExpanded: item.isExpanded);
    //                   },
    //                 ).toList())),
    //             Container(
    //                 height: getVerticalSize(106),
    //                 padding: getPadding(left: 16, right: 16),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     const CancelButton(plural: false),
    //                     AddScheduleConfirmButton(controller: controller),
    //                   ],
    //                 )),
    //           ],
    //         )));
  }
}
