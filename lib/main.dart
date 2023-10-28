// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

// 🌎 Project imports:
import '/app/my_app.dart';
import '/core/network/network_info.dart';
import '/core/utils/app_storage.dart';
import '/data/client/api_client.dart';
import '/firebase_options.dart';

/// Firebase 로컬 에뮬레이터가 로컬에서 실행 중이어야 합니다.
/// See https://firebase.flutter.dev/docs/auth/start/#optional-prototype-and-test-with-firebase-local-emulator-suite
bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> setupDependencies() async {
  GetIt.I.registerSingleton(ApiClient());
  GetIt.I.registerSingleton(NetworkInfo(Connectivity()));
}

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await ScreenUtil.ensureScreenSize();
  final appStorage = AppStorage();
  await appStorage.initAppStorage();

  await dotenv.load();
  await setupDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initializeDateFormatting('ko');

  // 플러그인의 Google 로그인 기능은 아직 DART에서 초기 설정을 지원하지 않기 때문에 WEB가 아닌 플랫폼에서는 수동 설치를 사용하고 있습니다.
  // 관련 문제를 참조하십시오 : https://github.com/flutter/flutter/issues/96391
  // 앱과 인증을 저장하여 이름이 지정된 인스턴스로 테스트를보다 쉽게 테스트 할 수 있습니다.
  // firebase_options.dart 파일 생성 원할 시 `flutterfire configure` 실행
  app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  /// 지정된 [FirebaseApp]을 사용하여 인스턴스를 반환합니다.
  /// 지속성(persistence)은 웹에서만 사용할 수 있으며 다른 플랫폼에서는 지원되지 않습니다.
  auth = FirebaseAuth.instanceFor(app: app);

  /// 대화 상자 보고서 모드와 콘솔 핸들러로 구성을 디버그합니다.
  /// [DialogReportMode] 대화 상자가 표시되고 사용자가 이를 수락하면 콘솔에 오류가 표시됩니다.
  /// [SilentReportMode] 대화 상자가 표시되지 않고 콘솔에 오류가 표시됩니다.
  final debugOptions = Catcher2Options(
    SilentReportMode(),
    [
      ConsoleHandler(
        // 기기 관련 파라미터 출력
        enableDeviceParameters: false,
        // 앱 정보 파라미터 출력
        enableApplicationParameters: false,
        // 스택 트레이스 출력
        enableStackTrace: false,
        // 사용자 확인 없이 보고서 모드를 자동으로 확인해야 하는지 확인합니다.
        handleWhenRejected: true,
      ),
    ],
    localizationOptions: [
      // 로컬라이제이션 옵션을 명시적으로 입력하지 않아도 기기의 옵션을 읽어들일 수 있습니다.
      LocalizationOptions.buildDefaultKoreanOptions()
    ],
  );

  /// 구성을 릴리스합니다.
  /// 위와 동일하지만 사용자가 대화 상자를 수락하면 지원팀에 크래시를 포함한 이메일을 보내라는 메시지가 표시됩니다.
  final releaseOptions = Catcher2Options(
    DialogReportMode(),
    [
      EmailManualHandler(
        ['ydm2790@gmail.com'],
      )
    ],
  );

  /// 루트 위젯([MyApp])을 캐쳐 구성과 함께 전달합니다.
  Catcher2(
    rootWidget: ProviderScope(
      overrides: [
        appStorageProvider.overrideWithValue(appStorage),
      ],
      child: const MyApp(),
    ),
    debugConfig: debugOptions,
    releaseConfig: releaseOptions,
  );
}
