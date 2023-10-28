// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/list_extensions.dart';
import '/data/common/dropdown_data.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
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
              color: Palette.fontBlack66,
            ),
        items: options.mapTo((DropdownData option) {
          return DropdownMenuItem<DropdownData>(
            value: option,
            child: Text(
              option.title,
              overflow: TextOverflow.ellipsis,
              style:
                  hintStyle ?? textTheme.bodyLarge!.tint(Palette.blueGray200),
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
        hintStyle: hintStyle ?? textTheme.bodyLarge!.tint(Palette.blueGray200),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 9.h),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.w),
          borderSide: BorderSide(
            width: borderWidth ?? 1.0,
            color: borderColor ?? Palette.blueGray200,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.w),
          borderSide: BorderSide(
            width: borderWidth ?? 1.0,
            color: borderColor ?? Palette.blueGray200,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.w),
          borderSide: BorderSide(
            width: borderWidth ?? 1.0,
            color: borderColor ?? Palette.gray400,
          ),
        ),
      );
}
