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
  DateTime _focusedDay = kToday;
  DateTime get focusedDay => _focusedDay;
  set focusedDay(DateTime value) {
    _focusedDay = value;
  }

  /// [Map]을 사용하기로 한 경우, [LinkedHashMap]를 사용하는 것이 권장됩니다.
  LinkedHashMap<DateTime, List<Schedule>>? _events =
      LinkedHashMap<DateTime, List<Schedule>>();
  LinkedHashMap<DateTime, List<Schedule>> get events => _events ??
      LinkedHashMap<DateTime, List<Schedule>>(
        equals: isSameDay,
        hashCode: getHashCode,
      )
    ..addAll(eventSource);

  Map<DateTime, List<Schedule>> get eventSource =>
      Map.fromIterable(List<int>.generate(0, (index) => index),
          key: (item) =>
              DateTime.utc(firstDay.year, firstDay.month, (item * 5) as int),
          value: (item) => List.generate((item % 4 + 1) as int,
              (index) => Schedule(accountId: '사용자 $item | ${index + 1}')))
        ..addAll({
          kToday: [
            // TODO: 실제 데이터로 변경
            // Schedule(accountId: l10ns.name2),
            // Schedule(accountId: l10ns.name3),
          ],
        });

  @override
  void onInit() async {
    eventSource.addAll({kToday: await retrieveSchedules()});
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
