// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static BuildContext? get context => navigatorKey.currentContext;
  static NavigatorState? get navigator => navigatorKey.currentState;
  static ScaffoldMessengerState? get messenger => messengerKey.currentState;

  static Future<dynamic> toNamed(String routeName, {dynamic arguments}) async {
    return navigator?.pushNamed(routeName, arguments: arguments);
  }

  static dynamic back<T>({T? result}) {
    return navigator?.pop<T>(result);
  }

  static Future<dynamic> offNamedUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    return navigator?.pushNamedAndRemoveUntil(
        routeName, (route) => routePredicate,
        arguments: arguments);
  }

  static Future<dynamic> offNamed(String routeName, {dynamic arguments}) async {
    return navigator?.popAndPushNamed(routeName, arguments: arguments);
  }

  static void showSnackbar({String message = ''}) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.grey.withOpacity(0.2),
    );
    messenger!.showSnackBar(snackBar);
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
      from: context!,
      to: Navigator.of(
        context!,
        rootNavigator: useRootNavigator,
      ).context,
    );

    return Navigator.of(context!, rootNavigator: useRootNavigator)
        .push<T>(DialogRoute<T>(
      context: context!,
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
