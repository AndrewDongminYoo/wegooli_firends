// 🎯 Dart imports:
import 'dart:collection';
import 'dart:ui';

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

  LinkedHashMap<DateTime, List<Schedule>> get events =>
      LinkedHashMap<DateTime, List<Schedule>>(
        equals: isSameDay,
        hashCode: getHashCode,
      );
  // ..addAll(eventSource);

  // Map<DateTime, List<Schedule>> get eventSource =>
  //     Map.fromIterable(List<int>.generate(10, (index) => index),
  //         key: (item) =>
  //             DateTime.utc(firstDay.year, firstDay.month, (item * 5) as int),
  //         value: (item) => List.generate((item % 4 + 1) as int,
  //             (index) => Schedule(accountId: '사용자 $item | ${index + 1}')))
  //       ..addAll({
  //         kToday: [
  //           // TODO: 실제 데이터로 변경
  //           Schedule(accountId: l10ns.name2),
  //           Schedule(accountId: l10ns.name3),
  //         ],
  //       });

  final RxMap<DateTime, List<Schedule>> _eventSource = RxMap.of({});
  Map<DateTime, List<Schedule>> get eventSource => _eventSource;
  @override
  void onInit() async {
    // eventSource.clear();
    super.onInit();
    final schedules = await retrieveSchedules();
    // _eventSource = Map<DateTime, List<Schedule>>.fromIterable(schedules,
    //     key: (it) => DateTime.parse(it.startAt), value: (it) => it);
    // Map<DateTime, List<Schedule>> _eventSource = Map.of({});
    for (Schedule schedule in schedules) {
      DateTime startDate = DateTime.parse(schedule.startAt!);
      DateTime endDate = DateTime.parse(schedule.endAt!);
      int diffDays = endDate.difference(startDate).inDays;
      for (var i = 0; i < diffDays; i++) {
        DateTime key = startDate.add(Duration(days: i));
        List<Schedule> value = _eventSource.getOrDefault(key, []);
        value.add(schedule);
        _eventSource.addIf(true, key.toUtc(), value);
        print('eventSource Add : \nkey:${key.toUtc()}\nvalue:$value');
      }
    }
    // events.addAll(_eventSource);
    // print('_eventSource : $_eventSource');
    print('_eventSource : $_eventSource');
    // eventSource.addAll({kToday: await retrieveSchedules()});
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

  Color? getColor(String accountId) {
    String? hexColor = userController.members
        .firstWhereOrNull((member) => member.accountId == accountId)
        ?.color
        ?.substring(1);
    if (hexColor == null) {
      return null;
    }
    // Color type이 다름
    // return colorFromHex(hex);
    final rgb = colorFromHex(hexColor).toRgbColor();
    return Color.fromRGBO(rgb.r.toInt(), rgb.g.toInt(), rgb.b.toInt(), 0);
  }

  Future<List<Schedule>> retrieveSchedules() async {
    if (userController.teams.isEmpty) {
      return List.empty();
    }
    int? teamSeq = userController.teams[0].teamSeq;
    if (teamSeq == null) {
      return List.empty();
    }
    final response = await wegooli
        .getScheduleControllerApi()
        .selectScheduleList(teamSeq: teamSeq);
    final schedules = response.data;
    if (schedules == null) {
      return List.empty();
    }
    print('schedules $schedules');
    return schedules
        .map((it) => Schedule(
              accountId: it.accountId!,
              seq: it.seq,
              teamSeq: it.teamSeq,
              delYn: it.delYn,
              startAt: it.startAt,
              endAt: it.endAt,
              createdAt: it.createdAt,
              updatedAt: it.updatedAt,
              highlightColor: getColor(it.accountId!),
            ))
        .toList();
  }
}
