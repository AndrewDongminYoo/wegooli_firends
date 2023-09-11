// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray =>
      BoxDecoration(color: appTheme.blueGray30033);
  static BoxDecoration get fillGray100 =>
      BoxDecoration(color: appTheme.gray100);
  static BoxDecoration get fillGray10001 =>
      BoxDecoration(color: appTheme.gray10001);
  static BoxDecoration get fillDeepOrange =>
      BoxDecoration(color: appTheme.deepOrangeA200);
  static BoxDecoration get fillDeepPurple =>
      BoxDecoration(color: appTheme.deepPurpleA200);
  static BoxDecoration get fillOnPrimaryContainer =>
      BoxDecoration(color: theme.colorScheme.onPrimaryContainer);
  static BoxDecoration get fillOnSecondary =>
      BoxDecoration(color: theme.colorScheme.onSecondary);
  static BoxDecoration get fillOnPrimary =>
      BoxDecoration(color: theme.colorScheme.onPrimary);
  static BoxDecoration get fillPrimary =>
      BoxDecoration(color: theme.colorScheme.primary);

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: const Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray30033,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineBluegray30033 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blueGray30033,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray400,
          width: getHorizontalSize(1),
        ),
      );

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
      border:
          Border.all(width: 0.5, color: ColorConstant.actionNeutralDisabled));
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder5 =>
      BorderRadius.circular(getHorizontalSize(5));
  static BorderRadius get circleBorder10 =>
      BorderRadius.circular(getHorizontalSize(10));
  static BorderRadius get circleBorder12 =>
      BorderRadius.circular(getHorizontalSize(12));
  static BorderRadius get circleBorder21 =>
      BorderRadius.circular(getHorizontalSize(21));
  static BorderRadius get circleBorder25 =>
      BorderRadius.circular(getHorizontalSize(25));
  static BorderRadius get circleBorder35 =>
      BorderRadius.circular(getHorizontalSize(35));
  static BorderRadius get circleBorder40 =>
      BorderRadius.circular(getHorizontalSize(40));
  static BorderRadius get circleBorder60 =>
      BorderRadius.circular(getHorizontalSize(60));
  static BorderRadius get circleBorder65 =>
      BorderRadius.circular(getHorizontalSize(65));

  // Rounded borders
  static BorderRadius get customBorderT10 =>
      BorderRadius.vertical(top: Radius.circular(getHorizontalSize(10)));

  static BorderRadius get customBorderB10 =>
      BorderRadius.vertical(bottom: Radius.circular(getHorizontalSize(10)));
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
