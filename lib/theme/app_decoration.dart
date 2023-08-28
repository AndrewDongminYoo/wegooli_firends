// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA =>
      BoxDecoration(color: appTheme.amberA20033);
  static BoxDecoration get fillBluegray =>
      BoxDecoration(color: appTheme.blueGray30033);
  static BoxDecoration get fillOnPrimary =>
      BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(0.4));
  static BoxDecoration get fillOnPrimaryContainer =>
      BoxDecoration(color: theme.colorScheme.onPrimaryContainer);
  static BoxDecoration get fillOnSecondary =>
      BoxDecoration(color: theme.colorScheme.onSecondary);
  static BoxDecoration get fillPrimary =>
      BoxDecoration(color: theme.colorScheme.primary);
  static BoxDecoration get fillWhiteSmoke =>
      BoxDecoration(color: appTheme.whiteSmoke);
  static BoxDecoration get fillDeepPurple =>
      BoxDecoration(color: appTheme.deepPurpleA200);
  static BoxDecoration get fillDeepOrange =>
      BoxDecoration(color: appTheme.deepOrangeA200);
  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          border: Border.all(
              color: appTheme.blueGray30033, width: getHorizontalSize(1)),
          boxShadow: [
            BoxShadow(
                color: appTheme.black900.withOpacity(0.1),
                spreadRadius: getHorizontalSize(2),
                blurRadius: getHorizontalSize(2),
                offset: Offset(2, 2)),
          ]);

  // Shadow decorations
  static BoxDecoration get shadow =>
      BoxDecoration(color: theme.colorScheme.onPrimaryContainer, boxShadow: [
        BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(2, 2)),
      ]);
  static BoxDecoration get outline => BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer,
      border: Border.all(color: appTheme.gray400, width: getHorizontalSize(1)));
  static BoxDecoration get outlineBlack =>
      BoxDecoration(color: theme.colorScheme.primary, boxShadow: [
        BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(2, 2)),
      ]);
  static BoxDecoration get outlineBluegray30033 => BoxDecoration(
      border: Border(
          bottom: BorderSide(
              color: appTheme.blueGray30033, width: getHorizontalSize(1))));
  static BoxDecoration get outlineBluegray300331 => BoxDecoration(
      border: Border(
          top: BorderSide(
              color: appTheme.blueGray30033, width: getHorizontalSize(1))));
  static BoxDecoration get outlineBluegray300332 => BoxDecoration(
      border: Border.all(
          color: appTheme.blueGray30033, width: getHorizontalSize(1)));
  static BoxDecoration get outlineOnError => BoxDecoration(
      border: Border.all(
          color: theme.colorScheme.onError, width: getHorizontalSize(1)));
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder2 =>
      BorderRadius.circular(getHorizontalSize(2));
  static BorderRadius get roundedBorder5 =>
      BorderRadius.circular(getHorizontalSize(5));
  static BorderRadius get roundedBorder10 =>
      BorderRadius.circular(getHorizontalSize(10));
  static BorderRadius get roundedBorder15 =>
      BorderRadius.circular(getHorizontalSize(15));
  // Circle borders
  static BorderRadius get circleBorder25 =>
      BorderRadius.circular(getHorizontalSize(25));
  static BorderRadius get circleBorder33 =>
      BorderRadius.circular(getHorizontalSize(33));
  static BorderRadius get circleBorder40 =>
      BorderRadius.circular(getHorizontalSize(40));
  static BorderRadius get circleBorder60 =>
      BorderRadius.circular(getHorizontalSize(60));
  static BorderRadius get circleBorder65 =>
      BorderRadius.circular(getHorizontalSize(65));
  // Custom borders
  static BorderRadius get customBorderBL10 =>
      BorderRadius.vertical(bottom: Radius.circular(getHorizontalSize(10)));
  static BorderRadius get customBorderTL10 =>
      BorderRadius.vertical(top: Radius.circular(getHorizontalSize(10)));
  static BorderRadius get customBorderTL15 =>
      BorderRadius.vertical(top: Radius.circular(getHorizontalSize(15)));
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
