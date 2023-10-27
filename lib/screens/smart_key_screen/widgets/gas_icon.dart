// 🐦 Flutter imports:
import 'package:flutter/widgets.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/image_view.dart';

CustomImageView gasStationIcon({required int level, VoidCallback? onTap}) {
  return customIcon(
    _getAssetSvgImage(level),
    size: 26.adaptSize,
    onTap: onTap,
  );
}

String _getAssetSvgImage(int level) {
  switch ((level / 10).round()) {
    case 1:
      return Assets.svg.gas.imgGasPer10.path;
    case 2:
      return Assets.svg.gas.imgGasPer20.path;
    case 3:
      return Assets.svg.gas.imgGasPer30.path;
    case 4:
      return Assets.svg.gas.imgGasPer40.path;
    case 5:
      return Assets.svg.gas.imgGasPer50.path;
    case 6:
      return Assets.svg.gas.imgGasPer60.path;
    case 7:
      return Assets.svg.gas.imgGasPer70.path;
    case 8:
      return Assets.svg.gas.imgGasPer80.path;
    case 9:
      return Assets.svg.gas.imgGasPer90.path;
    case 10:
      return Assets.svg.gas.imgGasPer100.path;
    default:
      return Assets.svg.gas.imgEmptyGas.path;
  }
}
