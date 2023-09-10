// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

// 🌎 Project imports:
import '/lib.dart';

/// true로 설정하면 앱에서 리캡차 대신 SMS MFA에 대한
/// 자동 인증을 사용할 수 있도록 알림 권한을 요청합니다.
const withSilentVerificationSMSMFA = true;

/// 현재 인증 세션의 모드([AuthMode.login] 또는 [AuthMode.register] 중 하나)입니다.
// ignore: public_member_api_docs
enum AuthMode { login, register }

/// Firebase를 사용한 다양한 로그인 흐름에 대한 엔트리포인트 예제입니다.
class LoginWithIdAndPassword extends StatefulWidget {
  const LoginWithIdAndPassword({super.key});

  @override
  State<LoginWithIdAndPassword> createState() => _LoginWithIdAndPasswordState();
}

class _LoginWithIdAndPasswordState extends State<LoginWithIdAndPassword> {
  UserController controller = UserController.to;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool get isAuthenticated => controller.isAuthenticated.value;
  @override
  void initState() {
    super.initState();

    final messaging = FirebaseMessaging.instance;
    if (withSilentVerificationSMSMFA && !kIsWeb) {
      /// 사용자에게 alert 권한을 요청하는 메시지를 표시합니다.
      ///
      ///  - iOS에서는 사용자에게 권한을 요청하는 대화 상자가 표시됩니다.
      ///  - macOS에서는 권한을 부여할지 묻는 alert이 표시됩니다.
      ///  - Android에서는 [NotificationSettings] 클래스가 반환되며, [NotificationSettings] 클래스의
      ///    [authorizationStatus]의 값과 함께 반환됩니다.
      ///    시스템 설정에서 앱의 alert이 활성화되어 있는지 또는 차단되어 있는지를 나타냅니다.
      ///  - 웹에서는 네이티브 브라우저 API를 사용하여 사용자에게 권한을 요청하는 팝업이 표시됩니다.
      messaging.requestPermission();
    }

    /// 애플리케이션이 종료된 상태에서 [RemoteMessage]([Notification] 포함)를 통해 열렸으면 반환되고, 그렇지 않으면 `null`이 됩니다.
    /// [RemoteMessage]가 소비되면, [RemoteMessage]는 제거되고 [getInitialMessage]에 대한 추가 호출은 `null`이 됩니다.
    /// 이는 특정 알림 상호 작용이 특정 목적(예: 채팅 메시지, 특정 화면 열기 등)으로 앱을 열어야 하는지 여부를 결정하는 데 사용해야 합니다.
    FirebaseMessaging.instance.getInitialMessage();
  }

  @override
  void dispose() {
    /// 아이디와 비밀번호는 로그인 페이지에서 벗어나면 초기화되어야 함.
    controller.username.dispose();
    controller.password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authMode = AuthMode.login;
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const FriendsByWegooli(),
                  EmailAddressFormField(
                      controller: controller, authMode: authMode),
                  PasswordFormField(controller: controller, authMode: authMode),
                  GoSignInButton(controller: controller),
                  Padding(
                      padding: getPadding(top: 57),
                      child: Text(
                        l10ns.youHaveNoAccount,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          letterSpacing: getHorizontalSize(0.03),
                        ),
                      )),
                  const GoSignUpButton(),
                ],
              ),
            )),
      )),
    );
  }

  Future<void> onSubmit() async {
    await controller.authorize();
    if (isAuthenticated) {
      controller.schedules(await controller.retrieveSchedules());
      await goSharedSchedule();
    } else {
      controller.username.clear();
      controller.password.clear();
    }
  }
}
