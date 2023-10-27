// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:fl_chart/fl_chart.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import 'line_chart.data.dart';
import 'utils/chart.axis_label.dart';
import 'utils/chart.styling_info.dart';
import 'utils/get_titles_data.dart';

class AxisBounds {
  const AxisBounds({this.minX, this.minY, this.maxX, this.maxY});

  final double? minX;
  final double? minY;
  final double? maxX;
  final double? maxY;
}

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({
    super.key,
    required this.data,
    required this.xAxisLabelInfo,
    required this.yAxisLabelInfo,
    required this.axisBounds,
    this.chartStylingInfo = const ChartStylingInfo(),
  });

  final List<CustomLineChartData> data;
  final AxisLabelInfo xAxisLabelInfo;
  final AxisLabelInfo yAxisLabelInfo;
  final AxisBounds axisBounds;
  final ChartStylingInfo chartStylingInfo;

  List<LineChartBarData> get dataWithSpots =>
      data.mapTo((d) => d.settings.copyWith(spots: d.spots));

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            handleBuiltInTouches: chartStylingInfo.enableTooltip,
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: chartStylingInfo.tooltipBackgroundColor ??
                  const Color(0xFF607D8B),
            ),
          ),
          gridData: FlGridData(show: chartStylingInfo.showGrid),
          borderData: FlBorderData(
            border: Border.all(
              color: chartStylingInfo.borderColor,
              width: chartStylingInfo.borderWidth,
            ),
            show: chartStylingInfo.showBorder,
          ),
          titlesData: getTitlesData(xAxisLabelInfo, yAxisLabelInfo),
          lineBarsData: dataWithSpots,
          minX: axisBounds.minX,
          minY: axisBounds.minY,
          maxX: axisBounds.maxX,
          maxY: axisBounds.maxY,
          backgroundColor: chartStylingInfo.backgroundColor,
        ),
      );
}
