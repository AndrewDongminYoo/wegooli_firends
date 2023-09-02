// 📦 Package imports:
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd/MM/yyyy';

/// [DateTime] 클래스에서 `format`이라는 확장 메서드를 정의합니다.
extension DateTimeExtension on DateTime {
  /// 로캘에 따라 형식이 지정된 [날짜]를 나타내는 문자열을 반환합니다.
  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }

  /// 이 함수는 주어진 날짜(this)가 다른 두 날짜 사이에 있는지 확인
  ///
  /// Args:
  ///   past [DateTime]: 과거 특정 시점
  ///   then [DateTime]: 미래 특정 날짜
  bool isBetween(DateTime past, DateTime then) {
    return !this.isAfter(then) && !this.isBefore(past);
  }
}
