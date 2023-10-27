// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class ChartStylingInfo {
  const ChartStylingInfo({
    this.backgroundColor = Colors.white,
    this.showGrid = false,
    this.enableTooltip = false,
    this.tooltipBackgroundColor,
    this.borderColor = Colors.black,
    this.borderWidth = 1.0,
    this.showBorder = true,
  });

  final Color backgroundColor;
  final bool showGrid;
  final bool enableTooltip;
  final Color? tooltipBackgroundColor;
  final Color borderColor;
  final double borderWidth;
  final bool showBorder;
}
