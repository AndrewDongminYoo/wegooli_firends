// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill =>
      BoxDecoration(color: theme.colorScheme.onPrimaryContainer);
  static BoxDecoration get fill5 => BoxDecoration(color: appTheme.gray10001);
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blueGray30033,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get fill4 =>
      BoxDecoration(color: appTheme.blueGray30033);
  static BoxDecoration get fill6 =>
      BoxDecoration(color: theme.colorScheme.onSecondary);
  static BoxDecoration get fill1 =>
      BoxDecoration(color: theme.colorScheme.primary);
  static BoxDecoration get shadow => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray400,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outline4 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blueGray30033,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get fill3 =>
      BoxDecoration(color: appTheme.deepPurpleA200);
  static BoxDecoration get fill2 =>
      BoxDecoration(color: appTheme.deepOrangeA200);
  static BoxDecoration get txtOutline => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray400,
          width: getHorizontalSize(1),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(5),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(25),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(15),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(40),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(10),
  );

  static BorderRadius circleBorder21 = BorderRadius.circular(
    getHorizontalSize(21),
  );

  static BorderRadius circleBorder65 = BorderRadius.circular(
    getHorizontalSize(65),
  );

  static BorderRadius customBorderTL10 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(10),
    ),
    topRight: Radius.circular(
      getHorizontalSize(10),
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(5),
  );

  static BorderRadius circleBorder60 = BorderRadius.circular(
    getHorizontalSize(60),
  );

  static BorderRadius customBorderBL10 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(10),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(10),
    ),
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
