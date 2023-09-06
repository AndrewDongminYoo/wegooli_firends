// 🐦 Flutter imports:
import 'package:flutter/material.dart';

abstract class AppStyledEffects {
  static const shadow = [
    BoxShadow(
        color: const Color(0x16000000),
        blurRadius: 10,
        spreadRadius: 0,
        offset: Offset(2.0, 2.0))
  ];

  static const tightElevation3 = [
    BoxShadow(
        color: const Color(0x38000000),
        blurRadius: 6,
        spreadRadius: 0,
        offset: Offset(0.0, 2.0))
  ];
}
