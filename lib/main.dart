// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timeago/timeago.dart' as timeago;

// 🌎 Project imports:
import 'core/app_export.dart';

/// Firebase 로컬 에뮬레이터가 로컬에서 실행 중이어야 합니다.
/// See https://firebase.flutter.dev/docs/auth/start/#optional-prototype-and-test-with-firebase-local-emulator-suite
bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;
final Locale locale = const Locale('ko');

// initialize app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dotenv.load(fileName: '.env');
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
  await initializeDateFormatting();
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  // 플러그인의 Google 로그인 기능은 아직 DART에서 초기 설정을 지원하지 않기 때문에 WEB가 아닌 플랫폼에서는 수동 설치를 사용하고 있습니다.
  // 관련 문제를 참조하십시오 : https://github.com/flutter/flutter/issues/96391
  // 앱과 인증을 저장하여 이름이 지정된 인스턴스로 테스트를보다 쉽게 테스트 할 수 있습니다.
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// 지정된 [FirebaseApp]을 사용하여 인스턴스를 반환합니다.
  /// 지속성(persistence)은 웹에서만 사용할 수 있으며 다른 플랫폼에서는 지원되지 않습니다.
  if (kIsWeb) {
    // For example https://en.wikipedia.org/wiki/Web_storage#Local_and_session_storage
    auth = FirebaseAuth.instanceFor(app: app, persistence: Persistence.LOCAL);
  } else {
    auth = FirebaseAuth.instanceFor(app: app);
  }

  /// 필요하지 않을 때 [MethodChannelFirebaseCrashlytics]를 생성하거나 사용자가 앱을 지정하기 전에
  /// 기본 앱으로 인스턴스를 생성하지 않도록 [FirebaseCrashlyticsPlatform]의 인스턴스를 캐시하고 느리게 로드합니다.
  FirebaseCrashlytics crashlytics = FirebaseCrashlytics.instance;
  FlutterError.onError = (FlutterErrorDetails error) {
    crashlytics.recordFlutterFatalError(error);
  };

  /// 로컬에서 실행 중인 인증 에뮬레이터를 가리키도록 이 인스턴스를 변경합니다.
  ///
  /// 로컬 에뮬레이터의 [host]를 설정합니다(예: "localhost").
  /// 로컬 에뮬레이터의 [port]를 설정합니다(예: "9099") (인증 패키지의 경우 포트 9099가 기본값).
  ///
  /// 참고: 인증 메서드에 접근하기 전에 반드시 호출해야 합니다.
  /// 에뮬레이터 트래픽은 암호화되지 않으므로 프로덕션 자격 증명과 함께 사용하지 마세요.
  if (shouldUseFirebaseEmulator) {
    await auth.useAuthEmulator('localhost', 9099);
  }

  FirebaseMessaging.instance.getInitialMessage().then((value) => {
        if (value != null) {print(value.notification?.body)}
      });

  /// 애플리케이션이 종료된 상태에서 [RemoteMessage]([Notification] 포함)를 통해 열렸으면 반환되고, 그렇지 않으면 `null`이 됩니다.
  /// [RemoteMessage]가 소비되면, [RemoteMessage]는 제거되고 [getInitialMessage]에 대한 추가 호출은 `null`이 됩니다.
  /// 이는 특정 알림 상호 작용이 특정 목적(예: 채팅 메시지, 특정 화면 열기 등)으로 앱을 열어야 하는지 여부를 결정하는 데 사용해야 합니다.
  FirebaseMessaging.instance.getInitialMessage();

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    crashlytics.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const MyApp());
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
