// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

import 'utils.dart';

class CalendarTab extends StatefulWidget {
  static const title = '일정';
  static const androidIcon = Icon(Icons.calendar_month_outlined, size: 28.0);
  static const iosIcon = Icon(CupertinoIcons.calendar, size: 28.0);

  const CalendarTab({super.key, this.androidDrawer});

  final Widget? androidDrawer;

  @override
  State<CalendarTab> createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  late List<MaterialColor> colors;
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initializeDateFormatting(Localizations.localeOf(context).languageCode);
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
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

  void _onPressed() {}

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('weGooli friends',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                height: 2)),
      ),
      body: Column(
        children: [
          // Container(
          //         padding: const EdgeInsets.all(20),
          //         decoration: const BoxDecoration(
          //             border: Border(
          //                 top: BorderSide(
          //           width: 0.3,
          //           color: Colors.grey,
          //         ))),
          //         child:
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
              width: 0.3,
              color: Colors.grey,
            ))),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('팀원',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 2)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: getRandomColor(),
                      radius: 24,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 21,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('images/profile.jpeg'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: getRandomColor(),
                      radius: 24,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 21,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('images/profile.jpeg'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: getRandomColor(),
                      radius: 24,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 21,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage('images/profile.jpeg'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 24,
                      child: Icon(Icons.add, size: 35, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              )),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('일정',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18, height: 2)),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: TableCalendar<Event>(
              firstDay: kFirstDay,
              lastDay: kLastDay,
              locale: 'ko-KR',
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
              calendarFormat: _calendarFormat,
              rangeSelectionMode: _rangeSelectionMode,
              eventLoader: _getEventsForDay,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekStyle: const DaysOfWeekStyle(
                // dowTextFormatter: ,
                decoration: BoxDecoration(),
                weekdayStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                weekendStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              calendarStyle: CalendarStyle(
                  outsideDaysVisible: true,
                  weekendTextStyle:
                      const TextStyle().copyWith(color: Colors.grey),
                  holidayTextStyle:
                      const TextStyle().copyWith(color: Colors.blue[800]),
                  markerDecoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.red.shade300,
                  ),
                  selectedDecoration: const BoxDecoration(
                      color: Color.fromARGB(255, 254, 170, 1),
                      shape: BoxShape.circle),
                  // 선택된 Range 의 첫번째 Marker 색상
                  rangeStartDecoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 255, 89),
                      shape: BoxShape.circle),
                  // 선택된 Range 의 마지막 Marker 색상
                  rangeEndDecoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 255, 89),
                      shape: BoxShape.circle),
                  // 선택된 Range 안의 Marker색상
                  withinRangeDecoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 255, 89),
                      shape: BoxShape.circle),
                  // 선택된 Range 안의 색상
                  rangeHighlightColor: const Color.fromARGB(255, 0, 255, 89),
                  todayDecoration: const BoxDecoration(
                      color: Color(0xFF9FA8DA), shape: BoxShape.circle)),
              headerStyle: const HeaderStyle(
                // headerMargin:
                // EdgeInsets.only(left: 40, top: 10, right: 40, bottom: 10),
                titleCentered: true,
                formatButtonVisible: false,
                leftChevronIcon: Icon(Icons.keyboard_arrow_left),
                rightChevronIcon: Icon(Icons.keyboard_arrow_right),
                titleTextStyle:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              onDaySelected: _onDaySelected,
              onRangeSelected: _onRangeSelected,
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[600],
              ),
              child: const Text('일정 추가 +',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      height: 3,
                      color: Colors.black)),
            ),
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color.fromARGB(126, 255, 255, 0),
                      ),
                      child: ListTile(
                        onTap: () => print('${value[index]}'),
                        title: Text('${value[index]}'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
