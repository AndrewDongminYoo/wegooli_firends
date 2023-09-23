/// 올바른 비밀번호가 맞는지 확인합니다:
/// 6자에서 12자 사이여야 합니다.
/// 하나 이상의 대문자가 포함되어야 합니다.
/// 하나 이상의 소문자가 포함되어야 합니다.
/// 하나 이상의 숫자가 포함되어야 합니다.
/// 하나 이상의 특수 문자[(!@#$&*~)]가 포함되어야 합니다.
/// 공백은 허용되지 않습니다.
///
/// 정규식은 양수선행(lookaheads, [(?=...)])을 사용하여 각 조건을 개별적으로 적용합니다.
/// 따라서 6~12자 사이의 문자 유형과 길이가 혼합된 강력한 비밀번호의 유효성을 검사할 수 있습니다.
bool isValidPassword(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString.isNullOrEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString.isNotNullNorEmpty) {
    const pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,12}$';
    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString!);
  }

  return isInputStringValid;
}

/// 문자열이 이메일인지 확인합니다.
bool isValidEmail(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString.isNullOrEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString.isNotNullNorEmpty) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString!);
  }

  return isInputStringValid;
}

/// 문자열이 알파벳으로만 구성되어 있는지 확인합니다. (공백 없음)
bool isText(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString.isNullOrEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    const pattern = r'^[a-zA-Z]+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// Checks if string consist only numeric.
bool isNumeric(
  String? inputString, {
  bool isRequired = false,
}) {
  var isInputStringValid = false;

  if (!isRequired && (inputString.isNullOrEmpty)) {
    isInputStringValid = true;
  }

  if (inputString.isNotNullNorEmpty) {
    const pattern = r'^\d+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString!);
  }

  return isInputStringValid;
}

/// 문자열이 전화 번호인지 확인합니다.
bool isValidPhone(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString.isNullOrEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    if (inputString.length > 16 || inputString.length < 6) {
      return false;
    }

    const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

extension StringValidate on String? {
  bool get isNullOrEmpty => this != null || this!.isEmpty;
  bool get isNotNullNorEmpty => this is String && this!.isNotEmpty;
}
