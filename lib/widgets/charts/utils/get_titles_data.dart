// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:fl_chart/fl_chart.dart';

// 🌎 Project imports:
import 'chart.axis_label.dart';
import 'chart.label.dart';

FlTitlesData getTitlesData(
  AxisLabelInfo xAxisLabelInfo,
  AxisLabelInfo yAxisLabelInfo, {
  Widget Function(double, TitleMeta)? getXTitlesWidget,
}) =>
    FlTitlesData(
      bottomTitles: AxisTitles(
        axisNameWidget: xAxisLabelInfo.title.isEmpty
            ? null
            : Text(
                xAxisLabelInfo.title,
                style: xAxisLabelInfo.titleTextStyle,
              ),
        axisNameSize: xAxisLabelInfo.titleTextStyle?.fontSize != null
            ? xAxisLabelInfo.titleTextStyle!.fontSize! + 12
            : 16,
        sideTitles: SideTitles(
          getTitlesWidget: (val, _) => getXTitlesWidget != null
              ? getXTitlesWidget(val, _)
              : Text(
                  formatLabel(xAxisLabelInfo.labelFormatter, val),
                  style: xAxisLabelInfo.labelTextStyle,
                ),
          showTitles: xAxisLabelInfo.showLabels,
          interval: xAxisLabelInfo.labelInterval,
        ),
      ),
      rightTitles: const AxisTitles(),
      topTitles: const AxisTitles(),
      leftTitles: AxisTitles(
        axisNameWidget: yAxisLabelInfo.title.isEmpty
            ? null
            : Text(
                yAxisLabelInfo.title,
                style: yAxisLabelInfo.titleTextStyle,
              ),
        axisNameSize: yAxisLabelInfo.titleTextStyle?.fontSize != null
            ? yAxisLabelInfo.titleTextStyle!.fontSize! + 12
            : 16,
        sideTitles: SideTitles(
          getTitlesWidget: (val, _) => Text(
            formatLabel(yAxisLabelInfo.labelFormatter, val),
            style: yAxisLabelInfo.labelTextStyle,
          ),
          showTitles: yAxisLabelInfo.showLabels,
          interval: yAxisLabelInfo.labelInterval,
        ),
      ),
    );
