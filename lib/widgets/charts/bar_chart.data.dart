// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import 'utils/data_to_double.dart';

class CustomBarChartData {
  const CustomBarChartData({
    required this.yData,
    required this.color,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
  });

  final List<dynamic> yData;
  final Color color;
  final double borderWidth;
  final Color borderColor;

  List<double> get data => dataToDouble(yData).mapTo((e) => e ?? 0.0);
}
