// 🎯 Dart imports:
import 'dart:math';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';

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

enum PieChartSectionLabelType {
  none,
  value,
  percent,
}

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({
    super.key,
    required this.data,
    this.donutHoleRadius = 0,
    this.donutHoleColor = Colors.transparent,
    this.sectionLabelType = PieChartSectionLabelType.none,
    this.sectionLabelStyle,
    this.labelFormatter = const LabelFormatter(),
  });

  final CustomPieChartData data;
  final double donutHoleRadius;
  final Color donutHoleColor;
  final PieChartSectionLabelType sectionLabelType;
  final TextStyle? sectionLabelStyle;
  final LabelFormatter labelFormatter;

  double get sumOfValues => data.data.reduce((a, b) => a + b);

  @override
  Widget build(BuildContext context) => PieChart(
        PieChartData(
          centerSpaceRadius: donutHoleRadius,
          centerSpaceColor: donutHoleColor,
          sectionsSpace: 0,
          sections: data.data.asMap().entries.mapTo(
            (section) {
              String? title;
              final index = section.key;
              final sectionData = section.value;
              final colorsLength = data.colors.length;
              final otherPropsLength = data.radius.length;
              switch (sectionLabelType) {
                case PieChartSectionLabelType.value:
                  title = formatLabel(labelFormatter, sectionData);
                  break;
                case PieChartSectionLabelType.percent:
                  title =
                      r'${formatLabel(labelFormatter, sectionData / sumOfValues * 100)}%';
                  break;
                default:
                  break;
              }
              return PieChartSectionData(
                value: sectionData,
                color: data.colors[index % colorsLength],
                radius: otherPropsLength == 1
                    ? data.radius.first
                    : data.radius[index],
                borderSide: BorderSide(
                  color: (otherPropsLength == 1
                          ? data.borderColor?.first
                          : data.borderColor?.elementAt(index)) ??
                      Colors.transparent,
                  width: (otherPropsLength == 1
                          ? data.borderWidth?.first
                          : data.borderWidth?.elementAt(index)) ??
                      0.0,
                ),
                showTitle: sectionLabelType != PieChartSectionLabelType.none,
                titleStyle: sectionLabelStyle,
                title: title,
              );
            },
          ),
        ),
      );
}

class CustomChartLegendWidget extends StatelessWidget {
  const CustomChartLegendWidget({
    super.key,
    required this.entries,
    this.width,
    this.height,
    this.textStyle,
    this.padding,
    this.backgroundColor = Colors.transparent,
    this.borderRadius,
    this.borderWidth = 1.0,
    this.borderColor = const Color(0xFF000000),
    this.indicatorSize = 10,
    this.indicatorBorderRadius,
    this.textPadding = EdgeInsets.zero,
  });

  final List<LegendEntry> entries;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double borderWidth;
  final Color borderColor;
  final double indicatorSize;
  final BorderRadius? indicatorBorderRadius;
  final EdgeInsetsGeometry textPadding;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Column(
          children: entries.mapTo(
            (entry) => Row(
              children: [
                Container(
                  height: indicatorSize,
                  width: indicatorSize,
                  decoration: BoxDecoration(
                    color: entry.color,
                    borderRadius: indicatorBorderRadius,
                  ),
                ),
                Padding(
                  padding: textPadding,
                  child: Text(
                    entry.name,
                    style: textStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}

class LegendEntry {
  const LegendEntry(this.color, this.name);

  final Color color;
  final String name;
}

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

class LabelFormatter {
  const LabelFormatter({
    this.numberFormat,
  });

  final String Function(double)? numberFormat;
  NumberFormat get defaultFormat => NumberFormat()..significantDigits = 2;
}

class AxisBounds {
  const AxisBounds({this.minX, this.minY, this.maxX, this.maxY});

  final double? minX;
  final double? minY;
  final double? maxX;
  final double? maxY;
}

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
    final x = _dataToDouble(xData);
    final y = _dataToDouble(yData);
    assert(x.length == y.length, 'X and Y data must be the same length');

    return Iterable.generate(min(x.length, y.length))
        .whereTo((i) => x[i] != null && y[i] != null)
        .mapTo((i) => FlSpot(x[i]!, y[i]!));
  }
}

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

  List<double> get data => _dataToDouble(yData).mapTo((e) => e ?? 0.0);
}

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

  List<double> get data => _dataToDouble(values).mapTo((e) => e ?? 0.0);
}

List<double?> _dataToDouble(List<dynamic> data) {
  if (data.isEmpty) {
    return [];
  }
  if (data.first is double) {
    return data.mapTo((d) => d as double);
  }
  if (data.first is int) {
    return data.mapTo((d) => (d as int).toDouble());
  }
  if (data.first is DateTime) {
    return data.mapTo((d) => (d as DateTime).millisecondsSinceEpoch.toDouble());
  }
  if (data.first is String) {
    // First try to parse as doubles
    if (double.tryParse(data.first as String) != null) {
      return data.mapTo((d) => double.tryParse(d as String));
    }
    if (int.tryParse(data.first as String) != null) {
      return data.mapTo((d) => int.tryParse(d as String)?.toDouble());
    }
    if (DateTime.tryParse(data.first as String) != null) {
      return data.mapTo((d) =>
          DateTime.tryParse(d as String)?.millisecondsSinceEpoch.toDouble());
    }
  }
  return [];
}

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

String formatLabel(LabelFormatter formatter, double value) {
  if (formatter.numberFormat != null) {
    return formatter.numberFormat!(value);
  }
  return formatter.defaultFormat.format(value);
}
