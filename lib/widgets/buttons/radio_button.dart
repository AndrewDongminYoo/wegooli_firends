// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.groupValue,
    this.text,
    this.width,
    this.margin,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.gradient,
    this.backgroundColor,
  }) : super(key: key);

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  String? value;
  final String? groupValue;
  final Function(String) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final Gradient? gradient;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildRadioButtonWidget)
        : buildRadioButtonWidget;
  }

  bool get isGradient => gradient != null;
  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);
  Widget get buildRadioButtonWidget => InkWell(
      onTap: () {
        onChange(value!);
      },
      child: Container(
          decoration: decoration,
          width: width,
          margin: margin ?? EdgeInsets.zero,
          padding: padding,
          child: (isRightCheck ?? false)
              ? rightSideRadioButton
              : leftSideRadioButton));
  Widget get leftSideRadioButton => Row(children: [
        Padding(
            child: radioButtonWidget,
            padding: padding ?? EdgeInsets.only(right: 8)),
        textWidget,
      ]);
  Widget get rightSideRadioButton =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        textWidget,
        Padding(
            padding: padding ?? EdgeInsets.only(left: 8),
            child: radioButtonWidget),
      ]);
  Widget get textWidget => Text(text ?? "",
      textAlign: textAlignment ?? TextAlign.center,
      style: textStyle ?? theme.textTheme.bodyLarge);
  Widget get radioButtonWidget => SizedBox(
      height: iconSize ?? getHorizontalSize(20),
      width: iconSize ?? getHorizontalSize(20),
      child: Radio<String>(
          // activeColor: Color(0xFFFFE041),
          fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return theme.colorScheme.primary;
            } else {
              return Color(0xFFB9BCC3);
            }
          }),
          visualDensity: VisualDensity(vertical: -4, horizontal: -4),
          value: value ?? "",
          groupValue: groupValue,
          onChanged: (value) {
            onChange(value!);
          }));
  BoxDecoration get radioButtonDecoration =>
      BoxDecoration(color: backgroundColor);
}