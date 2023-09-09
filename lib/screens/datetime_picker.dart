// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class DatetimePickerBottomSheet extends GetWidget<ScheduleController> {
  const DatetimePickerBottomSheet({super.key});
  String formatting(DateTime date) {
    final formatter = DateFormat('M/d (E) HH:mm', 'ko');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: getPadding(top: 16, bottom: 16),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.customBorderT10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  svgPath: Assets.svg.imgCloseGray400Sharp.path,
                  height: getSize(13),
                  width: getSize(13),
                  alignment: Alignment.centerRight,
                  margin: getMargin(right: 16),
                  onTap: () {
                    goBack();
                  }),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: mediaQueryData.size.width,
                      padding: getPadding(left: 16, top: 16),
                      child: Text(
                        '총 ${controller.returnTime.difference(controller.reservationTime).inHours}시간 이용\n${formatting(controller.reservationTime)} ~ ${formatting(controller.returnTime)}',
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
                  children: controller.items.mapIndexed((index, item) {
                    return ExpansionPanel(
                        // backgroundColor: Colors.amber,
                        headerBuilder: (context, isOpen) {
                          return Padding(
                              padding: EdgeInsets.all(15),
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
                          height: 200,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          // color: Colors.redAccent[100],
                          width: double.infinity,
                          child: CupertinoDatePicker(
                            backgroundColor: CupertinoColors.systemBackground
                                .resolveFrom(context),
                            mode: CupertinoDatePickerMode.dateAndTime,
                            initialDateTime: item.date,
                            onDateTimeChanged: (newDateTime) {
                              // print('newDateTime: $newDateTime');
                              controller.items[index].date = newDateTime;
                              controller.items.refresh();
                            },
                          ),
                        ),
                        isExpanded: item.isExpanded);
                  }).toList())),
              Container(
                  height: getVerticalSize(106),
                  padding: getPadding(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                          width: getHorizontalSize(104),
                          height: getVerticalSize(52),
                          text: l10ns.cancel,
                          buttonStyle:
                              CustomButtonStyles.fillGray400C26.copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              getHorizontalSize(104),
                              getVerticalSize(52),
                            ),
                          )),
                          buttonTextStyle: CustomTextStyles.titleMedium18,
                          onTap: () => goBack()),
                      CustomElevatedButton(
                          width: getHorizontalSize(216),
                          height: getVerticalSize(52),
                          onTap: () {
                            controller.addSchedule();
                          },
                          text: l10ns.confirm,
                          buttonStyle:
                              CustomButtonStyles.fillPrimaryC26.copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              getHorizontalSize(216),
                              getVerticalSize(52),
                            ),
                          )),
                          buttonTextStyle: theme.textTheme.titleMedium!)
                    ],
                  ))
            ],
          )),
    );
  }
}
