// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  String? imagePath;
  String? svgPath;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  AppbarImage({
    Key? key,
    this.imagePath,
    this.svgPath = 'assets/svg/arrow_back.svg',
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap != null ? onTap!() : goBack();
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
