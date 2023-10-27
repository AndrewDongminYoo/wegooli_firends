// ignore_for_file: overridden_fields

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/colors.gen.dart';
import '/gen/fonts.gen.dart';

class AppTextStyle extends TextStyle {
  AppTextStyle({
    this.color = AppColors.fontBlack,
    this.decoration = TextDecoration.none,
    this.fontFamily = FontFamily.pretendard,
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.lineHeight,
    this.letterSpacing,
    this.textBaseline = TextBaseline.alphabetic,
    this.overflow,
  }) : super(
          color: color,
          decoration: decoration,
          fontFamily: fontFamily,
          fontSize: (fontSize ?? TextSize.md).sp,
          fontWeight: fontWeight,
          textBaseline: textBaseline,
          height: lineHeight,
          letterSpacing: letterSpacing,
          overflow: overflow,
        );

  /// An [AppTextStyle] with default properties.
  static AppTextStyle basic = AppTextStyle();

  /// [TextStyle]의 height 속성 (의도 명확하게 lien height)
  final double? lineHeight;
  @override
  final Color color;
  @override
  final TextDecoration? decoration;
  @override
  final String fontFamily;
  @override
  final double? fontSize;
  @override
  final FontWeight fontWeight;
  @override
  final double? letterSpacing;
  @override
  final TextBaseline? textBaseline;
  @override
  final TextOverflow? overflow;
}

abstract class AppTextStyles {
  static TextStyle textInputBigTitle = AppTextStyle(
    fontSize: TextSize.xxl,
    fontWeight: FontWeight.bold,
    lineHeight: Leading.snug,
    letterSpacing: LetterSpacing.wide,
  );
  static TextStyle textInputTitleButton = AppTextStyle(
    fontSize: TextSize.lg,
    fontWeight: FontWeight.bold,
    lineHeight: Leading.snug,
    letterSpacing: LetterSpacing.normal,
  );
  static TextStyle textInputLabel = AppTextStyle(
    fontWeight: FontWeight.bold,
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputPlaceholderText = AppTextStyle(
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputChatting = AppTextStyle(
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputHelperText = AppTextStyle(
    fontSize: TextSize.xs,
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tighter,
  );
  static TextStyle textInputFooter = AppTextStyle(
    fontSize: TextSize.xxs,
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tighter,
    fontFamily: FontFamily.inter,
  );
  static TextStyle textInputNoticeTitle = AppTextStyle(
    fontSize: TextSize.sm,
    fontWeight: FontWeight.w500,
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputTitle = AppTextStyle(
    fontWeight: FontWeight.bold,
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputPlaceholder = AppTextStyle(
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputButton = AppTextStyle(
    fontSize: TextSize.sm,
    fontWeight: FontWeight.bold,
    lineHeight: Leading.snug,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputDefault = AppTextStyle(
    fontSize: TextSize.sm,
    lineHeight: Leading.normal,
    letterSpacing: LetterSpacing.tight,
  );
  static TextStyle textInputLabel12 = AppTextStyle(
    fontSize: TextSize.xs,
    lineHeight: Leading.tight,
    letterSpacing: LetterSpacing.tighter,
  );
  static TextStyle textInputTextInput = AppTextStyle(
    fontSize: TextSize.xxs,
    lineHeight: Leading.hugging,
    letterSpacing: LetterSpacing.tighter,
  );
}

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
  TextStyle tint(Color color) => copyWith(color: color);
}

/// 이 클래스는 텍스트의 Letter Spacing을 설정하는 데 사용됩니다.
class LetterSpacing {
  LetterSpacing._();

  /// letterSpacing: 0.02
  static const double tighter = 0.02;

  /// letterSpacing: 0.03
  static const double tight = 0.03;

  /// letterSpacing: 0.04
  static const double normal = 0.04;

  /// letterSpacing: 0.05
  static const double wide = 0.05;

  /// letterSpacing: 0.06
  static const double wider = 0.06;
}

/// 이 클래스는 텍스트의 Line Height을 설정하는 데 사용됩니다.
/// 기본적으로, 테마에 적용되는 Line Height(Leading) 값은 1.5입니다.
/// 폰트에 따라 약간의 차이가 있지만, 폰트 사이즈 * 값(%)만큼의 lineHeight가 지정됩니다.
/// 예로 들어 16px의 폰트사이즈와 normal (1.5) leading이 지정되어있다면, 실제 라인의 높이는 약 24px이 됩니다.
class Leading {
  Leading._();

  /// lineHeight: 1.12
  static const double tighter = 1.12;

  /// lineHeight: 1.25
  static const double tight = 1.25;

  /// lineHeight: 1.375
  static const double hugging = 1.375;

  /// lineHeight: 1.44
  static const double snug = 1.44;

  /// lineHeight: 1.50
  static const double normal = 1.50;

  /// lineHeight: 1.625
  static const double relaxed = 1.625;
}

class TextSize {
  TextSize._();

  /// fontSize: 10
  static const double xxs = 10;

  /// fontSize: 12
  static const double xs = 12;

  /// fontSize: 14
  static const double sm = 14;

  /// fontSize: 16
  static const double md = 16;

  /// fontSize: 18
  static const double lg = 18;

  /// fontSize: 20
  static const double xl = 20;

  /// fontSize: 24
  static const double xxl = 24;
}
