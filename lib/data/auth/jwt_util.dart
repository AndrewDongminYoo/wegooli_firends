/// base64로 인코딩된 문자열을 디코딩.
/// 마지막 문자열이 누락된 경우(길이가 3바이트의 배수가 아닌 경우) 인코딩 된 문자열을 채우기 위해 패딩 `=`문자를 사용
/// `==`는 인코딩된 문자열에 2바이트의 패딩이 있음을 나타내며, 이는 디코딩 중에 원본 바이너리 데이터를 정확하게 재구성할 수 있게 함.
/// @see: https://ko.wikipedia.org/wiki/base64
/// 
/// Args:
///   str (String): 매개변수 "str"은 base64로 인코딩된 값을 나타내는 문자열
String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');
  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }
  return utf8.decode(base64Url.decode(output));
}

/// [parseJwtPayLoad] 함수는 JWT(Jason Web Token)의 페이로드를 해석하는 기능을 수행합니다.
/// 
/// 1. 주어진 토큰을 `.`을 기준으로 분리하여 `parts` 리스트에 저장합니다.
/// 2. `parts` 리스트의 길이가 3이 아닌 경우, 토큰이 유효하지 않으므로 `invalid token` 예외를 발생시킵니다.
/// 3. `parts` 배열의 첫번째에 해당하는 페이로드를 `_decodeBase64` 함수를 사용하여 디코딩합니다.
/// 4. 디코딩된 페이로드를 JSON 형식으로 파싱하여 `payloadMap` 변수에 저장합니다.
/// 5. `payloadMap`이 [Map<String, dynamic>] 타입이 아닌 경우, 페이로드가 유효하지 않으므로 `invalid payload` 예외를 발생시킵니다.
/// 6. 유효한 페이로드인 경우, `payloadMap`을 반환합니다.
/// 7. 반환된 Map은 토큰의 페이로드에 저장된 데이터에 액세스할 수 있게 됩니다.
/// 
/// Args:
///   token (String): JWT(JSON 웹 토큰)를 나타내는 문자열
Map<String, dynamic> parseJwtPayLoad(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }
  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }
  return payloadMap;
}
