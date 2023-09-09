// 🎯 Dart imports:
import 'dart:async' show runZonedGuarded;

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timeago/timeago.dart' as timeago;

// 🌎 Project imports:
import 'core/app_export.dart';

final Locale locale = const Locale('ko');

// initialize app
Future<void> main() async {
  Get.put(EnvConfig());
  Get.find<EnvConfig>().initConfig();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
  await initializeDateFormatting();
  await dotenv.load(fileName: '.env');
  await setupFirebase();

  /// 필요하지 않을 때 [MethodChannelFirebaseCrashlytics]를 생성하거나 사용자가 앱을 지정하기 전에
  /// 기본 앱으로 인스턴스를 생성하지 않도록 [FirebaseCrashlyticsPlatform]의 인스턴스를 캐시하고 느리게 로드합니다.
  FirebaseCrashlytics crashlytics = FirebaseCrashlytics.instance;
  FlutterError.onError = crashlytics.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    crashlytics.recordError(error, stack, fatal: true);
    return true;
  };
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
    var initialRoute = AppRoutes.splashScreen;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: ThemeData.dark(useMaterial3: true),
        builder: _errorWidgetBuilder,
        defaultTransition: Transition.cupertino,
        navigatorKey: Get.key,
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

Widget _errorWidgetBuilder(dynamic context, Widget? child) {
  Widget error = const Text('알 수 없는 에러 발생');
  if (child is Scaffold || child is Navigator) {
    error = Scaffold(body: Center(child: error));
  }
  ErrorWidget.builder = ((details) => error);
  if (child != null) return child;
  throw ('에러 위젯이 래핑할 자식 위젯이 없습니다.');
}
