// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

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

  CustomAppBar.getDefaultAppBar(
    String? titleText, {
    Key? key,
    void Function()? onTapLeading,
  }) : this(
            key: key,
            height: 53.v,
            leadingWidth: 34,
            leading: CustomImageView(
                height: 18.adaptSize,
                width: 18.adaptSize,
                svgPath: Assets.svg.imgArrowLeft.path,
                margin: getMargin(left: 16, top: 19, bottom: 16),
                onTap: () {
                  onTapLeading != null ? onTapLeading.call() : goBack();
                }),
            centerTitle: true,
            title: AppbarTitle(text: titleText ?? 'FRIENDS'));

  CustomAppBar.getFriendsTypoAppBar({Key? key})
      : this(
            key: key,
            height: 45.v,
            centerTitle: true,
            title: CustomImageView(
                height: 17.v,
                width: 88.h,
                fit: BoxFit.contain,
                svgPath: Assets.brand.friendsByWegooli.path),
            styleType: Style.bgOutline);

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
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
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
  Size get preferredSize => Size(mediaQueryData.size.width, height ?? 55.v);
  Container? _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
            height: 45.v,
            width: double.maxFinite,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: appTheme.blueGray30033, width: 1.h))));
      case Style.bgOutline_1:
        return Container(
            height: 45.v,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border(
                  bottom: BorderSide(color: appTheme.blueGray30033, width: 1.h),
                )));
      case Style.bgFill:
        return Container(
            height: 50.v,
            width: double.maxFinite,
            decoration:
                BoxDecoration(color: theme.colorScheme.onPrimaryContainer));
      default:
        return null;
    }
  }

  static AppBar minimalAppBar(
    String? titleText, {
    void Function()? onTapLeading,
  }) =>
      AppBar(
        toolbarHeight: 52.v,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leadingWidth: 0,
        title: AppbarTitle(text: titleText ?? 'FRIENDS'),
        titleSpacing: 0,
        centerTitle: true,
      );
}

enum Style {
  bgOutline_1,
  bgOutline,
  bgFill,
}
