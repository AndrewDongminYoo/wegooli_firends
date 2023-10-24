// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:from_css_color/from_css_color.dart';

// 🌎 Project imports:
import '/core/utils/datetime_utils.dart';
import '/data/model/schedule_model.dart';

final kToday = DateTime.now();

/// 스케쥴 이벤트의 예시입니다.
/// [/data/model/schedule_model.dart] 참조
class Schedule {
  Schedule({
    required this.accountId,
    this.seq,
    this.teamSeq,
    this.delYn = 'N',
    required this.startAt,
    required this.endAt,
    required this.createdAt,
    required this.updatedAt,
  });
  Schedule.fromModel(ScheduleModel model)
      : this(
          accountId: model.accountId!,
          seq: model.seq,
          teamSeq: model.teamSeq,
          delYn: model.delYn,
          startAt: model.startAt != null ? model.startAt!.toDateTime() : kToday,
          endAt: model.endAt != null ? model.endAt!.toDateTime() : kToday,
          createdAt: model.createdAt ?? DateTime.now(),
          updatedAt: model.updatedAt ?? DateTime.now(),
        );

  final int? seq;
  final int? teamSeq;
  final String? delYn;
  final String accountId;
  final DateTime startAt;
  final DateTime endAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// 🚙 현재 회원이 운전 중인지 여부
  bool get isCurrentlyUsing => DateTime.now().isBetween(startAt, endAt);

  /// 🚙 멤버의 색상을 상속받는 스케쥴의 마커 색상
  Color highlightColor(String color) {
    return fromCssColor(color);
  }

  @override
  String toString() => accountId;
}
