// 🎯 Dart imports:
import 'dart:async' show runZonedGuarded;

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timeago/timeago.dart' as timeago;

// 🌎 Project imports:
import 'core/app_export.dart';
import '/data/firebase/initialize.dart';

late final Locale locale;

// initialize app
Future<void> main() async {
  Get.put(EnvConfig());
  Get.find<EnvConfig>().initConfig();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
  await initializeDateFormatting();
  await dotenv.load(fileName: '.env');
  FlutterError.onError = crashlytics.recordFlutterFatalError;
  timeago.setLocaleMessages('ko', timeago.KoMessages());

  runZonedGuarded(() {
    runApp(const MyApp());
  }, (Object error, StackTrace trace) {
    FlutterErrorDetails detail =
        FlutterErrorDetails(stack: trace, exception: error);
    crashlytics.recordFlutterFatalError(detail);
  });
}

/// 애플리케이션의 진입 점.
///
/// [MaterialApp]을 반환합니다.
class MyApp extends StatelessWidget {
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    locale = const Locale('ko');
    var initialRoute = AppRoutes.splashScreen;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: ThemeData.dark(useMaterial3: true),
        defaultTransition: Transition.fadeIn,
        locale: locale, // for setting localization strings
        fallbackLocale: Get.deviceLocale,
        localizationsDelegates: Localized.localizationsDelegates,
        supportedLocales: Localized.supportedLocales,
        title: '위굴리 프렌즈',
        initialBinding: InitialBindings(),
        logWriterCallback: (String text, {bool isError = false}) =>
            isError ? Logger.log(text) : print('[DEBUG] $text'),
        navigatorObservers: [MyApp.routeObserver],
        initialRoute: initialRoute,
        getPages: AppRoutes.pages);
  }
}
