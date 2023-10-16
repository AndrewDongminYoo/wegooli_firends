import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA20033,
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.4),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray600,
      );
  static BoxDecoration get fillBlueGrayF => BoxDecoration(
        color: appTheme.blueGray1007f,
      );
  static BoxDecoration get fillBluegray30033 => BoxDecoration(
        color: appTheme.blueGray30033,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA200,
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA200,
      );
  static BoxDecoration get fillDeeppurpleA20001 => BoxDecoration(
        color: appTheme.deepPurpleA20001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOnSecondary => BoxDecoration(
        color: theme.colorScheme.onSecondary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red600,
      );

  // Gradient decorations
  static BoxDecoration get gradientYellowToYellow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [
            appTheme.yellow600,
            appTheme.yellow300,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineAmberA => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.amberA20033,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => const BoxDecoration();
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray30033,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray200 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray30033 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray30033,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray300331 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blueGray30033,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray300332 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray30033,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray40001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray4001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray50002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray50002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray700 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray7001 => BoxDecoration(
        color: appTheme.gray200,
        border: Border.all(
          color: appTheme.gray700,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.blueGray700,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.redA700,
          width: 1.h,
        ),
      );

  // Shadow decorations
  static BoxDecoration get shadow => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              2,
              2,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get circleBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );
  static BorderRadius get circleBorder7 => BorderRadius.circular(
        7.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.vertical(
        top: Radius.circular(15.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
      );
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
