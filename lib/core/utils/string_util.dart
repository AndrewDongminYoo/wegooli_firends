// 🎯 Dart imports:
import 'dart:math';

/// generateRandomString 함수는 지정된 길이의 임의 문자열을 생성
///
/// @param [int] length 길이 매개변수는 생성될 무작위 문자열의 원하는 길이를 지정
String generateRandomString(int length) {
  const characters =
      '+-*=?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  final random = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => characters.codeUnitAt(random.nextInt(characters.length))));
}
