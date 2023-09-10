// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.isDisabled = false,
    this.isLoading = false,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
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
  final bool isLoading;

  @override
  final bool isDisabled;

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
          style: buttonStyle ?? CustomButtonStyles.fillPrimaryC26,
          onPressed: () {
            if (isDisabled || isLoading) {
              return;
            } else {
              onTap!();
            }
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            leftIcon ?? const SizedBox.shrink(),
            if (isLoading)
              CupertinoActivityIndicator(color: appTheme.gray700, radius: 14)
            else
              Text(text,
                  style: buttonTextStyle ?? CustomTextStyles.titleMedium18),
            rightIcon ?? const SizedBox.shrink(),
          ])));
}
