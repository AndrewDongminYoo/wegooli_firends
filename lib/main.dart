// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timeago/timeago.dart' as timeago;

// 🌎 Project imports:
import 'lib.dart';

/// Firebase 로컬 에뮬레이터가 로컬에서 실행 중이어야 합니다.
/// See https://firebase.flutter.dev/docs/auth/start/#optional-prototype-and-test-with-firebase-local-emulator-suite
bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;
final LoggerColorful console = LoggerColorful('WEGOOLI');
const Locale locale = Locale('ko');

// initialize app
Future<void> main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  console.colorLevel = kReleaseMode ? {} : console.colorLevel;
  await initializeDateFormatting();
  timeago.setLocaleMessages('ko', timeago.KoMessages());
  // 플러그인의 Google 로그인 기능은 아직 DART에서 초기 설정을 지원하지 않기 때문에 WEB가 아닌 플랫폼에서는 수동 설치를 사용하고 있습니다.
  // 관련 문제를 참조하십시오 : https://github.com/flutter/flutter/issues/96391
  // 앱과 인증을 저장하여 이름이 지정된 인스턴스로 테스트를보다 쉽게 테스트 할 수 있습니다.
  app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  /// 지정된 [FirebaseApp]을 사용하여 인스턴스를 반환합니다.
  /// 지속성(persistence)은 웹에서만 사용할 수 있으며 다른 플랫폼에서는 지원되지 않습니다.
  auth = FirebaseAuth.instanceFor(app: app);

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

  /// 루트 분리에서 처리되지 않은 오류가 발생할 때 호출되는 콜백입니다.
  /// 이 콜백은 오류를 처리한 경우 `true`를 반환해야 합니다. 그렇지 않으면 `false`를 반환해야 하며,
  /// 특정 플랫폼 임베딩에서 `Settings::unhandled_exception_callback`을 통해 구성한 대로 stderr에 인쇄하는 등의 폴백 메커니즘이 사용됩니다.
  /// 이 콜백을 호출한 후 VM 또는 프로세스가 종료되거나 응답하지 않을 수 있습니다.
  /// 콜백을 호출하기 전에 VM 또는 프로세스가 종료되거나 응답하지 않는 예외에 대해서는 콜백이 호출되지 않습니다.
  /// 이 콜백은 루트 격리의 하위 격리에서 발생하는 오류에 의해 직접 호출되지 않습니다.
  /// 새 격리를 생성하는 프로그램은 해당 격리에서 오류를 수신하고 루트 격리에 오류를 전달해야 합니다.
  ServicesBinding.instance.platformDispatcher.onError = (error, stack) {
    /// 필요하지 않을 때 [MethodChannelFirebaseCrashlytics]를 생성하거나 사용자가 앱을 지정하기 전에
    /// 기본 앱으로 인스턴스를 생성하지 않도록 [FirebaseCrashlyticsPlatform]의 인스턴스를 캐시하고 느리게 로드합니다.
    // ! FirebaseCrashlytics.instance.pluginConstants['isCrashlyticsCollectionEnabled'] = false;
    // * FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled('false');
    // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  FlutterNativeSplash.preserve(widgetsBinding: binding);
  runApp(const MyApp());
}

/// 애플리케이션 엔트리포인트.
/// [MaterialApp]을 반환합니다.
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static final routeObserver = RouteObserver<PageRoute>();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
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
            isError ? console.error(text) : console.info('[DEBUG] $text'),
        navigatorObservers: [MyApp.routeObserver],
        initialRoute: AppRoutes.idPwLogin,
        getPages: AppRoutes.pages);
  }
}

Widget _errorWidgetBuilder(dynamic context, Widget? child) {
  Widget error = CustomImageView(imagePath: Assets.brand.byWegooli.path);

  /// `child` 위젯이 `Scaffold` 또는 `Navigator`의 인스턴스인지 확인
  /// `error` 위젯을 가운데에 위치하는 Scaffold로 대체.
  /// * 위젯 트리 구축 중 발생하는 오류를 처리하고, 오류 발생 시 대체 UI를 제공.
  if (child is Scaffold || child is Navigator) {
    error = Scaffold(body: Center(child: error));
  }
  ErrorWidget.builder = (details) => error;
  if (child != null) {
    return child;
  } else {
    Get.showSnackbar(const GetSnackBar(
      backgroundColor: Colors.red,
      title: '글로벌 에러 핸들러 오류',
      message: '예상치 못한 오류가 발생했습니다.\n 개발자에게 알려주세요 🙈',
      duration: Duration(seconds: 1),
    ));
    throw CustomException('📵');
  }
}
