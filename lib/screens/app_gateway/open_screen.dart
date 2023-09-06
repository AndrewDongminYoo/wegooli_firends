// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RouteItem extends StatelessWidget {
  final String routeDestination;
  final String routeName;

  const RouteItem({
    super.key,
    required this.routeDestination,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeDestination);
      },
      child: Container(
        decoration: AppDecoration.fillOnSecondary,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                child: Text(
                  routeName,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: appTheme.black900,
                      fontSize: getFontSize(20),
                      fontFamily: FontFamily.roboto,
                      fontWeight: FontWeight.w400),
                ),
              )),
          Padding(
              padding: getPadding(top: 5),
              child: Divider(
                  height: getVerticalSize(1),
                  thickness: getVerticalSize(1),
                  color: appTheme.blueGray400))
        ]),
      ),
    );
  }
}
