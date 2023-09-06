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
      height: mediaQueryData.size.height - getVerticalSize(200),
      width: mediaQueryData.size.width,
      decoration: const BoxDecoration(color: const Color(0x33A4A8AF)),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: getHorizontalSize(180),
          height: getVerticalSize(44),
          decoration: BoxDecoration(
              color: const Color(0x66222222),
              borderRadius: BorderRadius.circular(100)),
          child: Text(
            controller.availableNow.value
                ? l10ns.hongGilDongIsUsingIt(controller.driverName.text)
                : l10ns.available,
            style:
                const TextStyle(color: const Color(0xFFFFFFFF), fontSize: 16),
          ),
        ),
      ),
    );
  }
}
