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
      backgroundColor: appTheme.amberA200.withOpacity(0.2),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(5))));
  static ButtonStyle get fillAmberA200C26 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.amberA200.withOpacity(0.2),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));
  static ButtonStyle get fillGray400C5 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(5))));
  static ButtonStyle get fillGray400C26 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));
  static ButtonStyle get fillGray400B10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(getHorizontalSize(10))),
        ),
      );
  static ButtonStyle get fillOnPrimaryC22 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.fontBlack.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      );
  static ButtonStyle get fillPrimaryC5 => ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.wegooli,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(5))));
  static ButtonStyle get fillPrimaryC26 => ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.wegooli,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));
  static ButtonStyle get fillPrimaryB10 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.wegooli,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      );
  static ButtonStyle get fillPrimaryB26 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.wegooli,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(getHorizontalSize(26))),
        ),
      );
  static ButtonStyle get fillPrimaryBL10 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.wegooli,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
      );
  static ButtonStyle get fillPrimaryBR10 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.wegooli,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
      );
  static ButtonStyle get fillWhite => ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
