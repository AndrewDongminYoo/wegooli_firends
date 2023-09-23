# Credit Card Validator

```dart
/// credit_card_validator.dart
import 'package:credit_card_type_detector/models.dart';

import 'card_number.dart';
import 'security_code.dart';
import 'validation_results.dart';
import 'expiration_date.dart';

/// [CreditCardValidator]는 신용카드 번호, 만료일, 보안 코드의 유효성을 검사하는 데 도움이 됩니다.
///  사용자가 카드 정보를 입력할 때 신용 카드의 유효성을 검사하기 위한 것입니다.
///
///  신용카드의 여러 부분을 검증하는 데 사용할 수 있는 3가지 공개 함수를 구현합니다.
class CreditCardValidator {
  static final CreditCardType unknownCardType = UNKNOWN_CARD_TYPE;

  /// 카드 유형, 유효 기간 및 카드 번호 길이를 기준으로 유효성을 검사합니다.
  CCNumValidationResults validateCCNum(
    String ccNumStr, {
    bool luhnValidateUnionPay = false,
    bool ignoreLuhnValidation = false,
  }) {
    return validateCardNumber(ccNumStr.trim(),
        luhnValidateUnionPay: luhnValidateUnionPay,
        ignoreLuhnValidation: ignoreLuhnValidation);
  }

  /// 날짜가 유효한 문자열이고 향후 19년 이상 만료되지 않는지를 기준으로 카드의 만료일을 검증합니다.
  ValidationResults validateExpDate(String expDateStr) {
    return validateExpirationDate(expDateStr.trim());
  }

  /// 카드 유형과 함께 코드 길이를 기준으로 보안 코드의 유효성을 검사합니다.
  ValidationResults validateCVV(String cvv, CreditCardType cardType) {
    return validateSecurityCode(cvv.trim(), cardType);
  }
}
```

```dart
// card_number.dart
import 'dart:math';

import 'package:credit_card_type_detector/credit_card_type_detector.dart';
import 'package:credit_card_type_detector/models.dart';

import 'luhn.dart';
import 'regexs.dart';
import 'validation_results.dart';

/// 신용 카드 번호의 유효성을 검사하고 신용 카드 유형도 확인합니다.

/// 유효성 검사 실패 시 반환되는 기본 문자열
const String _DEFAULT_FAIL_MESSAGE = 'Invalid credit card number';


const String _UNKNOWN_TYPE = 'unknown';
const String _UNKNOWN_PRETTY_TYPE = 'Unknown';

final CreditCardType UNKNOWN_CARD_TYPE = CreditCardType(
  _UNKNOWN_TYPE,
  _UNKNOWN_PRETTY_TYPE,
  [],
  Set<Pattern>(),
  SecurityCode.cvv(),
);

/// 문자열로 전달된 신용카드 번호의 유효성을 검사합니다.
/// ///
/// `luhnValidateUnionPay`: 이 유니온페이 카드 번호의 루른 유효성을 검사할지 여부를 결정합니다.
///  일부 유니온페이 카드는 루른 알고리즘을 사용하지 않으므로 기본값은 확인하지 않는 것입니다.
CCNumValidationResults validateCardNumber(String ccNumStr, {
  bool luhnValidateUnionPay = false,
  bool ignoreLuhnValidation = false,
}) {
    // 공백 또는 하이픈 바꾸기
    String trimmedNumStr = ccNumStr.replaceAll(whiteSpaceRegex, '');

    // 문자열이 비어 있거나 숫자가 아닌 문자가 포함된 경우
    if (trimmedNumStr.isEmpty || trimmedNumStr.contains(nonNumberRegex)) {
      return CCNumValidationResults(
        ccType: UNKNOWN_CARD_TYPE,
        isValid: false,
        isPotentiallyValid: false,
        message: 'No input or contains non-numerical characters',
      );
    }

    List<CreditCardType> types = detectCCType(trimmedNumStr);
    // 카드 유형을 감지할 수 없지만 여전히 유효할 가능성이 있는 경우
    if (types.isEmpty) {
      return CCNumValidationResults(
        ccType: UNKNOWN_CARD_TYPE,
        isValid: false,
        isPotentiallyValid: true,
        message: _DEFAULT_FAIL_MESSAGE
      );
    }
    else if (types.length > 1) {
      return CCNumValidationResults(
        ccType: UNKNOWN_CARD_TYPE,
        isValid: false,
        isPotentiallyValid: true,
        message: 'Multiple card types detected: [${types.map((e) => e.prettyType).join(", ")}]',
      );
    }

    CreditCardType type = types[0];
    int maxCardLength = type.lengths.reduce(max);

    bool isLuhnValid = false;
    bool isPotentiallyValid = false;
    if (ignoreLuhnValidation) {
      isLuhnValid = true;
    }
    else {
        // 조건이 충족되는 경우 번호의 루른 유효성을 확인합니다(일반적으로 루른 유효성이 확인됨).
      if (types.contains(CreditCardType.unionPay()) && luhnValidateUnionPay == false) {
        isLuhnValid = true;
      } else {
        isLuhnValid = checkLuhnValidity(trimmedNumStr);
      }
    }

    String failedMessage = _DEFAULT_FAIL_MESSAGE;

    // 카드 번호 길이가 사용 가능한지 확인합니다.
    // 길이가 유효하다면 이 카드 번호의 잠재적 유효성을 결정합니다.
    // 다음과 같은 경우 카드 번호가 잠재적으로 유효합니다:
    //    번호가 유효하거나 카드 번호가 아직 완성되지 않은(작성 중인) 경우
    if (type.lengths.contains(trimmedNumStr.length)) {
      isPotentiallyValid = isLuhnValid || trimmedNumStr.length < maxCardLength;

      if (isLuhnValid && isPotentiallyValid) {
        failedMessage = ''; // 유효성 검사 실패가 아님
      }

      return CCNumValidationResults(
        ccType: type,
        isValid: isLuhnValid,
        isPotentiallyValid: isPotentiallyValid,
        message: failedMessage,
      );
    }

    bool potentialForMoreDigits = trimmedNumStr.length < maxCardLength;
    if (potentialForMoreDigits) {
      failedMessage = ''; // 더 많은 숫자를 입력할 수 있으므로 유효성 검사 실패가 아닙니다.
    }
    // 유효한 카드는 아니지만 전달된 문자열이 '불완전'한 경우 유효할 가능성이 있습니다.
    // 불완전하다는 것은 입력한 문자열이 허용된 최대 카드 길이보다 길지 않음을 의미합니다.
    return CCNumValidationResults(
      ccType: type,
      isValid: false,
      isPotentiallyValid: potentialForMoreDigits,
      message: failedMessage,
    );
}
```
