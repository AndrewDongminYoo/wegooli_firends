// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
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
  }) : super(key: key);

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

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

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: searchViewWidget)
        : searchViewWidget;
  }

  Widget get searchViewWidget => Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyLargeGray50002,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator));
  InputDecoration get decoration => InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray50002,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix ??
          Padding(
              padding: EdgeInsets.only(right: getHorizontalSize(15)),
              child: IconButton(
                  onPressed: () => controller!.clear(),
                  icon: Icon(Icons.clear, color: Color(0xFF757575)))),
      suffixIconConstraints: suffixConstraints,
      isDense: true,
      contentPadding:
          contentPadding ?? getPadding(left: 12, top: 14, bottom: 14),
      fillColor: fillColor,
      filled: filled,
      border: borderDecoration ??
          OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(5)),
              borderSide:
                  BorderSide(color: theme.colorScheme.onError, width: 1)),
      enabledBorder: borderDecoration ??
          OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(5)),
              borderSide:
                  BorderSide(color: theme.colorScheme.onError, width: 1)),
      focusedBorder: borderDecoration ??
          OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHorizontalSize(5)),
              borderSide:
                  BorderSide(color: theme.colorScheme.onError, width: 1)));
}
