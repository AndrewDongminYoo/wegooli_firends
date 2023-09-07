// 🎯 Dart imports:
import 'dart:collection';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

final kToday = DateTime.now();

class ScheduleController extends GetxController {
  final wegooli = WegooliFriends.client;
  final userController = UserController.to;
  DateTime focusedDay = kToday;

  /// [Map]을 사용하기로 한 경우, [LinkedHashMap]를 사용하는 것이 권장됩니다.
  LinkedHashMap<DateTime, List<Schedule>>? _events =
      LinkedHashMap<DateTime, List<Schedule>>();
  LinkedHashMap<DateTime, List<Schedule>> get events => _events ??
      LinkedHashMap<DateTime, List<Schedule>>(
        equals: isSameDay,
        hashCode: getHashCode,
      )
    ..addAll(eventSource);

  RxMap<DateTime, List<Schedule>> _eventSource = RxMap.of({});
  RxMap<DateTime, List<Schedule>> get eventSource => _eventSource;

  @override
  void onInit() {
    makeEventSource();
    super.onInit();
  }

  DateTime? _firstDay;
  DateTime get firstDay =>
      _firstDay ?? DateTime(kToday.year, kToday.month - 1, kToday.day);
  set firstDay(DateTime value) {
    _firstDay = value;
  }

  DateTime? _lastDay;
  DateTime get lastDay =>
      _lastDay ?? DateTime(kToday.year, kToday.month + 1, kToday.day);
  set lastDay(DateTime value) {
    _lastDay = value;
  }

  DateTime? rangeEnd;
  DateTime? rangeStart;
  DateTime? selectedDay;
  static ScheduleController get to => Get.isRegistered<ScheduleController>()
      ? Get.find<ScheduleController>()
      : Get.put(ScheduleController());

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "Item One"),
    SelectionPopupModel(id: 2, title: "Item Two"),
    SelectionPopupModel(id: 3, title: "Item Three")
  ]);

  CalendarFormat calendarFormat = CalendarFormat.month;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by long pressing a date
  void makeEventSource() {
    final schedules = userController.schedules;
    Map<DateTime, List<Schedule>> localEventSource = Map.of({});
    for (Schedule schedule in schedules) {
      DateTime startDate = DateTime.parse(schedule.startAt!);
      DateTime endDate = DateTime.parse(schedule.endAt!);
      int diffDays = endDate.difference(startDate).inDays;
      for (int i = 0; i < diffDays; i++) {
        DateTime key = startDate.add(Duration(days: i));
        List<Schedule> value = localEventSource.getOrDefault(key, []);
        value.add(schedule);
        localEventSource.addIf(
            true,
            DateTime(key.year, key.month, key.day, key.hour, key.minute),
            value);
        // print('eventSource Add : \nkey:${key}\nvalue:$value');
      }
    }
    _eventSource(localEventSource);
  }
}
