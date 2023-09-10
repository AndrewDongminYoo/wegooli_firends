// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart' show CupertinoSwitch;
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(key: key);

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
                alignment: alignment ?? Alignment.center, child: switchWidget)
            : switchWidget);
  }

  /// 토글 기능 쿠퍼티노 스타일로 통일
  Widget get switchWidget => CupertinoSwitch(
      value: value ?? false,
      trackColor: theme.colorScheme.onPrimaryContainer,
      thumbColor: theme.colorScheme.onError,
      activeColor: theme.colorScheme.primary,
      onChanged: onChange);
}
