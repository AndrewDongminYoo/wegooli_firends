// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/fonts.gen.dart';

const ColorScheme lightTheme = ColorScheme.light(
  // Primary colors
  primary: Color(0xFFFFE041),
  primaryContainer: Color(0xFF3A3C42),
  secondary: Color(0xFF3A3C42),
  secondaryContainer: Color(0xFFF8C788),
  tertiary: Color(0xFF3A3C42),
  tertiaryContainer: Color(0xFFF8C788),

  // Background colors
  background: Color(0xFF3A3C42),

  // Surface colors
  surface: Color(0xFF3A3C42),
  surfaceTint: Color(0xFF222222),
  surfaceVariant: Color(0xFFF8C788),

  // Error colors
  error: Color(0xFF222222),
  errorContainer: Color(0xFFFF7034),
  onError: Color(0xFFF8C788),
  onErrorContainer: Color(0xFF23211F),

  // On colors(text colors)
  onBackground: Color(0xFFFFFFFF),
  onInverseSurface: Color(0xFFF8C788),
  onPrimary: Color(0xFF222222),
  onPrimaryContainer: Color(0xFFFFFFFF),
  onSecondary: Color(0xFFFFFFFF),
  onSecondaryContainer: Color(0xFF222222),
  onTertiary: Color(0xFFFFFFFF),
  onTertiaryContainer: Color(0xFF222222),

  // Other colors
  outline: Color(0xFF222222),
  outlineVariant: Color(0xFF3A3C42),
  scrim: Color(0xFF3A3C42),
  shadow: Color(0xFF222222),

  // Inverse colors
  inversePrimary: Color(0xFF3A3C42),
  inverseSurface: Color(0xFF222222),

  // Pending colors
  onSurface: Color(0xFFFFFFFF),
  onSurfaceVariant: Color(0xFF222222),
);

final TextTheme textTheme = TextTheme(
  bodyLarge: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 16.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 14.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 12.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w400,
  ),
  headlineLarge: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 32.fSize,
    fontFamily: FontFamily.jalnan,
    fontWeight: FontWeight.w700,
  ),
  headlineSmall: TextStyle(
    color: Colors.black,
    fontSize: 24.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w700,
  ),
  labelLarge: TextStyle(
    color: const Color(0xFFDB4646),
    fontSize: 12.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 16.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w700,
  ),
  titleSmall: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 14.fSize,
    fontFamily: FontFamily.pretendard,
    fontWeight: FontWeight.w500,
  ),
);
ThemeData get theme {
  return ThemeData(
    visualDensity: VisualDensity.standard,
    colorScheme: lightTheme,
    textTheme: textTheme,
    scaffoldBackgroundColor: lightTheme.onPrimaryContainer,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: const Color(0x33A4A8AF),
          width: 1.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        padding: EdgeInsets.zero,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightTheme.primary,
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
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return lightTheme.primary;
        }
        return lightTheme.onSurface;
      }),
      visualDensity: const VisualDensity(
        vertical: -4,
        horizontal: -4,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightTheme.primary,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      space: 1,
      color: Color(0x33A4A8AF),
    ),
  );
}

/// Class containing custom colors for a primary theme.
class Palette {
  static const Color fontBlack = Color(0xFF222222); // #222222
  static const Color fontGray = Color(0xFF5D5D5D); // #5D5D5D

  static const Color blueGray100 = Color(0xFFBABCC4); // #BABCC4
  static const Color blueGray200 = Color(0xFFB0B2BC); // #B0B2BC
  static const Color blueGray300 = Color(0x33A4A8AF); // #33A4A8AF
  static const Color blueGray400 = Color(0xFF868686); // #868686
  static const Color blueGray900 = Color(0xFF323232); // #323232
  static const Color gray100 = Color(0xFFF3F3F6); // #F3F3F6
  static const Color gray400 = Color(0xFFB9BCC3); // #B9BCC3
  static const Color gray500 = Color(0xFF8F9199); // #8F9199
  static const Color gray700 = Color(0xFF666666); // #666666

  static const Color dustGray = Color(0xFF979797); // #979797
  static const Color dropdown = Color(0xFF91969D); // #91969D
  static const Color waterloo = Color(0xFF82838D); // #82838D

  static const Color deepPurpleA200 = Color(0xFF7850E9); // #7850E9
  static const Color red600 = Color(0xFFDB4646); // #DB4646
}
