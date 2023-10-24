// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle = true,
    this.actions,
  });

  final bool? centerTitle;
  final double? height;
  final double? leadingWidth;
  final List<Widget>? actions;
  final Style? styleType;
  final Widget? leading;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 55.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _flexibleSpace,
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
  Container? get _flexibleSpace {
    switch (styleType) {
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
      case Style.bgOutline_1:
        return Container(
          height: 45.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
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
            color: const Color(0xFFFFFFFF),
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
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
  bgOutline_1,
  bgOutline_2,
  bgFill,
}

class GetBackIcon extends StatelessWidget {
  const GetBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      svgPath: Assets.svg.icoArrowLeft.path,
      margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
      onTap: GoRouter.of(context).pop,
    );
  }
}
