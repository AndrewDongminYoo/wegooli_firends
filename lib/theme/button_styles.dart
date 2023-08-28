// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  static ButtonStyle get fillBluegray => ElevatedButton.styleFrom(
      backgroundColor: appTheme.blueGray30033,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(17))));
  static ButtonStyle get fillGray400 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)));
  static ButtonStyle get fillGray400BL10 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getHorizontalSize(10)))));
  static ButtonStyle get fillGray400TL26 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.gray400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));

  // Filled button style
  static ButtonStyle get fillAmberA => ElevatedButton.styleFrom(
      backgroundColor: appTheme.amberA20033,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));
  static ButtonStyle get fillAmberATL5 => ElevatedButton.styleFrom(
      backgroundColor: appTheme.amberA20033,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(5))));
  static ButtonStyle get fillOnError => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.onError,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));
  static ButtonStyle get fillOnErrorBL10 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.onError,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(getHorizontalSize(10)))));
  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(0.4),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(22))));
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary.withOpacity(0.4),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(26))));
  static ButtonStyle get fillPrimaryBL10 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(getHorizontalSize(26)))));
  static ButtonStyle get fillPrimaryBR10 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(getHorizontalSize(10)))));
  static ButtonStyle get fillPrimaryTL17 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(17))));
  static ButtonStyle get fillPrimaryTL5 => ElevatedButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(5))));
  // text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0));
}
