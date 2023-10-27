// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  });

  final Alignment? alignment;
  final bool? value;
  final Function(bool) onChange;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: lightTheme.onPrimaryContainer,
        thumbColor: const Color(0xFFB9BCC3),
        activeColor: lightTheme.primary,
        onChanged: onChange,
      );
}
