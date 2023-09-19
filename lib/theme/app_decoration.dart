// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA =>
      BoxDecoration(color: appTheme.amberA20033);
  static BoxDecoration get fillBlueGray =>
      BoxDecoration(color: appTheme.blueGray30033);
  static BoxDecoration get fillGray100 =>
      BoxDecoration(color: appTheme.gray100);
  static BoxDecoration get fillGrey100 =>
      BoxDecoration(color: appTheme.grey100);
  static BoxDecoration get fillDeepOrange =>
      BoxDecoration(color: appTheme.deepOrangeA200);
  static BoxDecoration get fillDeepPurple =>
      BoxDecoration(color: appTheme.deepPurpleA200);
  static BoxDecoration get fillGray => BoxDecoration(color: appTheme.gray100);
  static BoxDecoration get fillGray50 => BoxDecoration(color: appTheme.gray50);
  static BoxDecoration get fillGray5001 =>
      BoxDecoration(color: appTheme.gray5001);
  static BoxDecoration get fillOnPrimaryContainer =>
      const BoxDecoration(color: Colors.white);
  static BoxDecoration get fillSecondaryContainer =>
      BoxDecoration(color: theme.colorScheme.secondaryContainer);
  static BoxDecoration get fillOnSecondary =>
      const BoxDecoration(color: Colors.white);
  static BoxDecoration get fillOnPrimary =>
      const BoxDecoration(color: ColorConstant.fontBlack);
  static BoxDecoration get fillPrimary =>
      const BoxDecoration(color: ColorConstant.wegooli);

  // Outline decorations
  static BoxDecoration get outlineAmberA => BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: appTheme.amberA20033,
          width: 1.h,
        ),
      ));
  static BoxDecoration get outlineBlack =>
      BoxDecoration(color: ColorConstant.wegooli, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 2.h,
          blurRadius: 2.h,
          offset: const Offset(2, 2),
        ),
      ]);
  static BoxDecoration get outlineBlack900 =>
      BoxDecoration(color: theme.colorScheme.primary, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 2.h,
          blurRadius: 2.h,
          offset: const Offset(2, 2),
        ),
      ]);
  static BoxDecoration get outlineBlack9001 => const BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer,
      border: Border(
        bottom: BorderSide(
          color: appTheme.blueGray30033,
          width: 1.h,
        ),
      ));
  static BoxDecoration get outlineBluegray200 => BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: appTheme.blueGray200,
          width: 1.h,
        ),
      ));
  static BoxDecoration get outlineBluegray2001 => BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer,
      border: Border.all(
        color: appTheme.blueGray200,
        width: 1.h,
      ));
  static BoxDecoration get outlineBluegray30033 => BoxDecoration(
          border: Border(
        top: BorderSide(
          color: appTheme.blueGray30033,
          width: 1.h,
        ),
      ));
  static BoxDecoration get outlineBluegray300331 => BoxDecoration(
          border: Border.all(
        color: appTheme.blueGray30033,
        width: 1.h,
      ));
  static BoxDecoration get outlineBluegray300332 => BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer,
      border: Border.all(
        color: appTheme.blueGray30033,
        width: 1.h,
      ));
  static BoxDecoration get outlineGray => BoxDecoration(
          border: Border.all(
        color: appTheme.gray400,
        width: 1.h,
      ));
  static BoxDecoration get outlineGray400 => BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer,
      border: Border.all(
        color: appTheme.gray400,
        width: 1.h,
      ));
  static BoxDecoration get outlineGray700 => BoxDecoration(
          border: Border.all(
        color: appTheme.gray700,
        width: 1.h,
      ));
  static BoxDecoration get outlineGray7001 => BoxDecoration(
      color: appTheme.gray200,
      border: Border.all(
        color: appTheme.gray700,
        width: 2.h,
      ));
  static BoxDecoration get outlineOnError => BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer,
      border: Border(
        bottom: BorderSide(
          color: theme.colorScheme.onError,
          width: 1.h,
        ),
      ));
  static BoxDecoration get outlineOnError1 => BoxDecoration(
          border: Border(
        top: BorderSide(
          color: theme.colorScheme.onError,
          width: 1.h,
        ),
      ));

  static BoxDecoration get outline => BoxDecoration(
        color: Colors.white,
        border: Border.all(color: appTheme.gray400, width: 1.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      ));

  // Shadow decorations
  static List<BoxShadow> get shadows => const [
        BoxShadow(
            color: Color(0x16000000), blurRadius: 10, offset: Offset(2, 2)),
      ];

  static List<BoxShadow> get tightElevation3 => const [
        BoxShadow(
            color: Color(0x38000000), blurRadius: 6, offset: Offset(0, 2)),
      ];
  static BoxDecoration get minimal => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusStyle.circleBorder65,
      border: Border.all(width: 0.5, color: ColorConstant.neutralDisabled));

  static BoxDecoration get shadow =>
      const BoxDecoration(color: ColorConstant.white);
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder5 => BorderRadius.circular(5.h);
  static BorderRadius get circleBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get circleBorder12 => BorderRadius.circular(12.h);
  static BorderRadius get circleBorder21 => BorderRadius.circular(21.h);
  static BorderRadius get circleBorder25 => BorderRadius.circular(25.h);
  static BorderRadius get circleBorder35 => BorderRadius.circular(35.h);
  static BorderRadius get circleBorder40 => BorderRadius.circular(40.h);
  static BorderRadius get circleBorder60 => BorderRadius.circular(60.h);
  static BorderRadius get circleBorder65 => BorderRadius.circular(65.h);
  static BorderRadius get circleBorder9 => BorderRadius.circular(9.h);

  // Custom borders
  static BorderRadius get customBorderTL10 =>
      BorderRadius.vertical(top: Radius.circular(10.h));

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(15.h);
  static BorderRadius get roundedBorder2 => BorderRadius.circular(2.h);
  static BorderRadius get roundedBorder32 => BorderRadius.circular(32.h);
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.h);
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
