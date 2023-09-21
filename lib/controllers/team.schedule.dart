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
  final _teamAccount = TeamAccountService();
  final _teamService = TeamService();
  final userController = UserController.to;
  AuthMode mode = AuthMode.login;

  final RxList<Schedule> _schedules = RxList<Schedule>.of([]);
  RxList<Schedule> get schedules => _schedules;
  final RxList<TeamAccountModel> _members = RxList<TeamAccountModel>([]);
  final RxList<TeamAccountConnectionResponse> _teams =
      RxList<TeamAccountConnectionResponse>.of([]);
  RxList<TeamAccountConnectionResponse> get teams => _teams;
  int? get firstTeamSeq => teams.firstOrNull?.teamSeq;
  TeamAccountConnectionResponse? get firstTeamsOrNull => teams.firstOrNull;

  List<TeamAccountModel> get members {
    final team = firstTeamsOrNull;
    _members(team?.account ?? []);
    // print('_members : $_members');
    return _members.toList();
  }

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
    final accountId = goolier.id;
    final teamSeq = firstTeamSeq;
    if (teamSeq == null) {
      return;
    }
    await _service.addSchedule(
        accountId!, teamSeq, reservationTime, returnTime);
    await refreshSchedules();
    makeEventSource();
    eventSource.refresh();
    items(initItem());
  }

  Future<void> load() async {
    teams.value = await findTeams();
    teams.refresh();
    schedules.value = await retrieveSchedules();
    schedules.refresh();
  }

  Future<List<TeamAccountConnectionResponse>> findTeams() async {
    if (userController.isAuthenticated) {
      print('currentUser : $goolier');
      return _teamAccount.findTeams(goolier.id!);
    } else {
      return <TeamAccountConnectionResponse>[];
    }
  }

  Future<List<Schedule>> retrieveSchedules() async {
    if (firstTeamSeq == null) {
      return List.empty();
    } else {
      return _service.retrieveSchedules(firstTeamSeq!);
    }
  }

  Future<String?> getTeamCode() async {
    if (firstTeamSeq == null) {
      return null;
    }
    final teamModel = await _teamService.findTeamBySeqOrNull(firstTeamSeq!);
    return teamModel?.teamCode;
  }

  Future<void> refreshSchedules() async {
    final teamSeq = firstTeamSeq;
    if (teamSeq == null) {
      return;
    }
    final newSchedule = await _service.retrieveSchedules(firstTeamSeq!);
    schedules(newSchedule);
  }

  Future<void> updateSchedule(int scheduleId) async {
    await _service.updateSchedule(scheduleId, reservationTime, returnTime);
    // TODO 기존 아이템 목록에서 제거하고 업데이트된 항목으로 반영.
    await refreshSchedules();
    eventSource.clear();
    makeEventSource();
    eventSource.refresh();
    items(initItem());
  }
}
