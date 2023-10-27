// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import 'utils/data_to_double.dart';

class CustomPieChartData {
  const CustomPieChartData({
    required this.values,
    required this.colors,
    required this.radius,
    this.borderWidth,
    this.borderColor,
  });

  final List<dynamic> values;
  final List<Color> colors;
  final List<double> radius;
  final List<double>? borderWidth;
  final List<Color>? borderColor;

  List<double> get data => dataToDouble(values).mapTo((e) => e ?? 0.0);
}
