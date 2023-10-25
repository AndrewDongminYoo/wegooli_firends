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
  static BorderRadius get circleBorder100 => BorderRadius.circular(100.h);
  static BorderRadius get circleBorder7 => BorderRadius.circular(7.h);

  // Custom borders
  static BorderRadius get customBorderT10 =>
      BorderRadius.vertical(top: Radius.circular(10.h));
  static BorderRadius get customBorderB10 =>
      BorderRadius.vertical(bottom: Radius.circular(10.h));
  static BorderRadius get customBorderBL10 =>
      BorderRadius.only(bottomLeft: Radius.circular(10.h));
  static BorderRadius get customBorderBR10 =>
      BorderRadius.only(bottomRight: Radius.circular(10.h));

  // Rounded borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get circleBorder15 => BorderRadius.circular(15.h);
  static BorderRadius get circleBorder32 => BorderRadius.circular(32.h);
  static BorderRadius get circleBorder4 => BorderRadius.circular(4.h);
}

double get strokeAlignInside => BorderSide.strokeAlignInside;
double get strokeAlignCenter => BorderSide.strokeAlignCenter;
double get strokeAlignOutside => BorderSide.strokeAlignOutside;
