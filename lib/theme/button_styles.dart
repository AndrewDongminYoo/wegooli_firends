// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/gen/colors.gen.dart';
import '/theme/app_decoration.dart';
import 'text_styles.dart';

/// 시각적 밀도의 기본값은 세로 및 가로 밀도 모두 0이며, 이는 [VisualDensity.standard]에 해당합니다.
/// 텍스트 크기, 아이콘 크기 또는 패딩 값에는 영향을 미치지 않습니다.
/// 버튼의 경우 버튼의 자식 주변의 간격에 영향을 줍니다.
VisualDensity get buttonDensity =>
    const VisualDensity(horizontal: -4, vertical: -4);

ButtonStyle get defaultButtontStyle {
  return ElevatedButton.styleFrom(
    /// 물보라가 튀지 않는 [InteractiveInkFeature] 입니다.
    /// [NoSplash.splashFactory]를 사용하여 [InkWell] 또는 [ButtonStyle]이 그린 기본 잉크 스플래시를 무효화합니다.
    /// 예를 들어, [ElevatedButton]에 적용하는 경우 탭할 때 [ElevatedButton]의 기본 잉크 스플래시인 [ripple] 잉크 스플래시를 그리지 않습니다:
    splashFactory: NoSplash.splashFactory,
    textStyle: AppTextStyle(
      fontSize: TextSize.lg,
      fontWeight: FontWeight.bold,
    ),

    /// 간단한 값이 주어지면 상승 버튼 [ButtonStyle]을 구성하는 정적 편의 메서드입니다.
    /// 비활성화된 고도는 매개변수 값과 동일하며, 버튼이 커서를 가리키거나 초점이 맞춰져 있을 때는 [elevation] + 2가 사용되고, 버튼을 눌렀을 때는 [elevation + 6]이 사용됩니다.
    /// 마찬가지로 [enabledMouseCursor] 및 [disabledMouseCursor] 매개 변수는 [ButtonStyle].mouseCursor를 구성하는 데 사용됩니다.
    /// 다른 모든 파라미터는 직접 사용되거나 모든 상태에 대해 단일 값을 가진 [MaterialStateProperty]를 생성하는 데 사용됩니다.
    /// 모든 파라미터의 기본값은 null이며, 기본적으로 이 메서드는 아무것도 재정의하지 않는 [ButtonStyle]을 반환합니다.
    elevation: 0,

    /// 감지된 제스처가 음향 및/또는 햅틱 피드백을 제공해야 하는지 여부입니다.
    /// 예를 들어 Android에서 피드백이 활성화된 경우 탭하면 딸깍 소리가 나고 길게 누르면 짧은 진동이 발생합니다.
    /// 일반적으로 컴포넌트 기본값은 true입니다.
    /// 특정 작업에 대한 플랫폼별 피드백을 제공하기 위한 [Feedback].
    enableFeedback: true,

    /// 기본적으로는 [MaterialState.pressed]는 머티리얼 디자인 사양에 따라 리플(잉크 스플래시)을 트리거합니다.
    /// [overlayColor]는 별도의 하이라이트가 현재 디자인 가이드에서 사용되지 않기 때문입니다.
    /// https://material.io/design/interaction/states.html#pressed
    backgroundColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.primaryDisabled;
      } else if (states.contains(MaterialState.pressed)) {
        return AppColors.primaryPressed;
      } else {
        return AppColors.primaryDefault;
      }
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusStyle.circleBorder25,
    ),

    /// [VisualDensity]는 사용자 인터페이스 컴포넌트의 시각적 밀도를 정의합니다.
    /// UI의 맥락에서 밀도(density)는 UI에 있는 컴포넌트의 수직 및 수평 "압축도"입니다.
    /// 플랫폼마다, 컴포넌트마다 다른 의미를 가지므로 단위는 없습니다.
    /// 머티리얼 디자인 사양에서 컴포넌트 시각적 밀도의 기본값은 세로 및 가로 모두 0입니다.
    /// 텍스트 크기, 아이콘 크기 또는 패딩 값에는 영향을 미치지 않습니다.
    /// 예를 들어 버튼의 경우 버튼의 자식 주변의 간격에 영향을 줍니다.
    ///  * [Material design guidance on density](https://material.io/design/layout/applying-density.html).
    visualDensity: buttonDensity,
    padding: EdgeInsets.zero,
  );
}

extension BaseButtonStyle on ButtonStyle {
  /// 버튼에 스플래시 이펙트를 제거하는 쉬운 방법
  ButtonStyle get noEffect => merge(defaultButtontStyle);
}
