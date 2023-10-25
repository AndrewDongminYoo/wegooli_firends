// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

// 🌎 Project imports:
import '/app/app_state_notifier.dart';
import '/routes/app_parameters.dart';
import '/routes/transition_info.dart';
import '/ui/signin_page_screen/signin_page_screen.dart';

const kTransitionInfoKey = '__transition_info__';

class AppRoute {
  const AppRoute({
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, AppParameters) builder;
  final List<GoRoute> routes;

  GoRoute convertToRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: path,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.matchedLocation);
            return SigninPageScreen.routeName;
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = AppParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: page,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: page,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: page);
        },
        routes: routes,
      );
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra! as Map<String, dynamic> : {};
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}
