// 📦 Package imports:
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/utils/string_validators.dart';

/// '10/6 (금) 14:43'
const NUM_MONTH_DAY_ABBR_WEEKDAY_HOUR24 = 'M/d (E) HH:mm';

/// '2023-10-06 14:43:29'
const DATEFORMAT3_TIMEFORMAT2 = 'yyyy-MM-dd HH:mm:ss';

DateFormat clientFormat = DateFormat(NUM_MONTH_DAY_ABBR_WEEKDAY_HOUR24, 'ko');
DateFormat serverFormat = DateFormat(DATEFORMAT3_TIMEFORMAT2);

/// [DateTime] 클래스에서 `format`이라는 확장 메서드를 정의합니다.
extension DateTimeExtension on DateTime {
  /// 로캘에 따라 형식이 지정된 [날짜]를 나타내는 문자열을 반환합니다.
  String format([
    String pattern = NUM_MONTH_DAY_ABBR_WEEKDAY_HOUR24,
    String? locale = 'ko',
  ]) {
    if (locale.isNotNullNorEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }

  String get formatClient => clientFormat.format(this);
  String get formatServer => serverFormat.format(this);
  DateTime get withoutSeconds =>
      DateTime(year, month, day, hour, minute + (10 - minute % 10));

  /// 이 함수는 주어진 날짜(this)가 다른 두 날짜 사이에 있는지 확인
  ///
  /// Args:
  ///   past [DateTime]: 과거 특정 시점
  ///   then [DateTime]: 미래 특정 날짜
  bool isBetween(DateTime past, DateTime then) {
    return !isAfter(then) && !isBefore(past);
  }
}

extension ToDateTime on String {
  DateTime toDateTime() => DateTime.tryParse(this) ?? DateTime.now();
}
