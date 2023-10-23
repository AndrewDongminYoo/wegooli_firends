// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/fonts.gen.dart';
import '/theme/custom_text_style.dart';
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
                padding: getPadding(horizontal: 20, vertical: 10),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyle(
                      color: Colors.black,
                      fontSize: TextSize.xl,
                      fontFamily: FontFamily.roboto),
                ),
              )),
          Padding(
              padding: getPadding(top: 5),
              child: Divider(
                  height: 1.v, thickness: 1.v, color: Palette.blueGray400)),
        ]),
      ),
    );
  }
}
