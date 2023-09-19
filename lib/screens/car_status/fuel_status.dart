// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class FuelStatus extends GetView<VehicleController> {
  const FuelStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return getGasImg(level: controller.level).svg(
      semanticsLabel: controller.terminalDevice.fuel,
      height: 24.adaptSize,
      width: 24.adaptSize,
    );
  }

  SvgGenImage getGasImg({required int level}) {
    switch (level) {
      case 0:
      case 1:
        return Assets.svg.gas.imgGasPer10;
      case 2:
        return Assets.svg.gas.imgGasPer20;
      case 3:
        return Assets.svg.gas.imgGasPer30;
      case 4:
        return Assets.svg.gas.imgGasPer40;
      case 5:
        return Assets.svg.gas.imgGasPer50;
      case 6:
        return Assets.svg.gas.imgGasPer60;
      case 7:
        return Assets.svg.gas.imgGasPer70;
      case 8:
        return Assets.svg.gas.imgGasPer80;
      case 9:
        return Assets.svg.gas.imgGasPer90;
      case 10:
        return Assets.svg.gas.imgGasPer100;
      default:
        return Assets.svg.gas.imgGasPer100;
    }
  }
}
