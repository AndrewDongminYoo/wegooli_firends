import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../app_export.dart';

class ProgressDialogUtils {
  static bool isProgressVisible = false;

  static String lottiePath = 'assets/lottieFiles/custom_loader.json';

  /// Displays a progress dialog with a Lottie animation.
  ///
  /// The [isCancellable] parameter determines whether the progress dialog can be cancelled
  /// by tapping outside the dialog area. If set to true, the dialog can be cancelled;
  /// otherwise, it remains non-cancellable.
  ///
  /// If the progress dialog is already visible, this method does nothing.
  /// The Lottie animation used in the dialog is loaded from a file specified by the [lottiePath] variable.
  /// This method uses the `showDialog` function from the Flutter framework to display the dialog.
  static void showProgressDialog({isCancellable = false}) {
    if (!isProgressVisible &&
        NavigatorService.navigatorKey.currentState?.overlay?.context != null) {
      showDialog(
        barrierDismissible: isCancellable,
        context: NavigatorService.navigatorKey.currentState!.overlay!.context,
        builder: (BuildContext context) {
          return Center(
            child: Lottie.asset(
              lottiePath,
              height: 250,
              width: 250,
            ),
          );
        },
      );
    }
    isProgressVisible = true;
  }

  /// Hides the displayed progress dialog.
  /// If a progress dialog is visible, this function dismisses it by calling Navigator.pop
  /// with the overlay context obtained from the NavigatorService.navigatorKey.
  ///
  /// After hiding the dialog, the isProgressVisible flag is set to false.
  static void hideProgressDialog() {
    if (isProgressVisible) {
      Navigator.pop(
          NavigatorService.navigatorKey.currentState!.overlay!.context);
    }
    isProgressVisible = false;
  }
}
