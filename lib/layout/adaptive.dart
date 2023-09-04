// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:dual_screen/dual_screen.dart';

/// 홈 화면에서 각 항목이 차지하는 최대 너비입니다.
const maxHomeItemWidth = 1400.0;

/// 창이 중간 크기로 간주되는지 또는 큰 크기로 간주되는지 여부에 따라 boolean 값을 반환합니다.
///
/// 접을 수 있는 데스크톱 장치에서 실행하는 경우 디스플레이는 데스크톱으로 간주되지 않습니다.
/// 이 메서드를 사용하는 위젯은 디스플레이가 특정 레이아웃에 충분히 큰 것으로 간주할 수 있지만,
/// 디스플레이의 일부만 해당 위젯에 사용할 수 있는 폴더블 디바이스에서는 그렇지 않습니다.
///
/// 적응형 및 반응형 레이아웃을 빌드하는 데 사용됩니다.
bool isDisplayDesktop(BuildContext context) =>
    !isDisplayFoldable(context) &&
    getWindowType(context) >= AdaptiveWindowType.medium;

/// 창이 중간 크기로 간주되는지 여부에 대한 boolean 값을 반환합니다.
///
/// 적응형 및 반응형 레이아웃을 빌드하는 데 사용됩니다.
bool isDisplaySmallDesktop(BuildContext context) {
  return getWindowType(context) == AdaptiveWindowType.medium;
}

/// 디스플레이에 화면을 왼쪽 및 오른쪽 하위 화면 두 개로 분할하는 힌지가 있는지 여부를 boolean 값으로 반환합니다.
/// 이 애플리케이션에서는 가로 분할(상단 및 하단 하위 화면)이 무시됩니다.
bool isDisplayFoldable(BuildContext context) {
  final hinge = MediaQuery.of(context).hinge;
  if (hinge == null) {
    return false;
  } else {
    // Vertical
    return hinge.bounds.size.aspectRatio < 1;
  }
}
