// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/datetime_utils.dart';
import '/core/utils/list_extensions.dart';
import '/core/utils/size_utils.dart';
import '/data/custom/schedule.dart';
import '/gen/colors.gen.dart';
import '/l10n/l10n.dart';
import '/routes/app_navigation.dart';
import '/screens/schedules_screen/schedules_screen.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/elevated_button.dart';
import 'models/datetime_picker_model.dart';

class DatetimePickerBottomSheet extends StatefulWidget {
  const DatetimePickerBottomSheet({
    super.key,
    this.schedule,
  });
  static const routeName = '/datetime_picker_bottom_sheet';
  final Schedule? schedule;

  @override
  State<DatetimePickerBottomSheet> createState() =>
      _DatetimePickerBottomSheetState();
}

Duration twoHours = const Duration(minutes: 2 * Duration.minutesPerHour);

class _DatetimePickerBottomSheetState extends State<DatetimePickerBottomSheet> {
  DateTime start = DateTime.now().withoutSeconds;
  DateTime end = DateTime.now().add(twoHours).withoutSeconds;
  int openIdx = 1;

  @override
  void initState() {
    super.initState();
    if (widget.schedule != null) {
      start = widget.schedule!.startAt;
      end = widget.schedule!.endAt;
    }
  }

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = textTheme.titleMedium;
    final isEditMode = widget.schedule != null;
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
              width: MediaQuery.of(context).size.width,
              height: 85.h,
              padding: EdgeInsets.only(left: 20.w, top: 20.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  border: Border(
                    top: _borderSide(1),
                    right: _borderSide(1),
                    left: _borderSide(1),
                    bottom: _borderSide(8),
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
                    .copyWith(fontSize: TextSize.lg)
                    .modest,
              )),
          ExpansionPanelList(
              dividerColor: AppColors.separationBar,
              materialGapSize: 0,
              expansionCallback: (tapped, expand) {
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
                      height: 100.h,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
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
                            setState(() {
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
              height: 106.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    width: 104.w,
                    height: 52.h,
                    text: '수정',
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: Palette.gray400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder25,
                      ),
                    ).noEffect,
                    buttonTextStyle:
                        textTheme.titleMedium!.copyWith(fontSize: TextSize.lg),
                    onTap: () {
                      context.pop(true);
                    },
                  ),
                  if (isEditMode)
                    CustomElevatedButton(
                      onTap: context.safePop,
                      text: '수정',
                      buttonTextStyle: buttonTextStyle,
                      width: 216.w,
                    )
                  else
                    CustomElevatedButton(
                      onTap: () => context.goNamed(SchedulesScreen.routeName),
                      text: '확인',
                      buttonTextStyle: buttonTextStyle,
                      width: 216.w,
                    )
                ],
              )),
        ]);
  }

  BorderSide _borderSide(double width) =>
      BorderSide(width: width.w, color: AppColors.separationBar);
}
