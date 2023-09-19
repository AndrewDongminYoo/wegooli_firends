// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class RouteItem extends StatelessWidget {
  const RouteItem({
    super.key,
    required this.routeDestination,
    required this.routeName,
  });
  final String routeDestination;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeDestination);
      },
      child: Container(
        decoration: AppDecoration.fillOnSecondary,
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                child: Text(
                  routeName,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.fSize,
                      fontFamily: FontFamily.roboto,
                      fontWeight: FontWeight.w400),
                ),
              )),
          Padding(
              padding: getPadding(top: 5),
              child: Divider(
                  height: 1.v, thickness: 1.v, color: appTheme.blueGray400)),
        ]),
      ),
    );
  }
}
