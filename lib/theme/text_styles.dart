// 🐦 Flutter imports:
import 'package:flutter/material.dart';

extension TextStyleX on TextStyle {
  /// Font Weight
  TextStyle get plain => copyWith(fontWeight: FontWeight.normal);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get bolder => copyWith(fontWeight: FontWeight.w800);
  TextStyle get thick => copyWith(fontWeight: FontWeight.w900);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  /// Spacing
  TextStyle get tighter => copyWith(letterSpacing: LetterSpacing.tighter);
  TextStyle get tight => copyWith(letterSpacing: LetterSpacing.tight);
  TextStyle get modest => copyWith(letterSpacing: LetterSpacing.normal);
  TextStyle get wide => copyWith(letterSpacing: LetterSpacing.wide);
  TextStyle get wider => copyWith(letterSpacing: LetterSpacing.wider);

  TextStyle get snug => copyWith(height: Leading.snug);
  TextStyle get cozy => copyWith(height: Leading.normal);

  /// Font Color
  TextStyle color(Color color) => copyWith(color: color);
}

/// 이 클래스는 텍스트의 Letter Spacing을 설정하는 데 사용됩니다.
class LetterSpacing {
  LetterSpacing._();

  static const double tighter = 0.02;
  static const double tight = 0.03;
  static const double normal = 0.04;
  static const double wide = 0.05;
  static const double wider = 0.06;
}

/// 이 클래스는 텍스트의 Line Height을 설정하는 데 사용됩니다.
/// 기본적으로, 테마에 적용되는 Line Height(Leading) 값은 1.5입니다.
/// 폰트에 따라 약간의 차이가 있지만, 폰트 사이즈 * 값(%)만큼의 lineHeight가 지정됩니다.
/// 예로 들어 16px의 폰트사이즈와 normal (1.5) leading이 지정되어있다면, 실제 라인의 높이는 약 24px이 됩니다.
class Leading {
  Leading._();

  static const double tighter = 1.12;
  static const double tight = 1.25;
  static const double hugging = 1.375;
  static const double snug = 1.44;
  static const double normal = 1.50;
  static const double relaxed = 1.625;
}

class TextSize {
  TextSize._();

  static const double xxs = 10;
  static const double xs = 12;
  static const double sm = 14;
  static const double md = 16;
  static const double lg = 18;
  static const double xl = 20;
  static const double xxl = 24;
}
