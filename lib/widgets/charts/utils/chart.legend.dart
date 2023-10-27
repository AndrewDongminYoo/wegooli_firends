// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';

class ChartLegendWidget extends StatelessWidget {
  const ChartLegendWidget({
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
