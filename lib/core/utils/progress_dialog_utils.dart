// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class ProgressDialogUtils {
  static bool isProgressVisible = false;

  static String lottiePath = 'assets/lotties/custom_loader.json';

  /// Displays a progress dialog with a Lottie animation.
  ///
  /// The [isCancellable] parameter determines whether the progress dialog can be cancelled
  /// by tapping outside the dialog area. If set to true, the dialog can be cancelled;
  /// otherwise, it remains non-cancellable.
  ///
  /// If the progress dialog is already visible, this method does nothing.
  /// The Lottie animation used in the dialog is loaded from a file specified by the [lottiePath] variable.
  /// This method uses the Get package to display the dialog.
  static void showProgressDialog({bool isCancellable = false}) {
    if (!isProgressVisible) {
      Get.dialog(
        Center(
          child: Lottie.asset(
            lottiePath,
            height: 250,
            width: 250,
          ),
        ),
      );
    }
    isProgressVisible = true;
  }

  /// Hides the displayed progress dialog.
  /// If a progress dialog is visible, this function dismisses it by calling Get.back().
  /// After hiding the dialog, the isProgressVisible flag is set to false.
  static void hideProgressDialog() {
    if (isProgressVisible) {
      Get.back();
    }
    isProgressVisible = false;
  }
}
