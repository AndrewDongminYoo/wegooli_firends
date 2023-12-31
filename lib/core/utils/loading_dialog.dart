// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

class LoadingDialog {
  static bool isProgressVisible = false;

  /// 로티 애니메이션과 함께 로딩 모달을 표시합니다.
  ///
  /// [isCancellable] 매개변수는 대화 영역 외부를 탭하여 로딩 모달을 취소할 수 있는지 여부를 결정합니다.
  /// `true`로 설정하면 모달을 취소할 수 있으며, 그렇지 않으면 취소할 수 없는 상태로 유지됩니다.
  ///
  /// 로딩 모달이 이미 표시된 경우 이 메서드는 아무 작업도 수행하지 않습니다.
  /// 모달에 사용되는 로티 애니메이션은 [wegooliLogo] 변수로 지정된 파일에서 로드됩니다.
  /// 이 메서드는 Get 패키지를 사용하여 모달을 표시합니다.
  static void showProgressDialog({bool isCancellable = false}) {
    if (!isProgressVisible) {
      Get.dialog(const Center(
          child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(
          Colors.white,
        ),
      )));
    }
    isProgressVisible = true;
  }

  /// 표시된 로딩 모달을 숨깁니다.
  /// 로딩 모달이 표시되면 이 함수는 `Get.back()`을 호출하여 모달을 해제합니다.
  /// 모달을 숨기면 [isProgressVisible] 플래그가 `false`로 설정됩니다.
  static void hideProgressDialog() {
    if (isProgressVisible) {
      Get.back();
    }
    isProgressVisible = false;
  }
}
