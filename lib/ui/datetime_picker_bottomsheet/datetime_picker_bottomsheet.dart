// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/utils.dart';

// 🌎 Project imports:
import '/core/utils/datetime_utils.dart';
import '/core/utils/list_extensions.dart';
import '/core/utils/logger.dart';
import '/core/utils/size_utils.dart';
import '/data/custom/schedule.dart';
import '/gen/colors.gen.dart';
import '/l10n/l10n.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import 'models/datetime_picker_model.dart';

class DatetimePickerBottomSheet extends StatefulWidget {
  const DatetimePickerBottomSheet({
    super.key,
    this.schedule,
  });

  // 수정할 타겟 스케줄
  final Schedule? schedule;

  @override
  State<DatetimePickerBottomSheet> createState() =>
      _DatetimePickerBottomSheetState();
}

class _DatetimePickerBottomSheetState extends State<DatetimePickerBottomSheet> {
  DateTime start = DateTime.now().withoutSeconds;
  DateTime end = DateTime.now().add(2.hours).withoutSeconds;
  int openIdx = 1;

  @override
  void initState() {
    super.initState();
    // 수정할 스케줄이 있으면 이용시간과 반납시간을 해당 시간으로 셋팅
    if (widget.schedule != null) {
      start = widget.schedule!.startAt;
      end = widget.schedule!.endAt;
    }
  }

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = textTheme.titleMedium;
    // True 는 일정 수정, False는 일정 추가
    final isEditMode = widget.schedule != null;
    // 총 렌탈 시간
    final rentalTime = end.difference(start);
    final items = List.of([
      BookItem(
        title: '예약시간',
        date: start,
        minDateTime: start,
        maxDateTime: end,
        isExpanded: openIdx == 0,
      ),
      BookItem(
        title: '반납시간',
        date: end,
        minDateTime: start,
        isExpanded: openIdx == 1,
      ),
    ]);

    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              alignment: Alignment.centerLeft,
              width: mediaQueryData.size.width,
              height: 85.v,
              padding: getPadding(left: 20, top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  border: Border(
                    top: _borderSide(1.v),
                    right: _borderSide(1.v),
                    left: _borderSide(1.v),
                    bottom: _borderSide(8.v),
                  )),
              child: Text(
                l10ns.reservationTotalPeriod(
                  '${rentalTime.inHours} 시간 ${rentalTime.inMinutes.remainder(60)} 분',
                  start.formatClient,
                  end.formatClient,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: textTheme.titleMedium!
                    .copyWith(fontSize: TextSize.lg.fSize)
                    .modest,
              )),
          ExpansionPanelList(
              dividerColor: AppColors.separationBar,
              materialGapSize: 0,
              expansionCallback: (tapped, expand) {
                logger.d('panelIndex: $tapped &isExpanded: $expand');
                setState(() {
                  openIdx = expand ? tapped : -1;
                });
              },
              elevation: 0,
              children: items.mapIndexedTo(
                (index, item) {
                  return ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      final panelTextStyle = AppTextStyle(
                        color: isExpanded
                            ? AppColors.fontBlack
                            : AppColors.fontBlackDisabled,
                        fontWeight: FontWeight.bold,
                        lineHeight: Leading.normal,
                        letterSpacing: LetterSpacing.tight,
                      );
                      return Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(item.title, style: panelTextStyle),
                              Text(item.date.formatClient,
                                  textAlign: TextAlign.right,
                                  style: panelTextStyle)
                            ],
                          ));
                    },
                    isExpanded: item.isExpanded,
                    body: Container(
                      height: 100.v,
                      alignment: Alignment.center,
                      width: mediaQueryData.size.width,
                      child: CupertinoTheme(
                        data: CupertinoThemeData(
                          textTheme: CupertinoTextThemeData(
                            dateTimePickerTextStyle:
                                AppTextStyle(color: Colors.black),
                          ),
                        ),
                        child: CupertinoDatePicker(
                          use24hFormat: true,
                          minuteInterval: 10,
                          backgroundColor: Colors.white,
                          initialDateTime: item.date,
                          onDateTimeChanged: (DateTime changed) {
                            logger.d(
                                '${item.title} 설정 : ${changed.formatClient}');
                            setState(() {
                              // 예약시작시간 설정이면
                              if (index == 0) {
                                start = changed;
                              } else {
                                end = changed;
                              }
                            });
                          },
                          minimumDate: item.minDateTime,
                          maximumDate: item.maxDateTime,
                        ),
                      ),
                    ),
                  );
                },
              )),
          Container(
              color: Colors.white,
              height: 106.v,
              padding: getPadding(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    width: 104.h,
                    height: 52.v,
                    text: l10ns.cancel,
                    buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: Palette.gray400,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        )).noEffect,
                    buttonTextStyle: textTheme.titleMedium!
                        .copyWith(fontSize: TextSize.lg.fSize),
                    onTap: () {
                      Navigator.pop<bool>(context, false);
                    },
                  ),
                  if (isEditMode)
                    CustomElevatedButton(
                      text: l10ns.edit,
                      buttonTextStyle: buttonTextStyle,
                      width: 216.h,
                    )
                  else
                    CustomElevatedButton(
                      text: l10ns.confirm,
                      buttonTextStyle: buttonTextStyle,
                      width: 216.h,
                    )
                ],
              )),
        ]);
  }

  BorderSide _borderSide(double width) =>
      BorderSide(width: width, color: AppColors.separationBar);
}
