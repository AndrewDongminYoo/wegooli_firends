// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CalendarBody extends GetView<ScheduleController> {
  const CalendarBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(all: 15),
        child: Container(
            padding: getPadding(left: 20, right: 20, bottom: 20),
            width: getHorizontalSize(330),
            height: getVerticalSize(284),
            decoration: AppDecoration.outline
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Align(
                child: TableCalendar<Schedule>(
              shouldFillViewport: true,
              calendarFormat: CalendarFormat.month,
              daysOfWeekHeight: 30,
              eventLoader: _eventLoader,
              firstDay: controller.firstDay,
              focusedDay: controller.focusedDay,
              lastDay: controller.lastDay,
              locale: const Locale('ko', 'KR').toString(),
              rangeEndDay: controller.rangeEnd,
              rangeSelectionMode: controller.rangeSelectionMode,
              rangeStartDay: controller.rangeStart,
              selectedDayPredicate: (day) =>
                  isSameDay(controller.selectedDay, day),
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
      // controller.selectedDay = selectedDay;
      controller.focusedDay = focusedDay;
      controller.rangeStart = null; // Important to clean those
      controller.rangeEnd = null;
      controller.rangeSelectionMode = RangeSelectionMode.toggledOff;
      goReservationsCheck(selectedDay);
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
    // controller.focusedDay = focusedDay;
  }

  void _onFormatChanged(CalendarFormat format) {
    if (controller.calendarFormat != format) {
      controller.calendarFormat = format;
    }
  }

  List<Schedule> _eventLoader(DateTime key) {
    return controller.events.getOrDefault(normalizeDateTime(key), []);
  }
}
