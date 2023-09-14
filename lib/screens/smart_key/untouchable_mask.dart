// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UntouchableMask extends GetView<VehicleController> {
  const UntouchableMask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: mediaQueryData.size.height - getVerticalSize(270),
        decoration: const BoxDecoration(color: ColorConstant.neutralDisabled),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: getHorizontalSize(180),
            height: getVerticalSize(44),
            decoration: BoxDecoration(
                color: ColorConstant.fontBlackDisabled,
                borderRadius: BorderRadius.circular(100)),
            child: Text(
              controller.availableNow.value
                  ? l10ns.hongGilDongIsUsingIt(controller.driverName.text)
                  : l10ns.available,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ));
  }
}
