// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.counterText,
    this.counterStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  });

  final Alignment? alignment;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final String? counterText;
  final TextStyle? hintStyle;
  final TextStyle? counterStyle;
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
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? textTheme.bodyLarge,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        counterText: counterText,
        counterStyle: counterStyle,
        hintText: hintText ?? '',
        hintStyle:
            hintStyle ?? textTheme.bodyLarge!.tint(const Color(0xFFB0B2BC)),
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 9.h),
        fillColor: fillColor ?? lightTheme.onPrimaryContainer,
        filled: filled,
        border: borderDecoration ??
            UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5.w),
              borderSide: const BorderSide(
                color: Color(0xFFB9BCC3),
              ),
            ),
        enabledBorder: borderDecoration ??
            UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5.w),
              borderSide: const BorderSide(
                color: Color(0xFFB9BCC3),
              ),
            ),
        focusedBorder: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: lightTheme.primary,
                width: 2.w,
              ),
            ),
        focusedErrorBorder: borderDecoration ??
            UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4.w),
              borderSide: BorderSide(
                color: Palette.red600,
                width: 2.w,
              ),
            ),
      );
}

/// 모든 유형의 테두리 스타일 등을 쉽게 포함할 수 있도록 [CustomTextFormField]를 확장합니다.
extension TextFormFieldStyleHelper on CustomTextFormField {
  static UnderlineInputBorder get fillBlueGray => UnderlineInputBorder(
        borderRadius: BorderRadius.circular(18.w),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get outlineGrayTL5 => UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5.w),
        borderSide: const BorderSide(
          color: Color(0xFFB9BCC3),
        ),
      );
}
