// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// SingletonFlutterView는 곧 지원될 다중 뷰 및 다중 창에 대한 Flutter의 지원을 준비하기 위해 더 이상 사용되지 않습니다.
/// [BuildContext]를 사용할 수 있는 경우, [View.of]를 통해 해당 컨텍스트와 연결된 현재 [FlutterView]를 조회하세요.
/// [window] 프로퍼티에서 마이그레이션하려면 [View.of]를 [BuildContext]와 함께 사용하는 것이 좋습니다.
/// [FlutterView]를 조회할 수 있는 컨텍스트가 없는 경우, 이 위젯바인딩에 의해 노출된 [platformDispatcher]를 플랫폼별 기능에 직접 사용할 수 있습니다.
MediaQueryData mediaQueryData = MediaQueryData.fromView(
    WidgetsBinding.instance.platformDispatcher.views.first);

/// 주의! 이 값들이 정적 UI를 빌드하는 데 사용되는 정적 값이라고 생각하면 안 됩니다.
/// 이들은 피그마 디자인의 뷰포트 값입니다.
/// 코드에서 UI를 반응형으로 만들기 위한 참조로 사용됩니다.
const num FIGMA_DESIGN_WIDTH = 360;
const num FIGMA_DESIGN_HEIGHT = 640;
const num FIGMA_DESIGN_STATUS_BAR = 0;

/// 이 메서드는 디바이스 뷰포트 너비를 가져오는 데 사용됩니다.
get _width {
  return mediaQueryData.size.width;
}

/// 이 메서드는 디바이스 뷰포트 높이를 가져오는 데 사용됩니다.
get _height {
  num statusBar = mediaQueryData.viewPadding.top;
  num bottomBar = mediaQueryData.viewPadding.bottom;
  num screenHeight = mediaQueryData.size.height - statusBar - bottomBar;
  return screenHeight;
}

/// 이 메서드는 뷰포트 너비에 따라 화면 또는 위젯의 패딩/여백(왼쪽 및 오른쪽) 및 너비를 설정하는 데 사용됩니다.
double getHorizontalSize(double px) {
  return ((px * _width) / FIGMA_DESIGN_WIDTH);
}

/// 이 메서드는 뷰포트 높이에 따라 화면 또는 위젯의 패딩/여백(위쪽 및 아래쪽) 및 높이를 설정하는 데 사용됩니다.
double getVerticalSize(double px) {
  return ((px * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR));
}

/// 이 메서드는 이미지 높이와 너비의 최소 픽셀을 설정하는 데 사용됩니다.
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toDoubleValue();
  } else {
    return width.toDoubleValue();
  }
}

/// 이 메서드는 뷰포트에 따라 텍스트 폰트 크기를 설정하는 데 사용됩니다.
double getFontSize(double px) {
  return getSize(px);
}

/// 이 메서드는 패딩을 반응형으로 설정하는 데 사용됩니다.
EdgeInsets getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

/// 이 메서드는 여백을 반응형으로 설정하는 데 사용됩니다.
EdgeInsets getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

/// 이 방법은 패딩이나 여백을 반응형으로 가져오는 데 사용됩니다.
EdgeInsets getMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(left ?? 0),
    top: getVerticalSize(top ?? 0),
    right: getHorizontalSize(right ?? 0),
    bottom: getVerticalSize(bottom ?? 0),
  );
}

extension FormatExtension on double {
  /// Return a [double] value with formatted according to provided fractionDigits
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }
}
