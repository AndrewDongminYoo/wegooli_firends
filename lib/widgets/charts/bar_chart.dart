// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:fl_chart/fl_chart.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import 'axis_label_info.dart';
import 'bar_chart.data.dart';
import 'chart_styling_info.dart';
import 'get_titles_data.dart';
import 'line_chart.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({
    super.key,
    required this.barData,
    required this.xLabels,
    required this.xAxisLabelInfo,
    required this.yAxisLabelInfo,
    required this.axisBounds,
    this.stacked = false,
    this.barWidth,
    this.barBorderRadius,
    this.barSpace,
    this.groupSpace,
    this.alignment = BarChartAlignment.center,
    this.chartStylingInfo = const ChartStylingInfo(),
  });

  final List<CustomBarChartData> barData;
  final List<String> xLabels;
  final AxisLabelInfo xAxisLabelInfo;
  final AxisLabelInfo yAxisLabelInfo;
  final AxisBounds axisBounds;
  final bool stacked;
  final double? barWidth;
  final BorderRadius? barBorderRadius;
  final double? barSpace;
  final double? groupSpace;
  final BarChartAlignment alignment;
  final ChartStylingInfo chartStylingInfo;

  Map<int, List<double>> get dataMap => xLabels.asMap().map(
      (key, value) => MapEntry(key, barData.mapTo((data) => data.data[key])));

  List<BarChartGroupData> get groups => dataMap.entries.mapTo((entry) {
        final groupInt = entry.key;
        final groupData = entry.value;
        return BarChartGroupData(
            x: groupInt,
            barsSpace: barSpace,
            barRods: groupData.asMap().entries.mapTo((rod) {
              final rodInt = rod.key;
              final rodSettings = barData[rodInt];
              final rodValue = rod.value;
              return BarChartRodData(
                toY: rodValue,
                color: rodSettings.color,
                width: barWidth,
                borderRadius: barBorderRadius,
                borderSide: BorderSide(
                  width: rodSettings.borderWidth,
                  color: rodSettings.borderColor,
                ),
              );
            }));
      });

  List<BarChartGroupData> get stacks => dataMap.entries.mapTo((entry) {
        final groupInt = entry.key;
        final stackData = entry.value;
        return BarChartGroupData(
          x: groupInt,
          barsSpace: barSpace,
          barRods: [
            BarChartRodData(
              toY: sum(stackData),
              width: barWidth,
              borderRadius: barBorderRadius,
              rodStackItems: stackData.asMap().entries.mapTo((stack) {
                final stackInt = stack.key;
                final stackSettings = barData[stackInt];
                final start =
                    stackInt == 0 ? 0.0 : sum(stackData.sublist(0, stackInt));
                return BarChartRodStackItem(
                  start,
                  start + stack.value,
                  stackSettings.color,
                  BorderSide(
                    width: stackSettings.borderWidth,
                    color: stackSettings.borderColor,
                  ),
                );
              }),
            )
          ],
        );
      });

  double sum(List<double> list) => list.reduce((a, b) => a + b);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          handleBuiltInTouches: chartStylingInfo.enableTooltip,
          touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: chartStylingInfo.tooltipBackgroundColor,
          ),
        ),
        alignment: alignment,
        gridData: FlGridData(show: chartStylingInfo.showGrid),
        borderData: FlBorderData(
          border: Border.all(
            color: chartStylingInfo.borderColor,
            width: chartStylingInfo.borderWidth,
          ),
          show: chartStylingInfo.showBorder,
        ),
        titlesData: getTitlesData(
          xAxisLabelInfo,
          yAxisLabelInfo,
          getXTitlesWidget: (val, _) => Text(
            xLabels[val.toInt()],
            style: xAxisLabelInfo.labelTextStyle,
          ),
        ),
        barGroups: stacked ? stacks : groups,
        groupsSpace: groupSpace,
        minY: axisBounds.minY,
        maxY: axisBounds.maxY,
        backgroundColor: chartStylingInfo.backgroundColor,
      ),
    );
  }
}
