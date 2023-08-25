// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class GrayHorizonSeparator extends StatelessWidget {
  const GrayHorizonSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(8),
      width: double.maxFinite,
      margin: getMargin(top: 21),
      decoration: BoxDecoration(color: appTheme.gray100),
    );
  }
}
