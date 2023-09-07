// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CalendarBody extends GetView<ScheduleController> {
  const CalendarBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(all: 16),
        child: Container(
            padding: getPadding(all: 16),
            decoration: AppDecoration.outline
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Align(
                alignment: Alignment.center,
                child: TableCalendar<Schedule>(
                  calendarFormat: controller.calendarFormat,
                  daysOfWeekHeight: 30,
                  eventLoader: _eventLoader,
                  firstDay: controller.firstDay,
                  focusedDay: controller.focusedDay,
                  lastDay: controller.lastDay,
                  locale: Locale('ko', 'KR').toString(),
                  rangeEndDay: controller.rangeEnd,
                  rangeSelectionMode: controller.rangeSelectionMode,
                  rangeStartDay: controller.rangeStart,
                  selectedDayPredicate: (day) =>
                      isSameDay(controller.selectedDay, day),
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  daysOfWeekStyle: daysOfWeekStyle,
                  calendarStyle: calendarStyle,
                  headerStyle: headerStyle,
                  onDaySelected: _onDaySelected,
                  onRangeSelected: _onRangeSelected,
                  onFormatChanged: _onFormatChanged,
                  onPageChanged: _onPageChanged,
                  calendarBuilders: builders,
                ))));
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(controller.selectedDay, selectedDay)) {
      controller.selectedDay = selectedDay;
      controller.focusedDay = focusedDay;
      controller.rangeStart = null; // Important to clean those
      controller.rangeEnd = null;
      controller.rangeSelectionMode = RangeSelectionMode.toggledOff;
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    controller.selectedDay = null;
    controller.focusedDay = focusedDay;
    controller.rangeStart = start;
    controller.rangeEnd = end;
    controller.rangeSelectionMode = RangeSelectionMode.toggledOn;
  }

  void _onPageChanged(DateTime focusedDay) {
    controller.focusedDay = focusedDay;
  }

  void _onFormatChanged(CalendarFormat format) {
    if (controller.calendarFormat != format) {
      controller.calendarFormat = format;
    }
  }

  List<Schedule> _eventLoader(DateTime key) {
    return controller.events.getOrDefault(
        DateTime(key.year, key.month, key.day, key.hour, key.minute), []);
  }
}
