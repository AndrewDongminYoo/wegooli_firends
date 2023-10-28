// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';

class RouteItem extends StatelessWidget {
  const RouteItem({
    super.key,
    required this.routeName,
    required this.title,
  });

  final String routeName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(routeName);
      },
      child: Container(
        decoration: BoxDecoration(color: lightTheme.onSecondary),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                    color: Colors.black,
                    fontSize: TextSize.xl,
                    fontFamily: FontFamily.roboto,
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Divider(
                  height: 1.h, thickness: 1.h, color: Palette.blueGray400)),
        ]),
      ),
    );
  }
}
