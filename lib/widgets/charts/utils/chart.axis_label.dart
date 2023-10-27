// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'chart.label.dart';

class AxisLabelInfo {
  const AxisLabelInfo({
    this.title = '',
    this.titleTextStyle,
    this.showLabels = false,
    this.labelTextStyle,
    this.labelInterval,
    this.labelFormatter = const LabelFormatter(),
  });

  final String title;
  final TextStyle? titleTextStyle;
  final bool showLabels;
  final TextStyle? labelTextStyle;
  final double? labelInterval;
  final LabelFormatter labelFormatter;
}
