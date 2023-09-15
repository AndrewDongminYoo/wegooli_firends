// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

// 🌎 Project imports:
import '/lib.dart';

/// 현재 인증 세션의 모드([AuthMode.login] 또는 [AuthMode.register] 중 하나)입니다.
// ignore: public_member_api_docs
enum AuthMode { login, register }

/// Firebase를 사용한 다양한 로그인 흐름에 대한 엔트리포인트 예제입니다.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  UserController controller = UserController.to;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    final messaging = FirebaseMessaging.instance;

    /// 애플리케이션이 종료된 상태에서 [RemoteMessage]([Notification] 포함)를 통해 열렸으면 반환되고, 그렇지 않으면 `null`이 됩니다.
    /// [RemoteMessage]가 소비되면, [RemoteMessage]는 제거되고 [getInitialMessage]에 대한 추가 호출은 `null`이 됩니다.
    /// 이는 특정 알림 상호 작용이 특정 목적(예: 채팅 메시지, 특정 화면 열기 등)으로 앱을 열어야 하는지 여부를 결정하는 데 사용해야 합니다.
    messaging.getInitialMessage();
  }

  @override
  Widget build(BuildContext context) {
    const authMode = AuthMode.login;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Unfocused(
        child: Container(
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const FriendsByWegooli(),
                  UserMailFormField(controller: controller, authMode: authMode),
                  PasswordFormField(controller: controller, authMode: authMode),
                  AuthSignInButton(controller: controller),
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
      ),
    ));
  }
}
