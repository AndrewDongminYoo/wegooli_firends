// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/route_manager.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';

class ProgressDialogUtils {
  static bool isProgressVisible = false;

  static LottieGenImage customLottie = Assets.lotties.customLoader;

  /// 로티 애니메이션과 함께 진행률 대화 상자를 표시합니다.
  /// [isCancellable] 매개변수는 대화 영역 외부를 탭하여 진행률 대화 상자를 취소할 수 있는지 여부를 결정합니다.
  /// true로 설정하면 대화 상자를 취소할 수 있으며, 그렇지 않으면 취소할 수 없는 상태로 유지됩니다.진행률 대화 상자가 이미 표시된 경우 이 메서드는 아무 작업도 수행하지 않습니다.
  /// 대화 상자에 사용되는 로티 애니메이션은 [lottiePath] 변수로 지정된 파일에서 로드됩니다.
  /// 이 메서드는 Get 패키지를 사용하여 대화 상자를 표시합니다.
  static void showProgressDialog({bool isCancellable = false}) {
    if (!isProgressVisible) {
      Get.dialog(
        Center(
          child: customLottie.lottie(
            height: 250,
            width: 250,
          ),
        ),
      );
    }
    isProgressVisible = true;
  }

  /// 표시된 진행률 대화 상자를 숨깁니다.
  /// 진행률 대화 상자가 표시되면 이 함수는 [Get.back()]을 호출하여 대화 상자를 해제합니다.
  /// 대화 상자를 숨긴 후 [isProgressVisible] 플래그는 `false`로 설정됩니다.
  static void hideProgressDialog() {
    if (isProgressVisible) {
      Get.back();
    }
    isProgressVisible = false;
  }
}
