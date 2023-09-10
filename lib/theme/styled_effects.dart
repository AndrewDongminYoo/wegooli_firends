// 🐦 Flutter imports:
import 'package:flutter/material.dart';

abstract class AppStyledEffects {
  static const shadow = [
    BoxShadow(color: Color(0x16000000), blurRadius: 10, offset: Offset(2, 2)),
  ];

  static const tightElevation3 = [
    BoxShadow(color: Color(0x38000000), blurRadius: 6, offset: Offset(0, 2)),
  ];
}
