// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(key: key);

  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
              visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
              padding: EdgeInsets.zero,
              icon: Container(
                  alignment: Alignment.center,
                  padding: padding ?? EdgeInsets.zero,
                  decoration: decoration ??
                      AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12),
                  child: child),
              onPressed: onTap)));
}
