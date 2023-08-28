// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap?.call();
        },
        child: Padding(
            padding: margin ?? EdgeInsets.zero,
            child: CustomImageView(
                svgPath: svgPath,
                imagePath: imagePath,
                height: getSize(18),
                width: getSize(18),
                fit: BoxFit.contain)));
  }
}
