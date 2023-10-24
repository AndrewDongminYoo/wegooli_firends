// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/app/app_state_notifier.dart';
import '/core/utils/list_extensions.dart';
import '/l10n/app_localizations.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';
import '/ui/home_page_screen/home_page_screen.dart';
import '/ui/signin_page_screen/signin_page_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// 애플리케이션 전체에서 페이지 탐색 이벤트를 수신하는 데 사용할 수 있는 공유 [RouteObserver]
  static final rootObserver = RouteObserver<PageRoute>();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp.router(
      title: '위굴리 프렌즈',
      debugShowCheckedModeBanner: false,
      theme: theme,
      themeMode: ThemeMode.light,
      builder: (BuildContext context, Widget? widget) {
        Catcher2.addDefaultErrorWidget(
          title: 'Error 👾',
          description: '알 수 없는 에러가 발생했습니다. 😱',
          showStacktrace: false,
        );
        return widget ?? const CircularProgressIndicator();
      },
      locale: const Locale('ko'),
      supportedLocales: Localized.supportedLocales,
      localizationsDelegates: Localized.localizationsDelegates,
      routerConfig: GoRouter(
        navigatorKey: Catcher2.navigatorKey,
        initialLocation: '/app_navigation',
        debugLogDiagnostics: true,
        refreshListenable: AppStateNotifier.I,
        errorBuilder: (context, state) => AppStateNotifier.I.loggedIn
            ? const HomePageScreen()
            : const SigninPageScreen(),
        routes: pages.mapTo((r) => r.convertToRoute(AppStateNotifier.I)),
      ),
    );
  }
}
