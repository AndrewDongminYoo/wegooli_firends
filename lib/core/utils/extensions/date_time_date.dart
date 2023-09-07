/// [DateTime]과 [Date] 형식을 구분하기 위한 그레고리력 날짜입니다.
class Date implements Comparable<Date> {
  final int year;

  /// 매년 첫달은 1입니다.
  final int month;

  /// 매월 첫날은 1입니다.
  final int day;

  Date(this.year, this.month, this.day);

  /// 현재 날짜
  static Date now({bool utc = false}) {
    DateTime now = DateTime.now();
    if (utc) {
      now = now.toUtc();
    }
    return now.toDate();
  }

  /// [DateTime]으로 변환합니다.
  DateTime toDateTime({bool utc = false}) {
    if (utc) {
      return DateTime.utc(year, month, day);
    } else {
      return DateTime(year, month, day);
    }
  }

  @override

  /// 현재 [Date] 개체를 다른 [Date] 개체와 비교
  ///
  /// Args:
  ///   other [Date]: 비교할 다른 Date 클래스 객체
  int compareTo(Date other) {
    int d = year.compareTo(other.year);
    if (d != 0) {
      return d;
    }
    d = month.compareTo(other.month);
    if (d != 0) {
      return d;
    }
    return day.compareTo(other.day);
  }

  @override
  String toString() {
    final yyyy = year.toString();
    final mm = month.toString().padLeft(2, '0');
    final dd = day.toString().padLeft(2, '0');

    return '$yyyy-$mm-$dd';
  }
}

extension DateTimeToDate on DateTime {
  Date toDate() => Date(year, month, day);
}
