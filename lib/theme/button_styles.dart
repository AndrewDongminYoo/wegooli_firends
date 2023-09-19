// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
/// C: circular radius
/// BL: bottomLeft, BR: bottomRight, B: bottom, T: Top, L: Left, R: Right
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmberA200C5 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.amberA20033,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)));
  static ButtonStyle get fillAmberA200C26 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.amberA20033,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.h)));
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
      backgroundColor: appTheme.blueGray30033,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.h)));
  static ButtonStyle get fillBlueGray8 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.blueGray700,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)));
  static ButtonStyle get fillGray400C5 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)));
  static ButtonStyle get fillGray400C26 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.h)));
  static ButtonStyle get fillGray400B10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.h)),
        ),
      );
  static ButtonStyle get fillGray8 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)));
  static ButtonStyle get fillGray1 =>
      ElevatedButton.styleFrom(backgroundColor: appTheme.gray100);
  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(0.4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.h)));
  static ButtonStyle get fillPrimaryBL10 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.h))));
  static ButtonStyle get fillPrimaryBR10 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.h))));
  static ButtonStyle get fillPrimary17 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.h)));
  static ButtonStyle get fillPrimary5 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)));
  static ButtonStyle get fillPrimary8 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)));
  static ButtonStyle get fillPrimary1 =>
      ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.primary);
  static ButtonStyle get fillSecondaryContainer => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.secondaryContainer);
  static ButtonStyle get fillOnPrimaryC22 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.fontBlack.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      );
  static ButtonStyle get fillPrimaryC5 => ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.wegooli,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)));
  static ButtonStyle get fillPrimaryC26 => ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.wegooli,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.h)));
  static ButtonStyle get fillPrimaryB10 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.wegooli,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      );
  static ButtonStyle get fillPrimaryB26 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.wegooli,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(26.h)),
        ),
      );
  static ButtonStyle get fillWhite => ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      );
  // Outline button style
  static ButtonStyle get outlineBlueGray8 => OutlinedButton.styleFrom(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      side: BorderSide(color: appTheme.blueGray200),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)));
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      side: BorderSide(color: appTheme.gray700),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)));
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
