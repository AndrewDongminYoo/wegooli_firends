// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';

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
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 14.fSize,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 12.fSize,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  ),
  headlineLarge: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 32.fSize,
    fontFamily: 'Jalnan',
    fontWeight: FontWeight.w700,
  ),
  headlineSmall: TextStyle(
    color: Colors.black,
    fontSize: 24.fSize,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
  ),
  labelLarge: TextStyle(
    color: const Color(0xFFDB4646),
    fontSize: 12.fSize,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
  ),
  titleMedium: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 16.fSize,
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
  ),
  titleSmall: TextStyle(
    color: lightTheme.onPrimary,
    fontSize: 14.fSize,
    fontFamily: 'Pretendard',
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
