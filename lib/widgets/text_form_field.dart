// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// TODO: 인풋 창의 값에 따라 스타일 변경( 노란색 디폴트 아님
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

  /// 텍스트인풋 상태별 스타일
  /// 기본 (입력전) - 회색 테두리, 조금 더 연한 글씨색
  /// 초기화값 있는 경우
  ///   readonly: 진한 회색 테두리, 회색 음영, 진한 글씨색, 작성 불가
  ///   readonly x: 기본 스타일과 같음.
  /// validation 있는 경우
  ///   (잘못된 값일떄) - 빨간색 테두리, 빨간색 에러문구
  ///   (올바른 값일때) - 초록색 테두리, 문구 없음

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
          initialValue: initialValue));
  InputDecoration get decoration => InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray50002,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: fillColor,
      filled: filled,
      isDense: true,
      contentPadding: contentPadding ??
          getPadding(left: 12, top: 14, right: 12, bottom: 14),
      counterText: "",
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
