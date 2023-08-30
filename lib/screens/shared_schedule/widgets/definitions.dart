// 🐦 Flutter imports:
import 'package:flutter/widgets.dart';

// 🌎 Project imports:
import '/core/utils/utils.dart';

/// 주어진 [day]에 위젯을 생성하는 함수에 대한 서명입니다.
Widget? dayBuilder(BuildContext context, DateTime day) {
  return null;
}

/// 주어진 [day]에 위젯을 생성하는 함수에 대한 서명입니다.
/// 또한 현재 초점이 맞춰진 요일을 포함합니다.
Widget? focusedDayBuilder(
    BuildContext context, DateTime day, DateTime focusedDay) {
  return null;
}

/// [날짜 형식]으로 지역화 및 서식을 지정할 수 있는 텍스트를 반환하는 함수에 대한 서명입니다.
String textFormatter(DateTime date, Locale locale) {
  return date.format('yyyy-mm-dd', locale.toString());
}

/// 캘린더에서 사용할 수 있는 [Gestures].
enum AvailableGestures { none, verticalSwipe, horizontalSwipe, all }
