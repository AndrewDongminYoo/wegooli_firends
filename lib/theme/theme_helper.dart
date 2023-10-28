// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';
import 'button_styles.dart';
import 'text_styles.dart';

const ColorScheme lightTheme = ColorScheme.light(
  // Primary colors
  primary: Color(0xFFFFE041), // wegooli

  primaryContainer: Color(0xFF3A3C42), // tuna
  secondary: Color(0xFF3A3C42), // tuna
  secondaryContainer: Color(0xFFF8C788), // manhattan
  tertiary: Color(0xFF3A3C42), // tuna
  tertiaryContainer: Color(0xFFF8C788), // manhattan

  // Background colors
  background: Color(0xFF3A3C42), // tuna

  // Surface colors
  surface: Color(0xFF3A3C42), // tuna
  surfaceTint: Color(0xFF222222), // mine-shaft
  surfaceVariant: Color(0xFFF8C788), // manhattan

  // Error colors
  error: Color(0xFF222222), // mine-shaft
  errorContainer: Color(0xFFFF7034), // burning-orange
  onError: Color(0xFFF8C788), // manhattan
  onErrorContainer: Color(0xFF23211F), // dune

  // On colors(text colors)
  onBackground: Color(0xFFFFFFFF), // white
  onInverseSurface: Color(0xFFF8C788), // manhattan
  onPrimary: Color(0xFF222222), // mine-shaft
  onPrimaryContainer: Color(0xFFFFFFFF), // white
  onSecondary: Color(0xFFFFFFFF), // white
  onSecondaryContainer: Color(0xFF222222), // mine-shaft
  onTertiary: Color(0xFFFFFFFF), // white
  onTertiaryContainer: Color(0xFF222222), // mine-shaft

  // Other colors
  outline: Color(0xFF222222), // mine-shaft
  outlineVariant: Color(0xFF3A3C42), // tuna
  scrim: Color(0xFF3A3C42), // tuna
  shadow: Color(0xFF222222), // mine-shaft

  // Inverse colors
  inversePrimary: Color(0xFF3A3C42), // tuna
  inverseSurface: Color(0xFF222222), // mine-shaft

  // Pending colors
  onSurface: Color(0xFFFFFFFF), // white
  onSurfaceVariant: Color(0xFF222222), // mine-shaft
);

final textTheme = TextTheme(
  bodyLarge: AppTextStyle(
    color: lightTheme.onPrimary,
    fontSize: TextSize.md,
  ),
  bodyMedium: AppTextStyle(
    color: lightTheme.onPrimary,
    fontSize: TextSize.sm,
  ),
  bodySmall: AppTextStyle(
    color: lightTheme.onPrimary,
    fontSize: TextSize.xs,
  ),
  headlineLarge: AppTextStyle(
    color: lightTheme.onPrimary,
    fontSize: 32,
    fontFamily: FontFamily.jalnan,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: AppTextStyle(
    color: Colors.black,
    fontSize: TextSize.xxl,
    fontWeight: FontWeight.bold,
  ),
  labelLarge: AppTextStyle(
    color: Palette.red600,
    fontSize: TextSize.xs,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: AppTextStyle(
    color: lightTheme.onPrimary,
    fontSize: TextSize.md,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: AppTextStyle(
    color: lightTheme.onPrimary,
    fontSize: TextSize.sm,
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
          color: Palette.blueGray300,
          width: 1.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.w),
        ),
        visualDensity: buttonDensity,
        padding: EdgeInsets.zero,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.w),
        ),
        visualDensity: buttonDensity,
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
      visualDensity: buttonDensity,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightTheme.primary,
      foregroundColor: Colors.black,
      enableFeedback: true,
      sizeConstraints: BoxConstraints(minHeight: 70.h, minWidth: 70.w),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      space: 1,
      color: Palette.blueGray300,
    ),
  );
}

/// 기본 테마에 대한 사용자 지정 색상이 포함된 클래스입니다.
class Palette {
  static const Color fontBlack = Color(0xFF222222); // mine-shaft
  static const Color fontBlack66 = Color(0x66222222); // mine-shaft, 40% op
  static const Color fontGray = Color(0xFF5D5D5D); // scorpion
  static const Color shadow = Color(0x18000000);

  static const Color blueGray200 = Color(0xFFB0B2BC); // bombay
  static const Color blueGray300 = Color(0x33A4A8AF); // gray-chateau, 20% op
  static const Color blueGray400 = Color(0xFF868686); // gray
  static const Color gray100 = Color(0xFFF3F3F6); // athens-gray
  static const Color gray400 = Color(0xFFB9BCC3); // french-gray
  static const Color gray500 = Color(0xFF8F9199); // manatee
  static const Color gray700 = Color(0xFF666666); // dove-gray
  static const Color dustGray = Color(0xFF979797); // dusty-gray
  static const Color waterloo = Color(0xFF82838D); // waterloo

  static const Color deepPurpleA200 = Color(0xFF7850E9); // royal-blue
  static const Color red600 = Color(0xFFDB4646); // valencia

  // splash screen gradient
  static const Color sunglow = Color(0xFFFFDC27); // sunglow
  static const Color parisDaisy = Color(0xFFFFF96D); // paris-daisy

  // primary buttons
  static const Color button1 = Color(0xFFFFE142); // bright-sun
  static const Color button2 = Color(0xFF464A70); // fiord
  static const Color pressed = Color(0xFFFFD600); // gold
  static const Color disabled = Color(0xFFFFF9D9); // scotch-mist
  static const Color inverted = Color(0xFFFFFFFF); // white

  // seperation bar
  static const Color separator = Color(0xFFF6F7F7); // black-haze

  // car status
  static const Color pass = Color(0xFF38DD66); // shamrock
  static const Color warn = Color(0xFFFF9A3D); // neon-carrot
  static const Color error = Color(0xFFE92222); // alizarin-crimson
}
