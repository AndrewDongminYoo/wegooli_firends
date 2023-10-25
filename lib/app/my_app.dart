// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import '/l10n/app_localizations.dart';
import '/routes/router_provider.dart';
import '/theme/theme_helper.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  /// 애플리케이션 전체에서 페이지 탐색 이벤트를 수신하는 데 사용할 수 있는 공유 [RouteObserver]
  static final rootObserver = RouteObserver<PageRoute>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FlutterNativeSplash.remove();
    final routerConfig = ref.read(routerProvider);
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
      routerConfig: routerConfig,
    );
  }
}
