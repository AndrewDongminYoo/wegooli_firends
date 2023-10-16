// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/data/models/dropdown_data.dart';
import '/theme/theme_helper.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.focusNode,
    this.icon,
    this.autofocus = true,
    this.textStyle,
    this.items,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final FocusNode? focusNode;

  final Widget? icon;

  final bool? autofocus;

  final TextStyle? textStyle;

  final List<DropdownData>? items;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<DropdownData>? validator;

  final Function(DropdownData)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: DropdownButtonFormField<DropdownData>(
          focusNode: focusNode ?? FocusNode(),
          icon: icon,
          autofocus: autofocus!,
          style: textStyle ??
              defaultTextTheme.titleMedium!.copyWith(
                color: defaultColors.onPrimary.withOpacity(0.4),
              ),
          items: items?.map((DropdownData item) {
            return DropdownMenuItem<DropdownData>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ??
                    defaultTextTheme.bodyLarge!.copyWith(
                      color: const Color(0xFFB0B2BC),
                    ),
              ),
            );
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: (value) {
            onChanged!(value!);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? '',
        hintStyle: hintStyle ??
            defaultTextTheme.bodyLarge!.copyWith(
              color: const Color(0xFFB0B2BC),
            ),
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 9.v),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFB0B2BC),
              ),
            ),
        enabledBorder: borderDecoration ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFB0B2BC),
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.h),
              borderSide: const BorderSide(
                color: Color(0xFFB9BCC3),
              ),
            ),
      );
}
