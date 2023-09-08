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

  DateTime? _lastDay;
  DateTime get lastDay =>
      _lastDay ?? DateTime(kToday.year, kToday.month + 1, kToday.day);

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
    final schedules = UserController.to.schedules;

    /// 주어진 코드에서 `userController`는 `UserController` 클래스의 인스턴스입니다.
    /// `UserController` 클래스의 `schedules` 속성에 액세스하는 데 사용됩니다.
    /// `schedules` 속성은 `ScheduleController` 클래스의 `localEventSource` 맵을 채우는 데 사용됩니다.
    Map<DateTime, List<Schedule>> localEventSource = Map.of({});
    for (Schedule schedule in schedules) {
      DateTime startDate = DateTime.parse(schedule.startAt!);
      DateTime endDate = DateTime.parse(schedule.endAt!);
      for (DateTime key in daysInRange(startDate, endDate)) {
        List<Schedule> value =
            localEventSource.getOrDefault(normalizeDateTime(key), []);
        value.add(schedule);
        localEventSource.addIf(true, normalizeDateTime(key), value);
        // print('eventSource Add : \nkey:${key}\nvalue:$value');
      }
    }
    _eventSource(localEventSource);
  }
}
