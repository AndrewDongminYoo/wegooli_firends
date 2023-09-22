// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.focusNode,
    this.icon,
    this.autofocus = true,
    this.initialValue,
    this.textStyle,
    this.items,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.fillColor,
    this.filled = false,
    this.contentPadding,
    this.borderDecoration,
    this.validator,
    required this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;
  final SelectionPopupModel? initialValue;
  final bool autofocus;
  final bool? filled;
  final BoxConstraints? prefixConstraints;
  final BoxConstraints? suffixConstraints;
  final Color? fillColor;
  final double? width;
  final EdgeInsets? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final void Function(SelectionPopupModel?) onChanged;
  final InputBorder? borderDecoration;
  final List<SelectionPopupModel>? items;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Widget? icon;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center, child: dropDownWidget)
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
      width: width ?? double.maxFinite,
      height: 48.v,
      margin: margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
          value: initialValue,
          focusNode: focusNode ?? FocusNode(),
          icon: icon,
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.bodyLargeGray500,
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
                value: item,
                child: Text(item.title,
                    overflow: TextOverflow.ellipsis,
                    style: hintStyle ?? CustomTextStyles.bodyLargeGray500));
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: onChanged));
  InputDecoration get decoration => InputDecoration(
      hintText: hintText ?? '',
      hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray500,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: fillColor ?? theme.colorScheme.onPrimaryContainer,
      filled: filled,
      isDense: true,
      contentPadding: contentPadding ??
          EdgeInsets.symmetric(vertical: 10.v, horizontal: 14.h),
      border: borderDecoration ??
          OutlineInputBorder(borderSide: BorderSide(color: appTheme.gray400)),
      enabledBorder: borderDecoration ??
          OutlineInputBorder(borderSide: BorderSide(color: appTheme.gray400)),
      focusedBorder: borderDecoration ??
          OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.h),
              borderSide: BorderSide(color: appTheme.gray400)));
}
