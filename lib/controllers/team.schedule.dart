// 📦 Package imports:
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/lib.dart';

final kToday = DateTime.now();

class Item {
  Item({
    required this.title,
    required this.date,
    this.isExpanded = false,
  });
  String title;
  DateTime date;
  bool isExpanded;
}

class ScheduleController extends GetxController {
  final _service = ReservationsService();
  final userController = UserController.to;

  // ignore: prefer_constructors_over_static_methods
  static ScheduleController get to => Get.isRegistered<ScheduleController>()
      ? Get.find<ScheduleController>()
      : Get.put(ScheduleController());

  DateTime focusedDay = kToday;

  final RxMap<DateTime, List<Schedule>> eventSource = RxMap.of({});

  @override
  void onInit() {
    // print('AAA : onInit()');
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

  RxList<Item> items = RxList.of([
    Item(
      title: '예약시간',
      // DateTime reservationTime = DateTime.now();
      date: DateTime.now()
          .add(Duration(minutes: 10 - DateTime.now().minute % 10)),
    ),
    // Add more items here
    Item(
      title: '반납시간',
      // DateTime returnTime = DateTime.now();
      date: DateTime.now()
          .add(Duration(hours: 2, minutes: 10 - DateTime.now().minute % 10)),
    ),
  ]);

  DateTime get reservationTime => items[0].date;
  DateTime get returnTime => items[1].date;

  CalendarFormat calendarFormat = CalendarFormat.month;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by long pressing a date
  void makeEventSource() {
    // print('AAA : makeEventSource()');
    final schedules = UserController.to.schedules;
    // print('AAA : schedule ${schedules.length}');

    /// 주어진 코드에서 `userController`는 `UserController` 클래스의 인스턴스입니다.
    /// `UserController` 클래스의 `schedules` 속성에 액세스하는 데 사용됩니다.
    /// `schedules` 속성은 `ScheduleController` 클래스의 `localEventSource` 맵을 채우는 데 사용됩니다.
    final localEventSource = Map<DateTime, List<Schedule>>.of({});
    for (final schedule in schedules) {
      // print('AAA : schedule $schedule');
      final startDate = DateTime.parse(schedule.startAt!);
      final endDate = DateTime.parse(schedule.endAt!);
      for (final key in daysInRange(startDate, endDate)) {
        final value =
            localEventSource.getOrDefault(normalizeDateTime(key), <Schedule>[]);
        value.add(schedule);
        localEventSource.addIf(true, normalizeDateTime(key), value);
        // print('eventSource Add : \nkey:${key}\nvalue:$value');
      }
    }
    // print('AAA : localEventSource length ${localEventSource.length}');
    eventSource(localEventSource);
  }

  List<Item> initItem() {
    // print('AAA : initItem()');
    return List.of([
      Item(
        title: '예약시간',
        // DateTime reservationTime = DateTime.now();
        date: DateTime.now()
            .add(Duration(minutes: 10 - DateTime.now().minute % 10)),
      ),
      // Add more items here
      Item(
        title: '반납시간',
        // DateTime returnTime = DateTime.now();
        date: DateTime.now()
            .add(Duration(hours: 2, minutes: 10 - DateTime.now().minute % 10)),
      ),
    ]);
  }

  Future<void> addSchedule() async {
    // print('AAA : addSchedule');
    final accountId = userController.currentUser.id;
    final teamSeq = userController.firstTeamSeq;
    if (teamSeq == null) {
      return;
    }
    await _service.addSchedule(
        accountId!, teamSeq, reservationTime, returnTime);
    userController.schedules(await userController.retrieveSchedules(teamSeq));
    makeEventSource();
    // final localEventSource = Map<DateTime, List<Schedule>>.of({});
    // final schedule = Schedule(
    //   accountId: accountId,
    //   teamSeq: teamSeq,
    //   startAt: reservationTime.toString(),
    //   endAt: returnTime.toString(),
    // );

    // for (final key in daysInRange(reservationTime, returnTime)) {
    //   final value =
    //       localEventSource.getOrDefault(normalizeDateTime(key), <Schedule>[]);
    //   value.add(schedule);
    //   localEventSource.addIf(true, normalizeDateTime(key), value);
    // }
    // eventSource.addAll(localEventSource);
    eventSource.refresh();
    // TODO 주의 필요.
    await Get.forceAppUpdate();
    items(initItem());
  }

  Future<void> updateSchedule(int scheduleId) async {
    // print('AAA : updateSchedule');
    final teamSeq = userController.firstTeamSeq;
    if (teamSeq == null) {
      return;
    }

    await _service.updateSchedule(scheduleId, reservationTime, returnTime);
    // TODO 기존 아이템 목록에서 제거하고 업데이트된 항목으로 반영.
    userController.schedules(await userController.retrieveSchedules(teamSeq));
    eventSource.clear();
    makeEventSource();
    eventSource.refresh();
    // TODO 주의 필요.
    await Get.forceAppUpdate();
    items(initItem());
  }
}
