/// 비밀번호는
/// 대문자 1자 이상, 소문자 1자 이상, 숫자 1자 이상, 특수 문자([@#$%^&+=]) 1자 이상이어야 합니다.
/// 최소 4자 이상의 길이여야 하며, 공백은 허용되지 않습니다.
bool isValidPassword(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString == null || inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null && inputString.isNotEmpty) {
    const pattern =
        r'^(?=.*?[A-Z])(?=(.*[a-z]){1})(?=(.*[\d]){1})(?=(.*[\W]){1})(?!.*\s).{8}$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// 문자열이 이메일인지 확인합니다.
bool isValidEmail(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString == null || inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null && inputString.isNotEmpty) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2}))$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// 문자열이 알파벳으로만 구성되어 있는지 확인합니다. (공백 없음)
bool isText(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString == null || inputString.isEmpty) && !isRequired) {
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

  if (!isRequired && (inputString == null || inputString.isEmpty)) {
    isInputStringValid = true;
  }

  if (inputString != null && inputString.isNotEmpty) {
    const pattern = r'^\d+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// 문자열이 전화 번호인지 확인합니다.
bool isValidPhone(String? inputString, {bool isRequired = false}) {
  var isInputStringValid = false;

  if ((inputString == null || inputString.isEmpty) && !isRequired) {
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
