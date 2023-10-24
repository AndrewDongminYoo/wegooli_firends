// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    super.key,
    this.alignment,
    this.margin,
    this.backgroundColor,
    this.onTap,
    this.width,
    this.height,
    this.decoration,
    this.child,
  });

  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }

  Widget get fabWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: FloatingActionButton(
          backgroundColor: backgroundColor,
          onPressed: onTap,
          child: Container(
            alignment: Alignment.center,
            width: width ?? 0,
            height: height ?? 0,
            decoration: decoration ??
                BoxDecoration(
                  color: lightTheme.primary,
                  borderRadius: BorderRadius.circular(35.h),
                ),
            child: child,
          ),
        ),
      );
}
