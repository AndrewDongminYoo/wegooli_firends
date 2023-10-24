/// 올바른 비밀번호가 맞는지 확인합니다:
/// 6자에서 12자 사이여야 합니다.
/// 하나 이상의 영문자가 포함되어야 합니다.
/// 하나 이상의 숫자가 포함되어야 합니다.
/// 하나 이상의 특수 문자[(!@#$&*~)]가 포함되어야 합니다.
/// 공백은 허용되지 않습니다.
///
/// 정규식은 양수선행(lookaheads, [(?=...)])을 사용하여 각 조건을 개별적으로 적용합니다.
/// 따라서 6~12자 사이의 문자 유형과 길이가 혼합된 강력한 비밀번호의 유효성을 검사할 수 있습니다.
bool isValidPassword(String? input, {bool required = false}) {
  var isValid = false;
  if ((input.isNullOrEmpty) && !required) {
    isValid = true;
  }
  if (input.isNotNullNorEmpty) {
    return input.matches(r'^(?=.*?[a-zA-Z])(?=.*?\d)(?=.*?[!@#\$&*~]).{6,12}$');
  }
  return isValid;
}

/// 문자열이 이메일인지 확인합니다.
bool isValidEmail(String? input, {bool isRequired = false}) {
  var isValid = false;
  if ((input.isNullOrEmpty) && !isRequired) {
    isValid = true;
  }
  if (input.isNotNullNorEmpty) {
    return input.matches(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$');
  }
  return isValid;
}

/// 문자열이 알파벳으로만 구성되어 있는지 확인합니다. (공백 없음)
bool isText(String? input, {bool isRequired = false}) {
  var isValid = false;
  if ((input.isNullOrEmpty) && !isRequired) {
    isValid = true;
  }
  if (input != null) {
    return input.matches(r'^[a-zA-Z]+$');
  }
  return isValid;
}

/// 문자열이 숫자로만 구성되어 있는지 확인합니다.
bool isNumeric(
  String? input, {
  bool isRequired = false,
}) {
  var isValid = false;
  if (!isRequired && (input.isNullOrEmpty)) {
    isValid = true;
  }
  if (input.isNotNullNorEmpty) {
    return input.matches(r'^\d+$');
  }
  return isValid;
}

/// 문자열이 전화 번호인지 확인합니다.
bool isValidPhone(String? input, {bool isRequired = false}) {
  var isValid = false;
  if ((input.isNullOrEmpty) && !isRequired) {
    isValid = true;
  }
  if (input != null) {
    if (input.length > 16 || input.length < 6) {
      return false;
    }
    return input.matches(r'^01([0-1|6-9]?)-?(\d{3,4})-?(\d{4})$');
  }
  return isValid;
}

/// 날짜 문자열을 가져와 구문 분석하고 나이를 계산한 다음 나이를 25와 비교하여 25세 이상인지 여부를 판단합니다.
/// 날짜 구문 분석, 나이 계산, 단순 비교를 통해 25세 연령 요건을 충족하는지 여부를 판단 가능
String? isOlderThan25Years(String? birth) {
  /// 먼저 입력된 생년월일 문자열이 null이 아니며 6자 길이인지 확인
  if (birth == null || birth.length != 6) {
    return '생년월일 6자리를 입력해주세요.';
  } else if (!birth.matches(r'\d\d[0-1]\d[0-3]\d')) {
    return '생년월일 양식이 올바르지 않습니다.';
  }

  /// 그런 다음 문자열을 구문 분석하여 연도, 월, 일 정수 값을 추출합니다.
  /// 날짜 시간 객체는 구문 분석된 연도, 월, 일로 구성됩니다.
  final today = DateTime.now();
  final year = int.parse(birth.substring(0, 2));

  /// 연도는 현재 연도를 보고 2자리 연도가 1900년대인지 2000년대인지 확인하여 계산됩니다.
  final base = (today.year % 100) > year ? 2000 : 1900;
  final month = int.parse(birth.substring(2, 4));
  final day = int.parse(birth.substring(4, 6));
  final date = DateTime(base + year, month, day);

  /// 나이는 현재 연도와 출생 연도의 차이를 취하여 계산합니다.
  /// 또한 오늘의 월/일이 출생 월/일보다 앞서는지 확인하며, 이 경우 올해 생일이 아직 되지 않았다는 점을 고려하여 나이에서 1을 뺍니다.
  /// 마지막으로 계산된 나이를 25세와 비교하여 25세보다 크거나 같으면 참을 반환하고 25세보다 작으면 거짓을 반환합니다.
  var age = today.year - date.year;
  if (today.month < date.month ||
      (today.month == date.month && today.day < date.day)) {
    age--;
  }

  if (age < 26) {
    return '만 26세 미만은 가입이 제한됩니다.';
  } else if (age > 99) {
    return '만 26세 이상 99세 미만 가입이 가능합니다.';
  } else {
    return null;
  }
}

extension StringValidate on String? {
  bool get isNullOrEmpty => this == null || this == '';
  bool get isNotNullNorEmpty => this is String && this!.isNotEmpty;

  /// 문자열이 특정 패턴과 일치하는지 체크
  bool matches(String pattern) =>
      this != null && RegExp(pattern).hasMatch(this!);
}

extension BoolValidate on bool {
  bool get isFalse => this == false;
  bool get isTrue => this == true;
}
