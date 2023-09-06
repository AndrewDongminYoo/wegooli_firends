// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

// 🌎 Project imports:
import 'core/app_export.dart';

/// Firebase 로컬 에뮬레이터가 로컬에서 실행 중이어야 합니다.
/// See https://firebase.flutter.dev/docs/auth/start/#optional-prototype-and-test-with-firebase-local-emulator-suite
bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;

// Firebase Auth Emulator가 로컬로 실행 중이어야 합니다.
// 예: `melos run firebase:emulator`.
Future<void> main() async {
  Get.put(EnvConfig());
  Get.find<EnvConfig>().initConfig();
  WidgetsFlutterBinding.ensureInitialized();
  // 플러그인의 Google 로그인 기능은 아직 DART에서 초기 설정을 지원하지 않기 때문에 WEB가 아닌 플랫폼에서는 수동 설치를 사용하고 있습니다.
  // 관련 문제를 참조하십시오 : https://github.com/flutter/flutter/issues/96391
  // 앱과 인증을 저장하여 이름이 지정된 인스턴스로 테스트를보다 쉽게 테스트 할 수 있습니다.
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);
  if (shouldUseFirebaseEmulator) {
    await auth.useAuthEmulator('localhost', 9099);
  }
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    initializeDateFormatting().then((_) => runApp(const MyApp()));
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
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: ThemeData.dark(useMaterial3: true),
        defaultTransition: Transition.fadeIn,
        locale: const Locale('ko'), // for setting localization strings
        fallbackLocale: const Locale('ko'),
        localizationsDelegates: Localized.localizationsDelegates,
        supportedLocales: Localized.supportedLocales,
        title: '위굴리 프렌즈',
        initialBinding: InitialBindings(),
        logWriterCallback: (String text, {bool isError = false}) =>
            isError ? Logger.log(text) : print('[DEBUG] $text'),
        navigatorObservers: [MyApp.routeObserver],
        initialRoute: AppRoutes.splashScreen,
        getPages: AppRoutes.pages);
  }
}
