// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

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

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    // throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    // return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    // throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    // return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
        visualDensity: VisualDensity.standard,
        colorScheme: colorScheme,
        textTheme: TextThemes.textTheme(colorScheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26)),
                visualDensity:
                    const VisualDensity(vertical: -4, horizontal: -4),
                padding: EdgeInsets.zero)),
        radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return colorScheme.primary;
              }
              return colorScheme.onSurface;
            }),
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4)),
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return colorScheme.primary;
              }
              return colorScheme.onSurface;
            }),
            side: BorderSide(width: 1),
            visualDensity: const VisualDensity(vertical: -4, horizontal: -4)),
        dividerTheme: DividerThemeData(
            thickness: 1, space: 1, color: appTheme.blueGray30033));
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
          fontSize: getFontSize(16),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(15),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(0.4),
          fontSize: getFontSize(12),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w400),
      displayMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(50),
          fontFamily: FontFamily.cookieRun,
          fontWeight: FontWeight.w900),
      titleMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(16),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w700),
      titleSmall: TextStyle(
          color: appTheme.red600,
          fontSize: getFontSize(14),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w700),
      labelLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: getFontSize(12),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(24),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w700));
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0xFFFFCC08),
    primaryContainer: Color(0xFFFF0000),
    secondary: Color(0xFFFF0000),
    secondaryContainer: Color(0xFFB9BCC3),
    tertiary: Color(0xFFFF0000),
    tertiaryContainer: Color(0xFFB9BCC3),
    // Background colors
    background: Color(0xFFFF0000),
    // Surface colors
    surface: Color(0xFFFF0000),
    surfaceTint: Color(0xFF222222),
    surfaceVariant: Color(0xFFB9BCC3),

    // Error colors
    error: Color(0xFF222222),
    errorContainer: Color(0xFF82838D),
    onError: Color(0xFFFFCC08),
    onErrorContainer: Color(0xFF222222),

    // On colors(text colors)
    onBackground: Color(0xFFFFFFFF),
    onInverseSurface: Color(0xFFFFCC08),
    onPrimary: Color(0xFF222222),
    onPrimaryContainer: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onSecondaryContainer: Color(0xFF222222),
    onTertiary: Color(0xFFFFFFFF),
    onTertiaryContainer: Color(0xFF222222),

    // Other colors
    outline: Color(0xFF222222),
    outlineVariant: Color(0xFFFF0000),
    scrim: Color(0xFFFF0000),
    shadow: Color(0xFF222222),

    // Inverse colors
    inversePrimary: Color(0xFFFF0000),
    inverseSurface: Color(0xFF222222),

    // Pending colors
    onSurface: Color(0xFFFFFFFF),
    onSurfaceVariant: Color(0xFF222222),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA20033 => Color(0x33FFE142);

  // Black
  Color get black900 => Color(0xFF000000);

  // BlueGray
  Color get blueGray1007f => Color(0x7FD9D9D9);
  Color get blueGray30033 => Color(0x33A4A8AF);
  Color get blueGray400 => Color(0xFF888888);
  Color get blueGray900 => Color(0xFF323232);

  // DeepOrange
  Color get deepOrangeA200 => Color(0xFFFF7034);

  // DeepPurple
  Color get deepPurpleA200 => Color(0xFF7850E9);

  // Gray
  Color get whiteSmoke => Color(0xFFF5F5F5);
  Color get gray100 => Color(0xFFF6F7F7);
  Color get gray200 => Color(0xFFF5F5F5);
  Color get gray300 => Color(0xFFE6E6E6);
  Color get gray400 => Color(0xFFCACACA);
  Color get gray500 => Color(0xFF8F9199);
  Color get gray50001 => Color(0xFF91969D);
  Color get gray50002 => Color(0xFF91959D);
  Color get gray50003 => Color(0xFF8E9199);
  Color get gray700 => Color(0xFF666666);
  Color get gray800 => Color(0xFF474747);

  // Green
  Color get green500 => Color(0xFF38DD66);

  // Red
  Color get red600 => Color(0xFFDB4646);
  Color get red700 => Color(0xFFE82121);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
