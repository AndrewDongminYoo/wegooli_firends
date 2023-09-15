// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class ArrowLeft extends StatelessWidget {
  const ArrowLeft({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomImageView(
        onTap: onTap,
        svgPath: Assets.svg.imgArrowLeft.path,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(left: 54, top: 2, bottom: 4));
  }
}
