// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dropdown_button2/dropdown_button2.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import '/core/utils/size_utils.dart';
import '/data/models/dropdown_data.dart';
import '/theme/theme_helper.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    super.key,
    required this.options,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.contentPadding,
    this.hintStyle,
    this.hintText,
    this.icon,
    this.margin,
    this.onChanged,
    this.textStyle,
    this.validator,
    this.width,
  });

  final double? width;
  final EdgeInsets? contentPadding;
  final EdgeInsetsGeometry? margin;
  final FormFieldValidator<DropdownData>? validator;
  final Function(DropdownData)? onChanged;
  final Color? borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final List<DropdownData> options;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: DropdownButtonFormField2<DropdownData>(
        style: textStyle ??
            textTheme.titleMedium!.copyWith(
              color: lightTheme.onPrimary.withOpacity(0.4),
            ),
        items: options.mapTo((DropdownData option) {
          return DropdownMenuItem<DropdownData>(
            value: option,
            child: Text(
              option.title,
              overflow: TextOverflow.ellipsis,
              style: hintStyle ??
                  textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFFB0B2BC),
                  ),
            ),
          );
        }),
        decoration: decoration,
        validator: validator,
        onChanged: (value) {
          onChanged!(value!);
        },
      ),
    );
  }

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? '',
        hintStyle: hintStyle ??
            textTheme.bodyLarge!.copyWith(
              color: const Color(0xFFB0B2BC),
            ),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 9.v),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.h),
          borderSide: BorderSide(
            width: borderWidth ?? 1.0,
            color: borderColor ?? const Color(0xFFB0B2BC),
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.h),
          borderSide: BorderSide(
            width: borderWidth ?? 1.0,
            color: borderColor ?? const Color(0xFFB0B2BC),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.h),
          borderSide: BorderSide(
            width: borderWidth ?? 1.0,
            color: borderColor ?? const Color(0xFFB9BCC3),
          ),
        ),
      );
}
