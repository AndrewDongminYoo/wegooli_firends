// 🎯 Dart imports:
import 'dart:math';

/// generateRandomString 함수는 지정된 길이의 임의 문자열을 생성
///
/// @param [int] length 길이 매개변수는 생성될 무작위 문자열의 원하는 길이를 지정
String generateRandomString(int length) {
  const chars = '+-*=?AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  final random = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
}

String generateInvitationCode() {
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final random = Random();

  final buffer = StringBuffer();
  for (var i = 0; i < 4; i++) {
    buffer.write(chars[random.nextInt(chars.length)]);
  }
  buffer.write('-');
  for (var i = 0; i < 4; i++) {
    buffer.write(chars[random.nextInt(chars.length)]);
  }
  buffer.write('-');
  for (var i = 0; i < 4; i++) {
    buffer.write(chars[random.nextInt(chars.length)]);
  }
  buffer.write('-');
  for (var i = 0; i < 4; i++) {
    buffer.write(chars[random.nextInt(chars.length)]);
  }

  return buffer.toString();
}

extension StringValidate on String? {
  bool get isNullOrEmpty => this != null || this!.isEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
