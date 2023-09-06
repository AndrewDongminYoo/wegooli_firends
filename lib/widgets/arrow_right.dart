// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ArrowRight extends StatelessWidget {
  final void Function()? onTap;
  const ArrowRight({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        onTap: onTap,
        svgPath: Assets.svg.imgArrowRight.path,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(left: 54, top: 2, bottom: 4, right: 16));
  }
}
