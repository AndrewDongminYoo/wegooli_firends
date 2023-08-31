// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class RouteModal extends StatelessWidget {
  RouteModal({
    super.key,
    this.dialog,
    this.bottomSheet,
    required this.dialogTitle,
  }) : super() {
    assert(!(dialog == null && bottomSheet == null));
  }
  Widget? dialog;
  Widget? bottomSheet;
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding:
                          getPadding(left: 20, top: 10, right: 20, bottom: 10),
                      child: Text(dialogTitle,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: appTheme.black900,
                              fontSize: getFontSize(20),
                              fontFamily: FontFamily.roboto,
                              fontWeight: FontWeight.w400)))),
              Padding(
                  padding: getPadding(top: 5),
                  child: Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: appTheme.blueGray400))
            ])));
  }
}
