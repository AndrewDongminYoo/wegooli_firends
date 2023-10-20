// ignore_for_file: overridden_fields

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/colors.gen.dart';
import '/gen/fonts.gen.dart';
import '/theme/text_styles.dart';

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
  }) : super(
            color: color,
            decoration: decoration,
            fontFamily: fontFamily,
            fontSize: fontSize?.fSize ?? TextSize.md.fSize,
            fontWeight: fontWeight,
            textBaseline: textBaseline,
            height: lineHeight,
            letterSpacing: letterSpacing);

  /// An [AppTextStyle] with default properties.
  static AppTextStyle basic = AppTextStyle();

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
  final double? lineHeight;
  @override
  final double? letterSpacing;
  @override
  final TextBaseline? textBaseline;
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
