// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.alignment,
    this.autofill,
    this.autofillHints,
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
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.hintStyle,
    this.textStyle,
    this.prefix,
    this.suffix,
    this.maxLength,
    this.inputFormatters,
    this.obscureChar = '*',
    this.onChanged,
    this.controller,
  }) : assert(onChanged != null || controller != null,
            'onChanged, controller 하나 이상은 제공하여야 합니다.');

  final bool? autofocus;
  final bool? autofill;
  final bool? enabled;
  final bool? filled;
  final Alignment? alignment;
  final List<String>? autofillHints;
  final Function(String)? onChanged;

  /// [true]이면 데코레이션 컨테이너가 [fillColor]로 채워집니다.
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
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
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
          onChanged: onChanged,
          obscuringCharacter: obscureChar,
          maxLength: maxLength,
          inputFormatters: inputFormatters ?? [],
          obscureText: obscureText!,
          controller: controller,
          autofocus: autofocus!,
          focusNode: focusNode ?? FocusNode(),
          autofillHints: autofillHints ?? [],
          autovalidateMode: (autofill ?? false)
              ? AutovalidateMode.always
              : AutovalidateMode.onUserInteraction,
          style: textStyle ?? CustomTextStyles.bodyLargeGray50002,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          enabled: enabled,
          readOnly: !enabled!,
          initialValue: initialValue));
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? '',
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray50002,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor ?? appTheme.blueGray30033,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v),
        counterText: '',
        border: borderDecoration ?? createBorderSide(appTheme.gray400),
        enabledBorder: borderDecoration ?? createBorderSide(appTheme.gray400),
        disabledBorder: borderDecoration ?? createBorderSide(appTheme.gray400),
        errorBorder: borderDecoration ?? createBorderSide(appTheme.red600),
        focusedBorder:
            borderDecoration ?? createBorderSide(ColorConstant.wegooli),
        focusedErrorBorder:
            borderDecoration ?? createBorderSide(ColorConstant.wegooli),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineGrayTL5 => OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.h),
      borderSide: BorderSide(color: appTheme.gray400));
  static OutlineInputBorder get outlineGray1 =>
      OutlineInputBorder(borderSide: BorderSide(color: appTheme.gray700));
  static OutlineInputBorder get outlineGray2 =>
      OutlineInputBorder(borderSide: BorderSide(color: appTheme.gray700));
  static OutlineInputBorder get outlineGrayTL4 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.h),
        borderSide: BorderSide(color: appTheme.gray700),
      );
  static OutlineInputBorder get fillOnPrimaryContainer =>
      const OutlineInputBorder(borderSide: BorderSide.none);
  static OutlineInputBorder get fillBlueGray => OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.h), borderSide: BorderSide.none);
  static OutlineInputBorder get outlineBlueGray =>
      OutlineInputBorder(borderSide: BorderSide(color: appTheme.blueGray200));
  static OutlineInputBorder get outlineBlueGrayTL3 => OutlineInputBorder(
      borderRadius: BorderRadius.circular(3.h),
      borderSide: BorderSide(color: appTheme.blueGray200));
  static OutlineInputBorder get outlineOnPrimary => OutlineInputBorder(
      borderRadius: BorderRadius.circular(3.h),
      borderSide: BorderSide(color: theme.colorScheme.onPrimary));
  static OutlineInputBorder get outlineBlueGray1 =>
      OutlineInputBorder(borderSide: BorderSide(color: appTheme.blueGray200));
}

InputBorder createBorderSide(Color borderColor, {double radius = 5.0}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius.h),
      borderSide: BorderSide(
        color: borderColor,
      ));
}
