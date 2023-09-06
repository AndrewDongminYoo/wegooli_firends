// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key, 
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.isLoading,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
            text: text,
            onTap: onTap,
            buttonStyle: buttonStyle,
            isDisabled: isDisabled,
            buttonTextStyle: buttonTextStyle,
            height: height,
            width: width,
            alignment: alignment,
            margin: margin);

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget)
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
      height: height ?? getVerticalSize(52),
      width: width ?? double.maxFinite,
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            if (isDisabled ?? false) {
              return;
            } else if (isLoading ?? false) {
              return;
            } else {
              onTap!();
            }
          },
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leftIcon ?? const SizedBox.shrink(),
                Text(text,
                    style: buttonTextStyle ?? CustomTextStyles.titleMedium18),
                rightIcon ?? const SizedBox.shrink(),
              ])));
}
