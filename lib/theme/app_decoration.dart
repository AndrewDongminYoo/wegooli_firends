// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder21 => BorderRadius.circular(21.h);
  static BorderRadius get circleBorder25 => BorderRadius.circular(25.h);
  static BorderRadius get circleBorder35 => BorderRadius.circular(35.h);
  static BorderRadius get circleBorder60 => BorderRadius.circular(60.h);
  static BorderRadius get circleBorder65 => BorderRadius.circular(65.h);
  static BorderRadius get circleBorder7 => BorderRadius.circular(7.h);

  // Custom borders
  static BorderRadius get customBorderTL10 =>
      BorderRadius.vertical(top: Radius.circular(10.h));

  // Rounded borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get circleBorder15 => BorderRadius.circular(15.h);
  static BorderRadius get circleBorder32 => BorderRadius.circular(32.h);
  static BorderRadius get circleBorder4 => BorderRadius.circular(4.h);
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
