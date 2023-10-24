// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/route_manager.dart';

// 🌎 Project imports:
import '/app/initial_bindings.dart';
import '/core/utils/logger.dart';
import '/l10n/app_localizations.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';

const Locale locale = Locale('ko');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// 애플리케이션 전체에서 페이지 탐색 이벤트를 수신하는 데 사용할 수 있는 공유 [RouteObserver]
  static final rootObserver = RouteObserver<PageRoute>();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return GetMaterialApp(
      title: '위굴리 프렌즈',
      navigatorKey: Catcher2.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      builder: (BuildContext context, Widget? widget) {
        Catcher2.addDefaultErrorWidget(
          title: 'Error 👾',
          description: '알 수 없는 에러가 발생했습니다. 😱',
          showStacktrace: false,
        );
        return widget ?? const CircularProgressIndicator();
      },
      defaultTransition: Transition.cupertino,
      locale: locale,
      fallbackLocale: PlatformDispatcher.instance.locale,
      supportedLocales: Localized.supportedLocales,
      localizationsDelegates: Localized.localizationsDelegates,
      initialBinding: initialBinding,
      logWriterCallback: (String text, {bool isError = false}) =>
          isError ? logger.e(text) : logger.d(text),
      navigatorObservers: [rootObserver],
      initialRoute: '/app_navigation',
      getPages: getPages,
    );
  }
}
