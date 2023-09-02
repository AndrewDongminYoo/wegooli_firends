// 🎯 Dart imports:
import 'dart:collection';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:table_calendar/table_calendar.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/core/app_export.dart';

/// 스케쥴 이벤트의 예시입니다.
/// [/data/models/schedule_model.dart] 참조
class Schedule {
  int? seq = 0;
  int? teamSeq = 0;
  String? delYn = 'N';
  final String accountId;
  String? startAt = kToday.toString();
  String? endAt = kToday.toString();
  DateTime? createdAt = DateTime.now();
  DateTime? updatedAt = DateTime.now();
  Color? highlightColor;

  Schedule({required this.accountId});

  @override
  String toString() => accountId;
}

/// [Map]을 사용하기로 한 경우, [LinkedHashMap]를 사용하는 것이 권장됩니다.
final kEvents = LinkedHashMap<DateTime, List<Schedule>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
    key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
    value: (item) => List.generate(item % 4 + 1,
        (index) => Schedule(accountId: '사용자 $item | ${index + 1}')))
  ..addAll({
    kToday: [
      // TODO: 실제 데이터로 변경
      Schedule(accountId: l10ns.name2),
      Schedule(accountId: l10ns.name3),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// [first] 부터 [last]까지의 [DateTime]의 목록을 반환합니다.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(dayCount,
      (index) => DateTime.utc(first.year, first.month, first.day + index));
}

/// 주어진 [weekday]와 관련된 숫자 값을 반환합니다.
int getWeekdayNumber(StartingDayOfWeek weekday) {
  return StartingDayOfWeek.values.indexOf(weekday) + 1;
}

/// 시간 부분을 제외한 UTC 형식의 [date]를 반환합니다.
DateTime normalizeDate(DateTime date) {
  return DateTime.utc(date.year, date.month, date.day);
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 1, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 1, kToday.day);
