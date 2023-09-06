// 🐦 Flutter imports:
import 'package:flutter/material.dart' as material;

// 📦 Package imports:
import 'package:color/color.dart';

/// e.g.
///   0xBB1122 -> #BB1122
/// 이 함수는 16진수 색상 코드를 `0x` 형식에서 `#`로 변환하고 대문자로 반환
///
/// @param [String] hexColor 매개변수는 `0x`로 시작하는 16진수 형식의 색상을 나타내는 문자열
/// @return [String] 입력 문자열에서 처음 나오는 `0x`를 `#`으로 바꾸고 모든 문자를 대문자로 변환하는 문자열
String hexFromColor(String hexColor) {
  return hexColor.replaceFirst('0x', '#').toUpperCase();
}

/// e.g.
///   #BB1122 -> FFBB1122
/// 이 함수는 16진수 색상 코드를 Dart 코드에서 사용할 수 있는 형식으로 변환
///
/// @param [String] hexColor - 시작 부분에 '#' 기호가 있거나 없는 16진수 형식의 색상을 나타내는 문자열입니다.
/// @return [Color] - RR은 빨간색 값, GG는 녹색 값, BB는 파란색 값, AA는 색상의 알파 값(투명도)을 나타내는 `0xRRGGBBAA` 형식의 16진수 색상 코드 문자열 표현입니다.
Color colorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceFirst('#', '');
  if (hexColor.length == 6) {
    hexColor = 'FF$hexColor';
  }
  return Color.hex('0x$hexColor');
}

/// [Material Design Color Generator](https://github.com/mbitson/mcg)
/// Constantin/Buckner logic: https://github.com/mbitson/mcg/blob/main/scripts/controllers/ColorGeneratorCtrl.js#L238
/// 이 함수는 16진수 형식의 주어진 기본 색상을 기반으로 색상 견본 맵을 생성합니다.
///
/// @param [String] primaryHex - primaryHex 매개변수는 색상 견본을 생성하는 데 사용되는 기본 색상의 16진수 값을 나타내는 문자열
/// @return `Map<int, String>` - 주어진 primaryHex 색상에서 생성된 색상 견본을 나타내는 정수 키 및 문자열 값의 맵입니다.
///   키는 50에서 900 범위의 색상 음영을 나타내고 값은 해당 색상을 16진수 형식으로 나타냅니다.
Map<int, String> swatchFromPrimaryHex(String primaryHex) {
  final primary = Color.hex(primaryHex);
  final baseLight = Color.hex('ffffff');
  final baseDark = primary * primary;
  return {
    50: _mix(baseLight, primary, 12).toHexString(),
    100: _mix(baseLight, primary, 30).toHexString(),
    200: _mix(baseLight, primary, 50).toHexString(),
    300: _mix(baseLight, primary, 70).toHexString(),
    400: _mix(baseLight, primary, 85).toHexString(),
    500: _mix(baseLight, primary, 100).toHexString(),
    600: _mix(baseDark, primary, 87).toHexString(),
    700: _mix(baseDark, primary, 70).toHexString(),
    800: _mix(baseDark, primary, 54).toHexString(),
    900: _mix(baseDark, primary, 25).toHexString(),
  };
}

/// Buckner logic: https://github.com/mbitson/mcg/blob/main/scripts/controllers/ColorGeneratorCtrl.js#L275
/// 이 함수는 16진수 형식의 주어진 기본 색상을 기반으로 강조 색상 맵을 생성
///
/// @param [String] primaryHex 매개변수 `primaryHex`는 악센트 견본을 생성하는 데 사용되는 기본 색상의 16진수 값을 나타내는 문자열.
/// @return [Map<int, String>] 16진수 문자열 형식으로 지정된 기본 색상에서 생성된 강조 색상 맵입니다.
///   지도의 키는 강조 색상 음영(100, 200, 400, 700)을 나타내고 값은 해당하는 16진수 색상 코드입니다.
Map<int, String> accentSwatchFromPrimaryHex(String primaryHex) {
  final primary = Color.hex(primaryHex);
  final baseDark = primary * primary;
  final baseTriad = primary.tetrad();
  return {
    100:
        _mix(baseDark, baseTriad[3], 15).saturate(80).lighten(48).toHexString(),
    200:
        _mix(baseDark, baseTriad[3], 15).saturate(80).lighten(36).toHexString(),
    400: _mix(baseDark, baseTriad[3], 15)
        .saturate(100)
        .lighten(31)
        .toHexString(),
    700: _mix(baseDark, baseTriad[3], 15)
        .saturate(100)
        .lighten(28)
        .toHexString(),
  };
}

extension on Color {
  // ignore: unused_element
  material.Color toMaterial(int? alpha) {
    return material.Color.fromARGB(
        (alpha ?? 255),
        (toRgbColor().r * 255 / 255).floor(),
        (toRgbColor().g * 255 / 255).floor(),
        (toRgbColor().b * 255 / 255).floor());
  }

  /// 이 함수는 접두사가 `0xFF`인 16진수 색상 값의 문자열 표현을 반환
  ///
  /// @return [String] `0xFFRRGGBB` 형식의 16진수 색상 값을 나타내는 문자열입니다.
  ///   여기서 RR, GG 및 BB는 16진수 형식의 색상의 빨강, 녹색 및 파랑 구성 요소입니다.
  ///   색상 값은 toHexColor() 메서드를 호출하고 대문자로 변환하여 얻습니다.
  String toHexString() {
    return '0xFF${toHexColor().toString().toUpperCase()}';
  }

  // https://github.com/mbitson/mcg/blob/main/scripts/controllers/ColorGeneratorCtrl.js#L221
  /// 이 함수는 두 색상을 함께 곱하고 결과 색상을 반환
  ///
  /// @param [Color] other - `other`는 현재 Color 객체와 곱해지는 Color 객체입니다.
  ///   이 메서드는 두 색상의 RGB 값을 곱한 결과를 계산하고 결과 RGB 값으로 새로운 Color 개체를 반환
  /// @return [Color] - 두 `Color` 객체의 RGB 값을 곱한 결과인 새로운 `Color` 객체를 반환합니다.
  ///   두 색상의 RGB 값을 곱한 후 255로 나눈 값을 `floor()` 메서드를 사용하여 가장 가까운 정수로 내림합니다.
  ///   결과 RGB 값은 `Color`를 사용하여 새로운 `Color` 개체를 만드는 데 사용됩니다.
  Color operator *(Color other) {
    return Color.rgb(
        (toRgbColor().r * other.toRgbColor().r / 255).floor(),
        (toRgbColor().g * other.toRgbColor().g / 255).floor(),
        (toRgbColor().b * other.toRgbColor().b / 255).floor());
  }

  /// https://github.com/bgrins/TinyColor/blob/master/tinycolor.js#L647
  /// 이 함수는 입력 색상을 기반으로 4색 구성표를 형성하는 네 가지 색상 목록을 반환
  ///
  /// @return [List<Color>] - 원래 색상과 원래 색상으로 4색 구성표를 형성하는 다른 세 가지 색상을 포함하는 네 가지 색상 목록입니다.
  ///   세 가지 추가 색상은 HSL 색상 공간에서 원래 색상의 색조 값에 90, 180 및 270도를 추가하여 생성됩니다.
  List<Color> tetrad() {
    final hsl = toHslColor();
    return [
      this,
      Color.hsl((hsl.h + 90) % 360, hsl.s, hsl.l),
      Color.hsl((hsl.h + 180) % 360, hsl.s, hsl.l),
      Color.hsl((hsl.h + 270) % 360, hsl.s, hsl.l),
    ];
  }

  /// https://github.com/bgrins/TinyColor/blob/master/tinycolor.js#L580
  /// 채도(saturation)는 색상의 강도로 설명할 수 있습니다.
  ///   주어진 비율만큼 색상을 포화시킵니다.
  ///
  /// @param [int] amount - `amount` 매개변수는 색상의 채도를 증가시키는 비율을 나타내는 정수 값입니다.
  /// 0%에서 100% 사이의 백분율 값입니다.
  ///   100%는 회색 음영이 없는 풀 컬러입니다.
  ///   50%는 50% 회색이지만 여전히 색상을 볼 수 있습니다.
  ///   0%는 완전히 회색이며 더 이상 색상을 볼 수 없습니다.
  /// @return [Color] - `saturate` 메서드는 지정된 `amount`(0%에서 100% 사이의 백분율 값)만큼 채도 값이 증가한 `Color` 개체를 반환.
  Color saturate(int amount) {
    assert(amount >= 0 && amount <= 100,
        'Amount should be a percentage value from 0% to 100%.');
    final hsl = toHslColor();
    final s = (hsl.s + amount).clamp(0, 100);
    return Color.hsl(hsl.h, s, hsl.l);
  }

  /// https://github.com/bgrins/TinyColor/blob/master/tinycolor.js#L592
  /// 명도(lighten: 색상의 밝기)는 색상에 얼마나 많은 빛을 부여할 것인지로 설명할 수 있으며, 0%는 빛이 없는 상태(어두운 상태), 50%는 50%의 빛(어둡지도 밝지도 않음), 100%는 완전한 빛을 의미합니다.
  ///
  /// @param [int] amount - amount 매개변수는 색상을 밝게 해야 하는 백분율 양을 나타내는 정수 값입니다.
  ///   0에서 100 사이의 값이어야 합니다.
  /// @return `Color` - `lighten` 메서드는 지정된 양만큼 밝기가 증가한 새 색상을 나타내는 `Color` 개체를 반환
  Color lighten(int amount) {
    assert(amount >= 0 && amount <= 100,
        'Amount should be a percentage value from 0% to 100%.');
    final hsl = toHslColor();
    final l = (hsl.l + amount).clamp(0, 100);
    return Color.hsl(hsl.h, hsl.s, l);
  }
}

/// https://github.com/bgrins/TinyColor/blob/master/tinycolor.js#L701
/// 이 함수는 두 가지 색상과 혼합되는 양을 기준으로 두 색을 혼합한 새로운 색을 반환합니다.
///
/// @param [Color] color1 - 혼합할 첫 번째 색상
/// @param [Color] color2 - 매개변수 `color2`는 `color1`과 혼합할 두 번째 색상을 나타내는 Color 객체
/// @param [int] amount - amount 매개변수는 첫 번째 색상과 혼합할 두 번째 색상의 백분율을 나타내는 정수 값입니다.
///   0에서 100 사이의 값이어야 합니다.
///   여기서 0은 첫번째 색상만 사용하고 100은 두 번째 색상만 사용함을 의미
/// @return `Color` - 제공된 양에 따라 두 가지 입력 색상의 혼합을 나타내는 Color 객체.
///   결과 색상은 혼합에서 두 번째 색상의 백분율을 결정하는 양과 함께 두 입력 색상의 혼합
Color _mix(
  Color color1,
  Color color2,
  int amount,
) {
  assert(amount >= 0 && amount <= 100,
      'Amount should be a percentage value from 0% to 100%.');
  final p = amount / 100;
  final c1 = color1.toRgbColor();
  final c2 = color2.toRgbColor();
  return Color.rgb(((c2.r - c1.r) * p + c1.r).round(),
      ((c2.g - c1.g) * p + c1.g).round(), ((c2.b - c1.b) * p + c1.b).round());
}
