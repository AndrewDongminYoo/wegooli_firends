// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LoadingDialog {
  static bool isProgressVisible = false;
  static String lottiePath = Assets.lotties.customLoader.path;

  /// 로티 애니메이션과 함께 로딩 모달을 표시합니다.
  ///
  /// [isCancellable] 매개변수는 대화 영역 외부를 탭하여 로딩 모달을 취소할 수 있는지 여부를 결정합니다.
  /// `true`로 설정하면 모달을 취소할 수 있으며, 그렇지 않으면 취소할 수 없는 상태로 유지됩니다.
  ///
  /// 로딩 모달이 이미 표시된 경우 이 메서드는 아무 작업도 수행하지 않습니다.
  /// 모달에 사용되는 로티 애니메이션은 [lottiePath] 변수로 지정된 파일에서 로드됩니다.
  /// 이 메서드는 Get 패키지를 사용하여 모달을 표시합니다.
  static void showProgressDialog({isCancellable = false}) {
    if (!isProgressVisible) {
      Get.dialog(
          Center(child: Lottie.asset(lottiePath, height: 250, width: 250)));
    }
    isProgressVisible = true;
  }

  /// 표시된 로딩 모달을 숨깁니다.
  /// 로딩 모달이 표시되면 이 함수는 `Get.back()`을 호출하여 모달을 해제합니다.
  /// 모달을 숨기면 [isProgressVisible] 플래그가 `false`로 설정됩니다.
  static void hideProgressDialog() {
    if (isProgressVisible) {
      goBack();
    }
    isProgressVisible = false;
  }
}
