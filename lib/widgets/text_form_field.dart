// 🎯 Dart imports:
import 'dart:ui';

// 🐦 Flutter imports:
import 'package:flutter/gestures.dart';
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
    this.borderDecoration,
    this.contentPadding,
    this.controller,
    this.fillColor,
    this.focusNode,
    this.hintStyle,
    this.hintText,
    this.initialValue,
    this.inputFormatters,
    this.margin,
    this.maxLength,
    this.onChanged,
    this.onEditingComplete,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.textStyle,
    this.validator,
    this.width,
    this.autocorrect = true,
    this.autofillHints = const <String>[],
    this.autofocus = false,
    this.canRequestFocus = true,
    this.clipBehavior = Clip.hardEdge,
    this.cursorWidth = 2.0,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enabled = true,
    this.enableSuggestions = true,
    this.filled = false,
    this.maxLines = 1,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.readOnly = false,
    this.scribbleEnabled = true,
    this.scrollPadding = const EdgeInsets.all(20),
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
  })  : assert(onChanged != null || controller != null,
            'onChanged, controller 하나 이상은 제공하여야 합니다.'),
        assert(!(onChanged != null && controller != null),
            'onChanged, controller 둘 다 지정할 수 없습니다.'),
        assert(controller == null || initialValue == null,
            'initialValue 와 controller 둘 다 사용할 수 없습니다.'),
        assert(initialValue == null || controller == null),
        assert(obscuringCharacter.length == 1, '보안문자는 한 글자여야 합니다.'),
        assert(maxLines == null || maxLines > 0, '최대 라인 수는 기본값인 1 이상이어야 합니다.'),
        assert(!obscureText || maxLines == 1, '패스워드 필드는 여러 줄로 표시할 수 없습니다.'),
        assert(
            maxLength == null ||
                maxLength == TextField.noMaxLength ||
                maxLength > 0,
            '최대 길이 수가 정해져 있는 경우 1 이상이어야 합니다.');

  final bool? autofill;
  final bool? enabled;
  final bool? filled;
  final Alignment? alignment;
  final List<String>? autofillHints;
  final Function(String)? onChanged;
  final void Function()? onEditingComplete;

  final BoxConstraints? prefixConstraints;
  final BoxConstraints? suffixConstraints;
  final Color? fillColor;
  final double? width;
  final EdgeInsets? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final InputBorder? borderDecoration;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Widget? prefix;
  final Widget? suffix;

  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final bool autofocus;
  final bool readOnly;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  final int? maxLines;
  final double cursorWidth;
  final EdgeInsets scrollPadding;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final DragStartBehavior dragStartBehavior;
  final Clip clipBehavior;
  final bool scribbleEnabled;
  final bool canRequestFocus;

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
          textCapitalization: textCapitalization,
          textAlign: textAlign,
          autofocus: autofocus,
          readOnly: readOnly,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          autocorrect: autocorrect,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines ?? 1,
          cursorWidth: cursorWidth,
          scrollPadding: scrollPadding,
          selectionHeightStyle: selectionHeightStyle,
          selectionWidthStyle: selectionWidthStyle,
          dragStartBehavior: dragStartBehavior,
          clipBehavior: clipBehavior,
          scribbleEnabled: scribbleEnabled,
          canRequestFocus: canRequestFocus,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete ?? focusNode?.nextFocus,
          maxLength: maxLength,
          inputFormatters: inputFormatters ?? [],
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofillHints: autofillHints ?? [],
          autovalidateMode: (autofill ?? false)
              ? AutovalidateMode.always
              : AutovalidateMode.onUserInteraction,
          style: textStyle ?? CustomTextStyles.bodyLargeGray50002,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: decoration,
          validator: validator,
          enabled: enabled,
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
