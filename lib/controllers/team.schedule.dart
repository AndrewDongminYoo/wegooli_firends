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

  DateTime _focusedDay = kToday;
  DateTime get focusedDay => _focusedDay;
  set focusedDay(DateTime value) {
    _focusedDay = value;
  }

  /// [Map]을 사용하기로 한 경우, [LinkedHashMap]를 사용하는 것이 권장됩니다.
  LinkedHashMap<DateTime, List<Schedule>>? _events = LinkedHashMap<DateTime, List<Schedule>>();
  LinkedHashMap<DateTime, List<Schedule>> get events => _events ?? LinkedHashMap<DateTime, List<Schedule>>(
    equals: isSameDay,
    hashCode: getHashCode,
  )..addAll(eventSource);

  Map<DateTime, List<Schedule>> get eventSource => Map.fromIterable(List.generate(50, (index) => index),
    key: (item) => DateTime.utc(firstDay.year, firstDay.month, item * 5),
    value: (item) => List.generate(item % 4 + 1,
        (index) => Schedule(accountId: '사용자 $item | ${index + 1}')))
  ..addAll({
    kToday: [
      // TODO: 실제 데이터로 변경
      Schedule(accountId: l10ns.name2),
      Schedule(accountId: l10ns.name3),
    ],
  });


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
}
