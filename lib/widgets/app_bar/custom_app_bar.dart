// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

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
        toolbarHeight: height ?? getVerticalSize(55),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        flexibleSpace: _getStyle(),
        leadingWidth: leadingWidth ?? 0,
        leading: leading,
        title: title,
        titleSpacing: 0,
        centerTitle: centerTitle ?? false,
        actions: actions);
  }

  @override
  Size get preferredSize =>
      Size(mediaQueryData.size.width, height ?? getVerticalSize(55));
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
            height: getVerticalSize(45),
            width: double.maxFinite,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: appTheme.blueGray30033,
                        width: getHorizontalSize(1)))));
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
}
