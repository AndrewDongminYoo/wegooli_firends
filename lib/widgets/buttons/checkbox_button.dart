// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/colors.gen.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomCheckboxButton extends StatefulWidget {
  CustomCheckboxButton({
    super.key,
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
  });

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightCheck;
  final double? iconSize;
  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final bool isExpandedText;
  final bool textTouchable;
  bool? value;

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
          widget.value = !widget.value!;
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
              : Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: checkboxWidget),
                    if (widget.isExpandedText)
                      Expanded(child: textWidget)
                    else
                      textWidget,
                  ],
                ),
        ),
      );

  Widget get textWidget => InkWell(
        onTap: () =>
            widget.textTouchable ? widget.onChange(!widget.value!) : null,
        child: Text(
          widget.text ?? '',
          textAlign: widget.textAlignment ?? TextAlign.center,
          style: widget.textStyle ?? textTheme.bodyLarge,
        ),
      );

  Widget get checkboxWidget => SizedBox(
        height: widget.iconSize ?? 20.w,
        width: widget.iconSize ?? 20.w,
        child: Checkbox(
          activeColor: AppColors.primaryPressed,
          checkColor: AppColors.primaryInverted,
          visualDensity: buttonDensity,
          value: widget.value ?? false,
          onChanged: (value) {
            widget.onChange(value!);
          },
        ),
      );
}
