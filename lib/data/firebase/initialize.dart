// 📦 Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import 'firebase_options.dart';

/// Firebase 로컬 에뮬레이터가 로컬에서 실행 중이어야 합니다.
/// See https://firebase.flutter.dev/docs/auth/start/#optional-prototype-and-test-with-firebase-local-emulator-suite
bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;

// Firebase Auth Emulator가 로컬로 실행 중이어야 합니다.
// 예: `melos run firebase:emulator`.
Future<void> setupFirebase() async {
  // 플러그인의 Google 로그인 기능은 아직 DART에서 초기 설정을 지원하지 않기 때문에 WEB가 아닌 플랫폼에서는 수동 설치를 사용하고 있습니다.
  // 관련 문제를 참조하십시오 : https://github.com/flutter/flutter/issues/96391
  // 앱과 인증을 저장하여 이름이 지정된 인스턴스로 테스트를보다 쉽게 테스트 할 수 있습니다.
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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

  /// 앱이 백그라운드에 있거나 종료될 때 호출되는 메시지 핸들러 함수를 설정합니다.
  ///
  /// 이 제공된 핸들러는 최상위 함수여야 하며 익명일 수 없으며 그렇지 않으면 [ArgumentError]가 throw됩니다.
  FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async {
     print('Handling a background message: ${message.messageId}');
  });
}
