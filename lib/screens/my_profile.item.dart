// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.svgPath,
    required this.text,
    this.onTap,
  });
  final String svgPath;
  final String text;
  final Function()? onTap;

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
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: getMargin(right: 10),
                ),
                Text(
                  text,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    letterSpacing: 0.03.h,
                  ),
                ),
              ],
            ),
            CustomImageView(
                svgPath: Assets.svg.imgArrowRight.path,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: getMargin(top: 3, bottom: 3)),
          ],
        ),
      ),
    );
  }
}
