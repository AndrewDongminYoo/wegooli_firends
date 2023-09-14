// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RouteModal extends StatefulWidget {
  RouteModal({
    super.key,
    this.dialog,
    this.bottomSheet,
    required this.dialogTitle,
  }) : super() {
    assert(!(dialog == null && bottomSheet == null));
  }
  final Widget? dialog;
  final Widget? bottomSheet;
  final String dialogTitle;

  @override
  State<RouteModal> createState() => _RouteModalState();
}

class _RouteModalState extends State<RouteModal> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.dialog != null
            ? Get.dialog(widget.dialog!)
            : Get.bottomSheet(widget.bottomSheet!, isScrollControlled: true);
      },
      child: Container(
        decoration: AppDecoration.fillOnSecondary,
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                child: Text(
                  widget.dialogTitle,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
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
                  color: appTheme.blueGray400)),
        ]),
      ),
    );
  }
}
