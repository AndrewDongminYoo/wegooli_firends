// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class RouteModal extends StatelessWidget {
  RouteModal({
    super.key,
    this.dialog,
    this.bottomSheet,
    required this.dialogTitle,
  }) : assert(!(dialog == null && bottomSheet == null));

  final Widget? dialog;
  final Widget? bottomSheet;
  final String dialogTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        dialog != null
            ? Get.dialog(dialog!)
            : Get.bottomSheet(bottomSheet!, isScrollControlled: true);
      },
      child: Container(
        decoration: AppDecoration.fillOnSecondary,
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                child: Text(
                  dialogTitle,
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
