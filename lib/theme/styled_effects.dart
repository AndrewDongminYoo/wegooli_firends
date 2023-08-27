// 🐦 Flutter imports:
import 'package:flutter/material.dart';

abstract class AppStyledEffects {
  static const shadow = [
    BoxShadow(
      color: Color.fromARGB(24, 0, 0, 0),
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(2.0, 2.0),
    )
  ];

  static const tightElevation3 = [
    BoxShadow(
      color: Color.fromARGB(56, 0, 0, 0),
      blurRadius: 6,
      spreadRadius: 0,
      offset: Offset(0.0, 2.0),
    )
  ];
}
