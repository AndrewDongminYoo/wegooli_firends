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
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
          padding: getPadding(top: 20),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.customBorderT10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // CustomImageView(
              //     svgPath: Assets.svg.imgCloseGray400Sharp.path,
              //     height: getSize(13),
              //     width: getSize(13),
              //     alignment: Alignment.centerRight,
              //     margin: getMargin(right: 16),
              //     onTap: goBack),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: mediaQueryData.size.width,
                      padding: getPadding(left: 16, top: 16),
                      child: Text(
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
                          letterSpacing: getHorizontalSize(0.04),
                        ),
                      ))),
              Container(
                  height: getVerticalSize(8),
                  width: double.maxFinite,
                  margin: getMargin(top: 16),
                  decoration: AppDecoration.fillGray100),
              Obx(() => ExpansionPanelList(
                  materialGapSize: getSize(8),
                  expansionCallback: (panelIndex, isExpanded) {
                    print('panelIndex: $panelIndex &isExpanded: $isExpanded');
                    controller.items[panelIndex].isExpanded = isExpanded;
                    controller.items.refresh();
                  },
                  // animationDuration: Duration(seconds: 1),
                  elevation: 1,
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
                                        color: Color(
                                            isOpen ? 0xFF222222 : 0x66222222),
                                        fontSize: 16,
                                        fontFamily: FontFamily.pretendard,
                                        fontWeight: FontWeight.w700,
                                        height: 1.50,
                                        letterSpacing: 0.03,
                                      ),
                                    ),
                                    Text(
                                      formatting(item.date),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(
                                            isOpen ? 0xFF222222 : 0x66222222),
                                        fontSize: 16,
                                        fontFamily: FontFamily.pretendard,
                                        fontWeight: FontWeight.w700,
                                        height: 1.50,
                                        letterSpacing: 0.03,
                                      ),
                                    ),
                                  ],
                                ));
                          },
                          body: Container(
                            height: getVerticalSize(200),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(20),
                            // color: Colors.redAccent[100],
                            width: double.infinity,
                            child: CupertinoDatePicker(
                              backgroundColor: CupertinoColors.systemBackground
                                  .resolveFrom(context),
                              initialDateTime: item.date,
                              onDateTimeChanged: (newDateTime) {
                                // print('newDateTime: $newDateTime');
                                controller.items[index].date = newDateTime;
                                controller.items.refresh();
                              },
                            ),
                          ),
                          isExpanded: item.isExpanded);
                    },
                  ).toList())),
              Container(
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
          )),
    ));
  }
}
