// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.autofocus = true,
    this.enabled = true,
    this.filled = false,
    this.obscureText = false,
    this.prefixConstraints,
    this.suffixConstraints,
    this.fillColor,
    this.width,
    this.contentPadding,
    this.margin,
    this.focusNode,
    this.validator,
    this.borderDecoration,
    this.maxLines,
    this.hintText,
    this.initialValue,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.hintStyle,
    this.textStyle,
    this.prefix,
    this.suffix,
    this.inputFormatters = const [],
    this.obscureChar = '*',
  }) : super(key: key);

  final Alignment? alignment;
  final bool? autofocus;
  final bool? enabled;
  final bool? filled;
  final bool? obscureText;
  final BoxConstraints? prefixConstraints;
  final BoxConstraints? suffixConstraints;
  final Color? fillColor;
  final double? width;
  final EdgeInsets? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final InputBorder? borderDecoration;
  final int? maxLines;
  final List<TextInputFormatter> inputFormatters;
  final String obscureChar;
  final String? hintText;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget)
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
          obscuringCharacter: obscureChar,
          inputFormatters: inputFormatters,
          obscureText: obscureText!,
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyLargeGray50002,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          enabled: enabled,
          onEditingComplete: () => FocusScope.of(Get.context!).nextFocus(),
          initialValue: initialValue));
  InputDecoration get decoration => InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray50002,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: enabled != true ? Color(0x33A4A8AF) : fillColor,
      filled: enabled != true ? true : filled,
      isDense: true,
      contentPadding: contentPadding ??
          getPadding(left: 12, top: 14, right: 12, bottom: 14),
      counterText: "",
      border: borderDecoration ??
          createBorderSide(Color(0xFFB9BCC3)),
      enabledBorder: borderDecoration ??
          createBorderSide(Color(0xFFB9BCC3)),
      focusedBorder: borderDecoration ??
          createBorderSide(Color(0xFFFFE041)),
      disabledBorder: borderDecoration ??
          createBorderSide(Color(0xFFB9BCC3)),
      errorBorder: borderDecoration ??
          createBorderSide(Color(0xFFDB4646)),
      focusedErrorBorder: borderDecoration ??
          createBorderSide(Color(0xFFFFE041)),
    );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static UnderlineInputBorder get underLineGray =>
      UnderlineInputBorder(borderSide: BorderSide(color: appTheme.gray300));
  static OutlineInputBorder get outlineOnErrorTL5 => OutlineInputBorder(
      borderRadius: BorderRadius.circular(getHorizontalSize(5)),
      borderSide: BorderSide(color: theme.colorScheme.onError, width: 1));
  static OutlineInputBorder get fillOnPrimary =>
      OutlineInputBorder(borderSide: BorderSide.none);
  static OutlineInputBorder get fillPrimary => OutlineInputBorder(
      borderRadius: BorderRadius.circular(getHorizontalSize(5)),
      borderSide: BorderSide.none);
  static OutlineInputBorder get fillBlueGray => OutlineInputBorder(
      borderRadius: BorderRadius.circular(getHorizontalSize(18)),
      borderSide: BorderSide.none);
}

InputBorder createBorderSide(Color borderColor, {double radius = 5.0}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getHorizontalSize(radius)),
    borderSide: BorderSide(
      color: borderColor,
      width: 1,
    ),
  );
}
