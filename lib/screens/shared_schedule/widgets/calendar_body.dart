// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/shared_schedule/shared_schedule.dart';
import 'calendar_style.dart';

class CalendarBody extends StatefulWidget {
  const CalendarBody({
    super.key,
  });

  @override
  State<CalendarBody> createState() => _CalendarBodyState();
}

final today = DateUtils.dateOnly(DateTime.now());

class _CalendarBodyState extends State<CalendarBody> {
  late List<MaterialColor> colors;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by long pressing a date
  DateTime _focusedDay = kToday;
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  TeamScheduleController controller = Get.find<TeamScheduleController>();
  get daysOfWeekStyle => DaysOfWeekStyle(
      weekdayStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
      weekendStyle: TextStyle(
          color: Colors.red.shade400,
          fontWeight: FontWeight.bold,
          fontSize: 14));

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initializeDateFormatting(Localizations.localeOf(context).languageCode);
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });
      // _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
    } else if (start != null) {
    } else if (end != null) {}
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(all: 16),
        child: Container(
            padding: getPadding(all: 16),
            decoration: AppDecoration.outline
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Align(
                alignment: Alignment.center,
                child: TableCalendar<Schedule>(
                    calendarFormat: _calendarFormat,
                    daysOfWeekHeight: 30,
                    eventLoader: (day) => kEvents[day] ?? [],
                    firstDay: kFirstDay,
                    focusedDay: _focusedDay,
                    lastDay: kLastDay,
                    locale: Locale('ko', 'KR').toString(),
                    rangeEndDay: _rangeEnd,
                    rangeSelectionMode: _rangeSelectionMode,
                    rangeStartDay: _rangeStart,
                    selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                    startingDayOfWeek: StartingDayOfWeek.sunday,
                    daysOfWeekStyle: daysOfWeekStyle,
                    calendarStyle: calendarStyle,
                    headerStyle: headerStyle,
                    onDaySelected: _onDaySelected,
                    onRangeSelected: _onRangeSelected,
                    onFormatChanged: _onFormatChanged,
                    onPageChanged: _onPageChanged))));
  }

  void _onPageChanged(focusedDay) {
    _focusedDay = focusedDay;
  }

  void _onFormatChanged(format) {
    if (_calendarFormat != format) {
      setState(() {
        _calendarFormat = format;
      });
    }
  }
}
