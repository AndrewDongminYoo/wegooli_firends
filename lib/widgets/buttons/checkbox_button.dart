// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomCheckboxButton extends StatefulWidget {
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
  }) : super(key: key);

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  final bool? value;
  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final bool isExpandedText;

  @override
  State<CustomCheckboxButton> createState() => _CustomCheckboxButtonState();
}

class _CustomCheckboxButtonState extends State<CustomCheckboxButton> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: buildCheckBoxWidget)
        : buildCheckBoxWidget;
  }

  Widget get buildCheckBoxWidget => InkWell(
      onTap: () {
        widget.onChange(widget.value!);
      },
      child: Container(
          decoration: widget.decoration,
          width: widget.width,
          margin: widget.margin ?? EdgeInsets.zero,
          child: (widget.isRightCheck ?? false)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      if (widget.isExpandedText)
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
                  if (widget.isExpandedText)
                    Expanded(child: textWidget)
                  else
                    textWidget,
                ])));

  Widget get textWidget => Text(widget.text ?? '',
      textAlign: widget.textAlignment ?? TextAlign.center,
      style: widget.textStyle ?? theme.textTheme.bodyLarge);

  Widget get checkboxWidget => SizedBox(
      height: widget.iconSize,
      width: widget.iconSize,
      child: Checkbox(
          activeColor: ColorConstant.actionPrimaryPressed,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          value: widget.value ?? false,
          onChanged: (value) {
            widget.onChange(value!);
          }));
}
