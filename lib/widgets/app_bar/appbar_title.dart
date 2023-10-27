// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
    required this.text,
    this.margin,
    this.onTap,
  });

  final String text;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: textTheme.titleMedium!.copyWith(
            fontSize: TextSize.lg.fSize,
            color: lightTheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
