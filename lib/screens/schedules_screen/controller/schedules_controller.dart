// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '../models/schedules_model.dart';
import '/data/custom/schedule.dart';
import '/data/custom/user.model.dart';

class SchedulesController extends GetxController {
  DateTime? selectedDay;
  DateTime? focusedDay;
  DateTime? rangeStart;
  DateTime? rangeEnd;
  DateTime get firstDay => DateTime(kToday.year, kToday.month - 1, kToday.day);
  DateTime get lastDay => DateTime(kToday.year, kToday.month + 1, kToday.day);
  CalendarFormat calendarFormat = CalendarFormat.month;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;
  final User? user = null;

  // ignore: prefer_constructors_over_static_methods
  static SchedulesController get to =>
      GetIt.I.isRegistered<SchedulesController>()
          ? GetIt.I.get<SchedulesController>()
          : GetIt.I.registerSingleton(SchedulesController());

  final schedules = ValueNotifier<List<Schedule>>([]);
  final scheduleModel = SchedulesModel().obs;
}
