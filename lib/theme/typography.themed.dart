// ignore_for_file: overridden_fields, annotate_overrides

// 🐦 Flutter imports:
import 'package:flutter/material.dart' hide Typography;

// 📦 Package imports:
import 'package:google_fonts/google_fonts.dart';

// 🌎 Project imports:
import 'custom_theme.dart';
import 'typography.dart';

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final CustomTheme theme;

  String get displayLargeFamily => 'Roboto';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57,
      );
  String get displayMediumFamily => 'Roboto';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45,
      );
  String get displaySmallFamily => 'Noto Sans KR';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 32,
      );
  String get headlineLargeFamily => 'Roboto';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32,
      );
  String get headlineMediumFamily => 'Noto Sans KR';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.primary,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );
  String get headlineSmallFamily => 'Noto Sans KR';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get titleLargeFamily => 'Roboto';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  String get titleMediumFamily => 'Noto Sans KR';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get titleSmallFamily => 'Noto Sans KR';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.textColor,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get labelLargeFamily => 'Roboto';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  String get labelMediumFamily => 'Roboto';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  String get labelSmallFamily => 'Roboto';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11,
      );
  String get bodyLargeFamily => 'Roboto';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyMediumFamily => 'Noto Sans KR';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodySmallFamily => 'Noto Sans KR';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Noto Sans KR',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}
