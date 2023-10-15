import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray700,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray30033,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 12.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 50.fSize,
          fontFamily: 'CookieRun',
          fontWeight: FontWeight.w900,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 32.fSize,
          fontFamily: 'Jalnan',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 26.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 12.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 20.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 14.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFE041),
    primaryContainer: Color(0XFF3A3C42),
    secondary: Color(0XFF3A3C42),
    secondaryContainer: Color(0XFFF8C788),
    tertiary: Color(0XFF3A3C42),
    tertiaryContainer: Color(0XFFF8C788),

    // Background colors
    background: Color(0XFF3A3C42),

    // Surface colors
    surface: Color(0XFF3A3C42),
    surfaceTint: Color(0XFF222222),
    surfaceVariant: Color(0XFFF8C788),

    // Error colors
    error: Color(0XFF222222),
    errorContainer: Color(0XFF82838D),
    onError: Color(0XFFC4C4C4),
    onErrorContainer: Color(0XFF23211F),

    // On colors(text colors)
    onBackground: Color(0XFFFFFFFF),
    onInverseSurface: Color(0XFFC4C4C4),
    onPrimary: Color(0XFF222222),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondary: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF222222),
    onTertiary: Color(0XFFFFFFFF),
    onTertiaryContainer: Color(0XFF222222),

    // Other colors
    outline: Color(0XFF222222),
    outlineVariant: Color(0XFF3A3C42),
    scrim: Color(0XFF3A3C42),
    shadow: Color(0XFF222222),

    // Inverse colors
    inversePrimary: Color(0XFF3A3C42),
    inverseSurface: Color(0XFF222222),

    // Pending colors
    onSurface: Color(0XFFFFFFFF),
    onSurfaceVariant: Color(0XFF222222),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA20033 => Color(0XFFFFFF7C);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGrayf
  Color get blueGray1007f => Color(0X7FD9D9D9);

  // BlueGray
  Color get blueGray200 => Color(0XFFB0B2BC);
  Color get blueGray300 => Color(0XFF8A91A8);
  Color get blueGray30033 => Color(0X33A4A8AF);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFECF0F0);
  Color get blueGray600 => Color(0XFF4D598D);
  Color get blueGray700 => Color(0XFF464A70);
  Color get blueGray900 => Color(0XFF323232);
  Color get blueGray90001 => Color(0XFF333333);

  // DeepOrange
  Color get deepOrangeA200 => Color(0XFFFF7034);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF7850E9);
  Color get deepPurpleA20001 => Color(0XFF7B67F4);
  Color get deepPurpleA20002 => Color(0XFF6154F7);
  Color get deepPurpleA20003 => Color(0XFF7A66F4);

  // Gray
  Color get gray100 => Color(0XFFF3F3F6);
  Color get gray10001 => Color(0XFFF3F3F3);
  Color get gray10002 => Color(0XFFF6F7F7);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray20001 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray400 => Color(0XFFCACACA);
  Color get gray40001 => Color(0XFFB9BCC3);
  Color get gray40002 => Color(0XFFBDBDBD);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray500 => Color(0XFF8F9199);
  Color get gray50001 => Color(0XFF91969D);
  Color get gray50002 => Color(0XFF979797);
  Color get gray50003 => Color(0XFF91959D);
  Color get gray50004 => Color(0XFF8E9199);
  Color get gray600 => Color(0XFF858585);
  Color get gray60001 => Color(0XFF686A71);
  Color get gray700 => Color(0XFF666666);
  Color get gray70001 => Color(0XFF5D5D5D);
  Color get gray70002 => Color(0XFF5B5B5B);
  Color get gray800 => Color(0XFF474747);

  // Green
  Color get green500 => Color(0XFF38DD66);
  Color get greenA400 => Color(0XFF1DD479);
  Color get greenA700 => Color(0XFF1DF433);

  // Indigo
  Color get indigo50 => Color(0XFFE2E8F6);

  // LightBlue
  Color get lightBlue50 => Color(0XFFE5FAFF);

  // Red
  Color get red600 => Color(0XFFF41D1D);
  Color get red60001 => Color(0XFFDB4646);
  Color get red700 => Color(0XFFE82121);
  Color get redA700 => Color(0XFFFF0000);

  // Yellow
  Color get yellow100 => Color(0XFFFFF2CF);
  Color get yellow300 => Color(0XFFFFF96D);
  Color get yellow600 => Color(0XFFFFDC27);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
