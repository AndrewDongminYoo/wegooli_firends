// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ListItem extends StatelessWidget {
  final String svgPath;
  final String text;
  final Function()? onTap;
  const ListItem({
    super.key,
    required this.svgPath,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: getPadding(all: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  svgPath: svgPath,
                  height: getSize(24),
                  width: getSize(24),
                  margin: getMargin(right: 10),
                ),
                Text(
                  text,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    letterSpacing: getHorizontalSize(0.03),
                  ),
                ),
              ],
            ),
            CustomImageView(
                svgPath: Assets.svg.imgArrowRight.path,
                height: getSize(18),
                width: getSize(18),
                margin: getMargin(top: 3, bottom: 3)),
          ],
        ),
      ),
    );
  }
}
