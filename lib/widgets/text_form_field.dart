// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/lib.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
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
    this.inputFormatters = const [],
    this.obscureChar = '*',
    required this.controller,
  }) : super(key: key);

  final bool? autofocus;
  final bool? autofill;
  final bool? enabled;
  final bool? filled;
  final Alignment? alignment;
  final List<String>? autofillHints;

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
            child: textFormFieldWidget(context))
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
          obscuringCharacter: obscureChar,
          inputFormatters: inputFormatters,
          obscureText: obscureText!,
          controller: controller,
          autofocus: autofocus!,
          focusNode: focusNode,
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
          onEditingComplete: () => FocusScope.of(context).nextFocus(),
          initialValue: initialValue));
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? '',
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray50002,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: enabled != true ? appTheme.blueGray30033 : fillColor,
        filled: enabled != true ? true : filled,
        isDense: true,
        contentPadding: contentPadding ??
            getPadding(left: 12, top: 14, right: 12, bottom: 14),
        counterText: '',
        border: borderDecoration ?? createBorderSide(appTheme.gray400),
        enabledBorder: borderDecoration ?? createBorderSide(appTheme.gray400),
        focusedBorder:
            borderDecoration ?? createBorderSide(ColorConstant.wegooli),
        disabledBorder: borderDecoration ?? createBorderSide(appTheme.gray400),
        errorBorder: borderDecoration ?? createBorderSide(appTheme.red600),
        focusedErrorBorder:
            borderDecoration ?? createBorderSide(ColorConstant.wegooli),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static UnderlineInputBorder get underLineGray =>
      UnderlineInputBorder(borderSide: BorderSide(color: appTheme.gray300));
  static OutlineInputBorder get outlineOnErrorTL5 => OutlineInputBorder(
      borderRadius: BorderRadius.circular(getHorizontalSize(5)),
      borderSide: BorderSide(color: appTheme.supernova));
  static OutlineInputBorder get fillOnPrimary =>
      const OutlineInputBorder(borderSide: BorderSide.none);
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
    borderSide: BorderSide(color: borderColor),
  );
}
