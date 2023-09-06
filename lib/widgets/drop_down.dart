// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.focusNode,
    this.icon,
    this.autofocus = true,
    this.initialValue = false,
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
    this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;
  final bool initialValue;
  final bool? autofocus;
  final bool? filled;
  final BoxConstraints? prefixConstraints;
  final BoxConstraints? suffixConstraints;
  final Color? fillColor;
  final double? width;
  final EdgeInsets? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final Function(SelectionPopupModel)? onChanged;
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
      margin: margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode ?? FocusNode(),
          icon: icon,
          autofocus: autofocus!,
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
          onChanged: (value) {
            onChanged!(value!);
          }));
  InputDecoration get decoration => InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray500,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: fillColor,
      filled: filled,
      isDense: true,
      contentPadding:
          contentPadding ?? getPadding(left: 10, top: 14, bottom: 14),
      border: borderDecoration ??
          OutlineInputBorder(
              borderSide: BorderSide(color: appTheme.blueGray30033, width: 1)),
      enabledBorder: borderDecoration ??
          OutlineInputBorder(
              borderSide: BorderSide(color: appTheme.blueGray30033, width: 1)),
      focusedBorder: borderDecoration ??
          OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(4)),
              borderSide:
                  BorderSide(color: theme.colorScheme.onError, width: 1)));
}
