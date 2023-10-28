// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/utils/map_extensions.dart';
import '/data/custom/schedule.dart';
import '/gen/assets.gen.dart';
import '/screens/scheduled_date_dialog/view_scheduled_date_dialog.dart';
import '/theme/app_decoration.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/separation_bar.dart';
import 'controller/schedules_controller.dart';
import 'datetime_picker_bottom_sheet.dart';
import 'utils/calendar_utilities.dart';
import 'widgets/calendar_builders.dart';
import 'widgets/calendar_style.dart';
import 'widgets/user_profile_widget.dart';

class SchedulesScreen extends StatefulWidget {
  const SchedulesScreen({super.key});

  static const routeName = '/shared_calendar';

  @override
  State<SchedulesScreen> createState() => _SchedulesScreenState();
}

class _SchedulesScreenState extends State<SchedulesScreen> {
  final controller = SchedulesController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        height: 45.h,
        title: CustomImageView(svgPath: Assets.svg.imgFriends.path),
        styleType: Style.bgOutline_1,
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 21),
            child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          '팀원',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: textTheme.titleMedium!
                              .copyWith(color: Colors.black)
                              .modest
                              .thick,
                        )),
                    SizedBox(
                      height: 81.h,
                      child: Obx(
                        () => ListView.separated(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            top: 12.h,
                            right: 16.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 15.w);
                          },
                          itemCount: controller
                              .scheduleModel.value.profiles.value.length,
                          itemBuilder: (context, index) {
                            final model = controller
                                .scheduleModel.value.profiles.value[index];
                            return UserProfileWidget(model);
                          },
                        ),
                      ),
                    ),
                    const SeparationBar(),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          '일정',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: textTheme.titleMedium!
                              .copyWith(color: Colors.black)
                              .modest
                              .thick,
                        )),
                    CustomElevatedButton(
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => const DatetimePickerBottomSheet(),
                      ),
                      text: '일정 추가 +',
                      margin: EdgeInsets.only(
                        left: 16.w,
                        top: 12.h,
                        right: 16.w,
                      ),
                      alignment: Alignment.center,
                    ),
                    ValueListenableBuilder(
                        valueListenable: controller.schedules,
                        builder: (context, value, child) {
                          final _eventSource = _makeEventSource(value);
                          return Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                width: 330.w,
                                height: 284.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Palette.gray400, width: 1.w),
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10),
                                child: TableCalendar<Schedule>(
                                  shouldFillViewport: true,
                                  daysOfWeekHeight: 30,
                                  eventLoader: (DateTime key) {
                                    return _eventSource.getOrDefault(
                                        normalizeDateTime(key), <Schedule>[]);
                                  },
                                  firstDay: controller.firstDay,
                                  focusedDay:
                                      controller.focusedDay ?? DateTime.now(),
                                  lastDay: controller.lastDay,
                                  locale: const Locale('ko', 'KR').toString(),
                                  rangeEndDay: controller.rangeEnd,
                                  rangeSelectionMode:
                                      controller.rangeSelectionMode,
                                  rangeStartDay: controller.rangeStart,
                                  selectedDayPredicate: (day) =>
                                      isSameDay(controller.selectedDay, day),
                                  daysOfWeekStyle: daysOfWeekStyle,
                                  calendarStyle: calendarStyle,
                                  headerStyle: headerStyle,
                                  onDaySelected: (DateTime selectedDay,
                                      DateTime focusedDay) {
                                    if (!isSameDay(
                                        controller.selectedDay, selectedDay)) {
                                      controller.focusedDay = focusedDay;
                                      controller.rangeStart =
                                          null; // Important to clean those
                                      controller.rangeEnd = null;
                                      controller.rangeSelectionMode =
                                          RangeSelectionMode.toggledOff;
                                    }
                                    final schedules = _eventSource.getOrDefault(
                                        normalizeDateTime(selectedDay),
                                        <Schedule>[]);

                                    if (schedules.isNotEmpty) {
                                      showDialog(
                                        context: context,
                                        builder: (_) =>
                                            const ViewScheduledDateDialog(),
                                      );
                                    }
                                  },
                                  onRangeSelected: _onRangeSelected,
                                  onFormatChanged: _onFormatChanged,
                                  calendarBuilders: builders,
                                ),
                              ));
                        }),
                  ],
                )),
          )),
    );
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime? focusedDay) {
    controller.selectedDay = null;
    controller.focusedDay = focusedDay;
    controller.rangeStart = start;
    controller.rangeEnd = end;
    controller.rangeSelectionMode = RangeSelectionMode.toggledOn;
  }

  void _onFormatChanged(CalendarFormat format) {
    if (controller.calendarFormat != format) {
      controller.calendarFormat = format;
    }
  }

  Map<DateTime, List<Schedule>> _makeEventSource(List<Schedule> schedules) {
    final localEventSource = <DateTime, List<Schedule>>{};
    for (final schedule in schedules) {
      for (final key in daysInRange(schedule.startAt, schedule.endAt)) {
        final value =
            localEventSource.getOrDefault(normalizeDateTime(key), <Schedule>[]);
        value.add(schedule);
        localEventSource.addIf(value.isNotEmpty, normalizeDateTime(key), value);
      }
    }
    return localEventSource;
  }
}
