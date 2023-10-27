// 🎯 Dart imports:
import 'dart:math';

// 📦 Package imports:
import 'package:fl_chart/fl_chart.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import 'utils/data_to_double.dart';

class CustomLineChartData {
  const CustomLineChartData({
    required this.xData,
    required this.yData,
    required this.settings,
  });

  final List<dynamic> xData;
  final List<dynamic> yData;
  final LineChartBarData settings;

  List<FlSpot> get spots {
    final x = dataToDouble(xData);
    final y = dataToDouble(yData);
    assert(x.length == y.length, 'X and Y data must be the same length');

    return Iterable.generate(min(x.length, y.length))
        .whereTo((i) => x[i] != null && y[i] != null)
        .mapTo((i) => FlSpot(x[i]!, y[i]!));
  }
}
