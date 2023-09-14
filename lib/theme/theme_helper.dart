// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  //  The current app theme
  final _appTheme = 'primary';

// A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors(),
  };
  // A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme,
  };
  /// Returns the primary colors for the current theme.
  PrimaryColors get themeColor {
    // throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          '$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner');
    }
    // return theme from map
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData get themeData {
    final colorScheme = _supportedColorScheme[_appTheme]!;
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
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
            return appTheme.gray400;
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
            return appTheme.gray400;
          }
          return colorScheme.onSurface;
        }),
        side: const BorderSide(),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme:
        FloatingActionButtonThemeData(
          backgroundColor: colorScheme.primary,
        ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primary,
      ),
    );
  }
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(16),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(15),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(12),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(50),
          fontFamily: FontFamily.cookieRun,
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black,
          fontSize: getFontSize(24),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: getFontSize(18),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.red600,
          fontSize: getFontSize(14),
          fontFamily: FontFamily.pretendard,
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: ColorConstant.wegooli,
    primaryContainer: ColorConstant.primaryInverted,
    secondary: ColorConstant.primaryInverted,
    secondaryContainer: ColorConstant.wegooli,
    tertiary: ColorConstant.primaryInverted,
    tertiaryContainer: ColorConstant.wegooli,

    // Background colors
    background: ColorConstant.primaryInverted,

    // Surface colors
    surface: ColorConstant.primaryInverted,
    surfaceTint: ColorConstant.fontBlack,
    surfaceVariant: ColorConstant.wegooli,

    // Error colors
    error: ColorConstant.fontBlack,
    errorContainer: Color(0xFF82838D),
    onError: ColorConstant.fontErrorMessage,
    onErrorContainer: ColorConstant.fontBlack,

    // On colors(text colors)
    onBackground: ColorConstant.white,
    onInverseSurface: ColorConstant.fontErrorMessage,
    onPrimary: ColorConstant.fontBlack,
    onPrimaryContainer: ColorConstant.white,
    onSecondary: ColorConstant.white,
    onSecondaryContainer: ColorConstant.fontBlack,
    onTertiary: ColorConstant.white,
    onTertiaryContainer: ColorConstant.fontBlack,

    // Other colors
    outline: ColorConstant.fontBlack,
    outlineVariant: ColorConstant.primaryInverted,
    scrim: ColorConstant.primaryInverted,
    shadow: ColorConstant.fontBlack,

    // Inverse colors
    inversePrimary: ColorConstant.primaryInverted,
    inverseSurface: ColorConstant.fontBlack,

    // Pending colors
    onSurface: ColorConstant.white,
    onSurfaceVariant: ColorConstant.fontBlack,
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  //  Amber
  Color get amberA200 => const Color(0xFFFFE142); // #FFE142
  Color get amberA20033 => const Color(0x33FFE142);
  Color get amber100 => const Color(0xFFFFECB3); // #FFECB3
  Color get amber200 => const Color(0xFFFFE082); // #FFE082
  Color get amber300 => const Color(0xFFFFD54F); // #FFD54F
  Color get amber400 => const Color(0xFFFFCA28); // #FFCA28
  Color get amber500 => const Color(0xFFFFC107); // #FFC107
  Color get amber600 => const Color(0xFFFFB300); // #FFB300
  Color get amber700 => const Color(0xFFFFA000); // #FFA000
  Color get amber800 => const Color(0xFFFF8F00); // #FF8F00
  Color get supernova => const Color(0xFFFFCC08); // #FFCC08

  //  Black
  Color get black => const Color(0xFF000000); // #000000
  Color get black87 => const Color(0xDD000000);
  Color get black54 => const Color(0x89000000);
  Color get black45 => const Color(0x73000000);
  Color get black38 => const Color(0x60000000);
  Color get black27 => const Color(0x42000000);
  Color get black12 => const Color(0x1F000000);

  Color get blueGray30033 => const Color(0x33A4A8AF);
  Color get blueGray400 => const Color(0xFF888888); // #888888
  Color get blueGray900 => const Color(0xFF323232); // #323232

  //  DeepOrange
  Color get deepOrangeA200 => const Color(0xFFFF7034); // #FF7034

  //  DeepPurple
  Color get deepPurpleA200 => const Color(0xFF7850E9); // #7850E9

  //  Gray
  Color get gray100 => const Color(0xFFF6F7F7); // #F6F7F7
  Color get grey100 => const Color(0xFFF5F5F5); // #F5F5F5
  Color get gray200 => const Color(0xFFEEEEEE); // #EEEEEE
  Color get gray300 => const Color(0xFFE6E6E6); // #E6E6E6
  Color get gray400 => const Color(0xFFB9BCC3); // #B9BCC3
  Color get gray500 => const Color(0xFF8F9199); // #8F9199
  Color get gray50001 => const Color(0xFF91969D); // #91969D
  Color get gray50002 => const Color(0xFF91959D); // #91959D
  Color get gray50003 => const Color(0xFF8E9199); // #8E9199
  Color get gray700 => const Color(0xFF666666); // #666666
  Color get gray70001 => const Color(0xFF5D5D5D); // #5D5D5D
  Color get gray800 => const Color(0xFF474747); // #474747

  //  Green
  Color get green500 => const Color(0xFF38DD66); // #38DD66
  Color get green400 => const Color(0xFF66BB6A); // #66BB6A

  //  Red
  Color get red600 => const Color(0xFFDB4646); // #DB4646
  Color get red700 => const Color(0xFFE82121); // #E82121
}

PrimaryColors get appTheme => ThemeHelper().themeColor;
ThemeData get theme => ThemeHelper().themeData;
