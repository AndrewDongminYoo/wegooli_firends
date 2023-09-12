// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
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
  Widget _getStyle() {
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
        return const SizedBox.shrink();
    }
  }

  static AppBar minimalAppBar(
    String? titleText, {
    void Function()? onTapLeading,
  }) {
    return AppBar(
        toolbarHeight: getVerticalSize(52),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 0,
        title: AppbarTitle(text: titleText ?? 'FRIENDS'),
        titleSpacing: 0,
        centerTitle: true,
       );
  }

  static CustomAppBar getDefaultAppBar(
    String? titleText, {
    void Function()? onTapLeading,
  }) {
    return CustomAppBar(
        height: getVerticalSize(53),
        leadingWidth: 34,
        leading: CustomImageView(
            height: getSize(18),
            width: getSize(18),
            svgPath: Assets.svg.imgArrowLeft.path,
            margin: getMargin(left: 16, top: 19, bottom: 16),
            onTap: () {
              onTapLeading != null ? onTapLeading.call() : goBack();
            }),
        centerTitle: true,
        title: AppbarTitle(text: titleText ?? 'FRIENDS'));
  }

  static CustomAppBar getFriendsTypoAppBar() {
    return CustomAppBar(
        height: getVerticalSize(45),
        centerTitle: true,
        title: CustomImageView(
            height: getVerticalSize(17),
            width: getHorizontalSize(88),
            svgPath: Assets.svg.imgFriendsTypo.path),
        styleType: Style.bgOutline);
  }
}

enum Style {
  bgOutline,
}
