// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/colors.gen.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/base_button.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.focusNode,
    this.isDisabled = false,
    this.isLoading = false,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;
  final FocusNode? focusNode;
  @override
  // ignore: overridden_fields
  final bool isDisabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => StatefulBuilder(
        builder: (context, setState) {
          return Container(
            height: height ?? 52.h,
            width: width ?? double.maxFinite,
            margin: margin,
            decoration: decoration,
            child: ElevatedButton(
              focusNode: focusNode,
              style: buttonStyle ?? defaultButtontStyle,
              onPressed: (isDisabled || isLoading) ? null : onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isLoading)
                    const CircularProgressIndicator(
                      color: AppColors.neutralGray,
                      strokeWidth: 2,
                    )
                  else
                    Text(
                      text,
                      style: buttonTextStyle ??
                          textTheme.titleMedium!
                              .copyWith(fontSize: TextSize.lg),
                    ),
                ],
              ),
            ),
          );
        },
      );
}
