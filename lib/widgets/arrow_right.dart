// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class ArrowRight extends StatelessWidget {
  const ArrowRight({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        onTap: onTap,
        svgPath: Assets.svg.imgArrowRight.path,
        height: 18.adaptSize,
        width: 10.adaptSize,
        margin: getMargin(left: 38, top: 2, bottom: 4, right: 16));
  }
}
