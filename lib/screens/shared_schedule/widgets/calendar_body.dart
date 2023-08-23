// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/shared_schedule/shared_schedule.dart';

class CalendarBody extends StatefulWidget {
  const CalendarBody({
    super.key,
  });

  @override
  State<CalendarBody> createState() => _CalendarBodyState();
}

class _CalendarBodyState extends State<CalendarBody> {
  late List<MaterialColor> colors;
  late final RxList<Event> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by long pressing a date
  DateTime _focusedDay = kToday;
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  CalendarDatePicker datePicker = CalendarDatePicker(
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2100),
    onDateChanged: (date) {},
  );

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = _getEventsForDay(_selectedDay!).obs;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initializeDateFormatting(Localizations.localeOf(context).languageCode);
  }

  @override
  void dispose() {
    _selectedEvents.close();
    super.dispose();
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
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

      _selectedEvents.value = _getEventsForDay(selectedDay);
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
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(all: 16),
      child: Container(
        padding: getPadding(all: 16),
        decoration: AppDecoration.outline.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Align(
          alignment: Alignment.center,
          child: TableCalendar<Event>(
            calendarFormat: _calendarFormat,
            daysOfWeekHeight: 30,
            eventLoader: _getEventsForDay,
            firstDay: kFirstDay,
            focusedDay: _focusedDay,
            lastDay: kLastDay,
            locale: Locale('ko', 'KR').toString(),
            rangeEndDay: _rangeEnd,
            rangeSelectionMode: _rangeSelectionMode,
            rangeStartDay: _rangeStart,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekStyle: _daysOfWeekStyle,
            calendarStyle: _calendarStyle,
            headerStyle: _headerStyle,
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
            onFormatChanged: _onFormatChanged,
            onPageChanged: _onPageChanged,
          ),
        ),
      ),
    );
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

  get _calendarStyle => CalendarStyle(
      outsideDaysVisible: true,
      weekendTextStyle: const TextStyle().copyWith(color: Colors.grey),
      holidayTextStyle: const TextStyle().copyWith(color: Colors.blue[800]),
      markerSize: 3,
      markersAlignment: Alignment.topCenter,
      markersMaxCount: 3,
      markerMargin: EdgeInsets.all(1),
      markerDecoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      selectedDecoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      // 선택된 Range 의 첫번째 Marker 색상
      rangeStartDecoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.circle,
      ),
      // 선택된 Range 의 마지막 Marker 색상
      rangeEndDecoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
      // 선택된 Range 안의 Marker 색상
      withinRangeDecoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      // 선택된 Range 안의 색상
      rangeHighlightColor: Colors.purple,
      todayDecoration: BoxDecoration(
        color: Colors.cyan,
        shape: BoxShape.circle,
      ),
    );

    get _daysOfWeekStyle => DaysOfWeekStyle(
      weekdayStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
      weekendStyle: TextStyle(
          color: Colors.red.shade400,
          fontWeight: FontWeight.bold,
          fontSize: 14),
    );
    
    get _headerStyle => HeaderStyle(
      headerMargin: getMargin(left: 10, right: 10),
      titleCentered: true,
      formatButtonVisible: false,
      leftChevronIcon: Icon(Icons.keyboard_arrow_left),
      rightChevronIcon: Icon(Icons.keyboard_arrow_right),
      titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    );

  CalendarBuilders builders = CalendarBuilders(
  );
}
