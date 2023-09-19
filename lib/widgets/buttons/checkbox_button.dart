// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

// ignore: must_be_immutable
class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.alignment,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.text,
    this.width,
    this.margin,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.isExpandedText = false,
    this.textTouchable = true,
  }) : super(key: key);

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  bool? value;
  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final bool isExpandedText;
  final bool textTouchable;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildCheckBoxWidget)
        : buildCheckBoxWidget;
  }

  Widget get buildCheckBoxWidget => InkWell(
      onTap: () {
        value = !value!;
        onChange(value!);
      },
      child: Container(
          decoration: decoration,
          width: width,
          margin: margin ?? EdgeInsets.zero,
          child: (isRightCheck ?? false)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      if (isExpandedText)
                        Expanded(child: textWidget)
                      else
                        textWidget,
                      Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: checkboxWidget),
                    ])
              : Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: checkboxWidget),
                  if (isExpandedText)
                    Expanded(child: textWidget)
                  else
                    textWidget,
                ])));
  Widget get textWidget => InkWell(
        onTap: () => textTouchable ? onChange(!value!) : null,
        child: Text(
          text ?? '',
          textAlign: textAlignment ?? TextAlign.center,
          style: textStyle ?? theme.textTheme.bodyLarge,
        ),
      );
  Widget get checkboxWidget => SizedBox(
      height: iconSize ?? 20.h,
      width: iconSize ?? 20.h,
      child: Checkbox(
          activeColor: ColorConstant.primaryPressed,
          checkColor: ColorConstant.primaryInverted,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          value: value ?? false,
          onChanged: (value) {
            onChange(value!);
          }));
}
