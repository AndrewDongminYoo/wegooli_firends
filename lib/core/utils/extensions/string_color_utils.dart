// 🐦 Flutter imports:
import 'package:flutter/painting.dart';

/// ColorUtils 클래스는 색상 작업을 위한 유틸리티 메서드를 제공
/// 'ColorUtils' 클래스는 문자열에서 색상 값을 생성하는 방법을 제공하므로 개발자는 입력 데이터를 기반으로 시각적으로 구별되는 색상을 만들 수 있습니다.
/// 이는 사용자 생성 콘텐츠나 데이터를 기반으로 UI 요소를 동적으로 색칠하는 등 다양한 목적에 유용할 수 있습니다.
class ColorUtils {
  /// 이 클래스는 static 메소드만 가지고 있는 플라이웨이트 패턴으로 만들어져 있습니다.
  /// 이 떄문에 클래스를 인스턴스로 만들지 않고 항상 `ColorUtils.stringToColor('000000')`와 같이 호출하면 됩니다.
  /// 이를 위해 클래스의 인스턴스화를 방지하는 비공개 생성자.
  ColorUtils._();

  /// 주어진 입력 문자열(6~8자의 문자열) 값에 대한 해시값을 계산합니다.
  /// Dart에서 String 클래스의 멤버인 'Runes'는 일련의 유니코드 코드 포인트를 나타내는 반복 가능한 유형입니다.
  /// 이를 통해 문자열의 개별 유니코드 문자(코드 포인트로 인코딩됨)로 작업할 수 있습니다.
  /// 유니코드는 다양한 쓰기 시스템 및 언어에서 훨씬 더 넓은 범위의 문자를 지원하므로 이는 기본 ASCII 범위 밖의 문자를 처리할 때 특히 유용합니다.
  /// 'Rune'을 사용하면 이러한 문자를 효과적으로 반복하고 조작할 수 있습니다.
  /// 문자열의 각 문자를 처리하고 유니코드 코드 포인트를 기반으로 고유한 해시 값을 누적합니다.
  /// Args:
  ///  [String] value - 색상을 생성할 입력 문자열입니다.
  ///
  /// Returns:
  ///  [int] - 색상 표현을 위해 계산된 해시 값입니다.
  static int _hash(String value) {
    int hash = 0;
    value.runes.forEach((code) {
      hash = code + ((hash << 5) - hash);
    });
    return hash;
  }

  /// 문자열을 Dart의 Color 객체로 변환합니다.
  /// '_hash' 메서드를 호출하여 입력 문자열을 기반으로 해시를 생성한 다음 해시 값을 Color 객체로 변환함으로써 이를 수행합니다.
  /// 이 함수는 입력 문자열의 해시를 기반으로 색상 값을 생성합니다.
  ///
  /// Args:
  ///  [String] value - 색상을 생성할 입력 문자열입니다.
  ///
  /// Returns:
  ///  `Color(toHexInteger(value))` - 생성된 색상 값에 해당하는 Color 객체입니다.
  static Color stringToColor(String value) {
    return Color(toHexInteger(value));
  }

  /// 문자열을 16진수 색상 표현으로 변환합니다.
  /// _hash 메서드를 사용하여 해시를 계산한 다음 해시 값을 16진수 문자열로 변환합니다.
  /// 이 메서드는 입력 문자열의 해시를 기반으로 16진수 색상 값을 생성합니다.
  ///
  /// Args:
  ///  [String] value - 16진수 색상 표현을 생성할 입력 문자열입니다.
  ///
  /// Returns:
  ///  [String] - 16진수 색상 값을 나타내는 문자열입니다.
  static String toHexString(String value) {
    String c = (_hash(value) & 0x00FFFFFF).toRadixString(16).toUpperCase();
    return "0xFF00000".substring(0, 10 - c.length) + c;
  }

  /// 문자열을 정수 색상 값으로 변환합니다.
  ///
  /// 이 메서드는 입력 문자열의 해시를 기반으로 정수 색상 값을 생성합니다.
  ///
  /// Args:
  /// [String] value - 정수 색상 값을 생성할 입력 문자열입니다.
  ///
  /// Returns:
  /// [String] - 색상 값을 나타내는 정수입니다.
  static int toHexInteger(String value) {
    String c = (_hash(value) & 0x00FFFFFF).toRadixString(16).toUpperCase();
    String hex = "FF00000".substring(0, 8 - c.length) + c;
    return int.parse(hex, radix: 16);
  }
}
