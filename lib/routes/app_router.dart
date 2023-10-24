// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

// 🌎 Project imports:
import '/gen/colors.gen.dart';

class AppRouter {
  // ignore: type_annotate_public_apis
  static var key = GlobalKey<NavigatorState>();
  static BuildContext get _context => key.currentContext!;

  static void showSnackbar({String message = '', SnackType? type}) {
    final snackBar = SnackBar(
      /// awesome_snackbar_content의 효과를 극대화하하기 위한 설정
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: message,
        message: message,
        contentType: type.type,
      ),
    );

    ScaffoldMessenger.of(_context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static Future<T?> showDialog<T>({
    required Widget Function(BuildContext) builder,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    final themes = InheritedTheme.capture(
      from: _context,
      to: Navigator.of(
        _context,
        rootNavigator: useRootNavigator,
      ).context,
    );

    return Navigator.of(_context, rootNavigator: useRootNavigator)
        .push<T>(DialogRoute<T>(
      context: _context,
      builder: builder,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      settings: routeSettings,
      themes: themes,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior:
          traversalEdgeBehavior ?? TraversalEdgeBehavior.closedLoop,
    ));
  }
}

enum SnackType {
  help,
  failure,
  success,
  warning,
}

extension SnackBarType on SnackType? {
  ContentType get type {
    return switch (this) {
      SnackType.failure => ContentType('failure', AppColors.statusError),
      SnackType.success => ContentType('success', AppColors.statusPass),
      SnackType.warning => ContentType('warning', AppColors.statusWarn),
      _ => ContentType('help', AppColors.wegooli),
    };
  }
}
