// 🎯 Dart imports:
import 'dart:convert';

class JwtDecoder {
  /// 문자열 JWT 토큰을 디코딩해 JSON 페이로드를 포함하는 `Map<String, dynamic>` 반환하는 기능 수행.
  /// 매개변수가 유효한 JWT 토큰이 아닌 경우 [FormatException]을 던집니다.
  /// 참고: 헤더와 서명은 이 메서드에서 반환되지 않습니다.
  ///
  /// 1. 주어진 토큰을 `.`을 기준으로 분리하여 `splitToken` 리스트에 저장합니다.
  /// 2. `splitToken` 리스트의 길이가 3이 아닌 경우, 토큰이 유효하지 않으므로 `Invalid token` 예외를 발생시킵니다.
  /// 3. `splitToken` 배열의 첫번째에 해당하는 페이로드를 `utf8.decode(base64.decode(normalizedPayload))` 함수를 사용하여 디코딩합니다.
  /// 4. 디코딩된 `payloadString` 문자열을 JSON 형식으로 파싱하여 `decodedPayload` 변수에 저장합니다.
  /// 5. `decodedPayload`이 유효한 페이로드인 경우, `decodedPayload`을 반환합니다.
  ///
  /// Args:
  ///   token (String): JWT(JSON 웹 토큰)를 나타내는 문자열
  static Map<String, dynamic> decode(String token) {
    final splitToken = token.split('.'); // Split the token by '.'
    if (splitToken.length != 3) {
      throw const FormatException('Invalid token');
    }
    try {
      // 페이로드는 항상 인덱스 1입니다. (Bearer 프리픽스 제거)
      final payloadBase64 = splitToken[1];
      // [source]의 base64 인코딩된 데이터의 유효성을 검사하고 정규화합니다.
      // 모든 %-이스케이프를 이스케이프 해제합니다.
      // 유효한 문자(A-Z, a-z, 0-9, / 및 +)만 허용합니다.
      // _ 또는 - 문자를 / 또는 +로 정규화합니다.
      // 기존 패딩(후행 = 문자)이 올바른지 확인합니다.
      // 패딩이 없는 경우 필요하고 가능한 경우 올바른 패딩을 추가합니다.
      // Base64의 길이가 올바른지 확인합니다(4의 배수).
      final normalizedPayload = base64.normalize(payloadBase64);
      // 페이로드를 디코딩하면 결과는 문자열입니다.
      final payloadString = utf8.decode(base64.decode(normalizedPayload));
      // String을 Map<String, dynamic>으로 파싱합니다.
      final decodedPayload = jsonDecode(payloadString);
      // 디코딩된 페이로드를 반환합니다.
      return decodedPayload as Map<String, dynamic>;
    } catch (error) {
      throw const FormatException('Invalid payload');
    }
  }

  /// 문자열 JWT 토큰을 디코딩된 JSON 페이로드를 포함하는 `Map<String, dynamic>`으로 디코딩합니다.
  /// 참고: 이 메서드에서는 헤더와 서명을 반환하지 않습니다.
  /// 토큰이 유효하지 않으면 `null`을 반환합니다.
  static Map<String, dynamic>? tryDecode(String token) {
    try {
      return decode(token);
    } catch (error) {
      return null;
    }
  }

  /// 토큰이 만료되었는지 여부를 알려줍니다.
  /// 토큰이 유효하면 `false`를, 만료되면 `true`를 반환합니다.
  ///
  /// 매개변수가 유효한 JWT 토큰이 아닌 경우 [FormatException]을 던집니다.
  static bool isExpired(String token) {
    final expirationDate = getExpirationDate(token);
    if (expirationDate == null) {
      return false;
    }
    // 현재 날짜가 만료일 이후인 경우 토큰은 이미 만료된 것입니다.
    return DateTime.now().isAfter(expirationDate);
  }

  static DateTime? _getDate({
    required String token,
    required String claim,
  }) {
    final decodedToken = decode(token);
    final expiration = decodedToken[claim] as int?;
    if (expiration == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(expiration * 1000);
  }

  /// 토큰 만료일을 반환합니다.
  ///
  /// 매개 변수가 유효한 JWT 토큰이 아닌 경우 [FormatException]을 던집니다.
  static DateTime? getExpirationDate(String token) {
    return _getDate(token: token, claim: 'exp');
  }

  /// 토큰 발급 날짜(iat)를 반환합니다.
  ///
  /// 매개 변수가 유효한 JWT 토큰이 아닌 경우 [FormatException]을 던집니다.
  static Duration? getTokenTime(String token) {
    final issuedAtDate = _getDate(token: token, claim: 'iat');
    if (issuedAtDate == null) {
      return null;
    }
    return DateTime.now().difference(issuedAtDate);
  }

  /// 만료 날짜까지 남은 시간을 반환합니다.
  ///
  /// 매개 변수가 유효한 JWT 토큰이 아닌 경우 [FormatException]을 던집니다.
  static Duration? getRemainingTime(String token) {
    final expirationDate = getExpirationDate(token);
    if (expirationDate == null) {
      return null;
    }

    return expirationDate.difference(DateTime.now());
  }
}
