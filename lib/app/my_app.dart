// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) {
        return MaterialApp.router(
          title: '위굴리 프렌즈',
          debugShowCheckedModeBanner: false,
          theme: theme,
          themeMode: ThemeMode.light,
          builder: (_, widget) => widget ?? const CircularProgressIndicator(),
          locale: const Locale('ko'),
          supportedLocales: Localized.supportedLocales,
          localizationsDelegates: Localized.localizationsDelegates,
          routerConfig: routerConfig,
        );
      },
    );
  }
}
