// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  });

  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 55.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 55.v,
      );
  Container? _getStyle() {
    switch (styleType) {
      case Style.bgOutline_1:
        return Container(
          height: 45.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
            border: Border(
              bottom: BorderSide(
                color: const Color(0x33A4A8AF),
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgOutline:
        return Container(
          height: 45.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: const Color(0x33A4A8AF),
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgOutline_2:
        return Container(
          height: 45.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
            border: Border(
              bottom: BorderSide(
                color: const Color(0xFFB9BCC3),
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: 50.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline_1,
  bgOutline,
  bgOutline_2,
  bgFill,
}
