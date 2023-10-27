/// A custom addon example for Widgetbook
///
/// [Ref link]: https://docs.widgetbook.io/addons/custom-addon

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:widgetbook/widgetbook.dart';

class AlignmentAddon extends WidgetbookAddon<Alignment> {
  AlignmentAddon({
    Alignment initialAlignment = Alignment.center,
  }) : super(
          name: 'Alignment',
          initialSetting: initialAlignment,
        );

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    Alignment setting,
  ) {
    // customize how the use case is built using your custom Addon
    return Align(
      alignment: setting,
      child: child,
    );
  }

  @override
  List<Field<Alignment>> get fields {
    return [
      ListField<Alignment>(
        name: 'alignment',
        initialValue: initialSetting,
        values: [
          Alignment.topLeft,
          Alignment.topCenter,
          Alignment.topRight,
          Alignment.centerLeft,
          Alignment.center,
          Alignment.centerRight,
          Alignment.bottomLeft,
          Alignment.bottomCenter,
          Alignment.bottomRight,
        ],
      ),
    ];
  }

  @override
  Alignment valueFromQueryGroup(Map<String, String> group) {
    return valueOf<Alignment>('alignment', group)!;
  }
}

/// A [WidgetbookAddon] for zoom/scaling.
class ZoomAddon extends WidgetbookAddon<double> {
  ZoomAddon({double initialZoom = 1.0})
      : super(
          name: 'Zoom',
          initialSetting: initialZoom,
        );

  @override
  List<Field> get fields => [
        DoubleSliderField(
          name: 'zoom',
          initialValue: initialSetting,
          min: 0.5,
          max: 3,
          divisions: 25,
        ),
      ];

  @override
  double valueFromQueryGroup(Map<String, String> group) {
    return valueOf('zoom', group)!;
  }

  @override
  Widget buildUseCase(BuildContext context, Widget child, double setting) {
    return Transform.scale(
      scale: setting,
      child: child,
    );
  }
}
