// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class GrayHorizonSeparator extends Divider {
  const GrayHorizonSeparator({
    Key? key,
    double? borderWidth = 8.0,
    double? gapHeight = 16.0,
    Color? color = const Color(0xFFF6F7F7),
    double? leftMargin = 0.0,
    double? rightMargin = 0.0,
  }) : super(
          key: key,
          color: color,
          height: gapHeight,
          indent: leftMargin,
          endIndent: rightMargin,
          thickness: borderWidth,
        );
}
