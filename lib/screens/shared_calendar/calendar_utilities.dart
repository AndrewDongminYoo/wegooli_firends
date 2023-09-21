// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import '/lib.dart';

/// 스케쥴 이벤트의 예시입니다.
/// [/data/model/schedule_model.dart] 참조
class Schedule {
  Schedule({
    required this.accountId,
    this.seq,
    this.teamSeq,
    this.delYn,
    this.startAt,
    this.endAt,
    this.createdAt,
    this.updatedAt,
  });
  Schedule.fromModel(ScheduleModel model)
      : this(
          accountId: model.accountId!,
          seq: model.seq,
          teamSeq: model.teamSeq,
          delYn: model.delYn,
          startAt: model.startAt,
          endAt: model.endAt,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
        );

  int? seq = 0;
  int? teamSeq = 0;
  String? delYn = 'N';
  final String accountId;
  String? startAt = kToday.toString();
  String? endAt = kToday.toString();
  DateTime? createdAt = DateTime.now();
  DateTime? updatedAt = DateTime.now();
  Color get highlightColor {
    final color = ScheduleController.to.members
        .firstWhere((element) => element.accountId == accountId)
        .color;
    return Color(int.parse(colorFromHex(color!).toString(), radix: 16));
  }

  @override
  String toString() => accountId;
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// [first] 부터 [last]까지의 [DateTime]의 목록을 반환합니다.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(dayCount,
      (index) => DateTime(first.year, first.month, first.day + index));
}

/// 주어진 [weekday]와 관련된 숫자 값을 반환합니다.
int getWeekdayNumber(StartingDayOfWeek weekday) {
  return StartingDayOfWeek.values.indexOf(weekday) + 1;
}

/// 시간 부분을 제외한 UTC 형식의 [date]를 반환합니다.
DateTime normalizeDate(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

DateTime normalizeDateTime(DateTime date) {
  // return DateTime.utc(date.year, date.month, date.day, date.hour, date.minute);
  return DateTime(date.year, date.month, date.day, date.hour);
}

bool isDateWithinRange(DateTime start, DateTime end, DateTime selectedDate) {
  // return normalizeDate(start).isBefore(normalizeDate(selectedDate)) &&
  //     normalizeDate(end).isAfter(normalizeDate(selectedDate));
  // a < b 일때, a.compareTo(b) == -1
  // a > b 일때, a.compareTo(b) == 1
  // a == b 일때, a.compareTo(b) == 0
  return normalizeDate(start).compareTo(normalizeDate(selectedDate)) < 1 &&
      normalizeDate(end).compareTo(normalizeDate(selectedDate)) > -1;
}
