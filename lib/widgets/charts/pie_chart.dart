// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:fl_chart/fl_chart.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import 'pie_chart.data.dart';
import 'utils/chart.label.dart';

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
