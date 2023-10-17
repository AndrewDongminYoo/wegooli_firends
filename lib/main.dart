// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

// 🌎 Project imports:
import '/core/utils/initial_bindings.dart';
import '/core/utils/logger.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';
import 'l10n/app_localizations.dart';

const Locale locale = Locale('ko');

GlobalKey<ScaffoldMessengerState> globalMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    runApp(const MyApp());
  });
}

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
          description: 'Unexpected Error 😱',
          showStacktrace: false,
        );
        return widget ?? const CircularProgressIndicator();
      },
      defaultTransition: Transition.cupertino,
      locale: locale,
      fallbackLocale: Get.deviceLocale,
      supportedLocales: Localized.supportedLocales,
      localizationsDelegates: Localized.localizationsDelegates,
      initialBinding: InitialBindings(),
      logWriterCallback: (String text, {bool isError = false}) =>
          isError ? logger.e(text) : logger.d(text),
      navigatorObservers: [rootObserver],
      initialRoute: initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
