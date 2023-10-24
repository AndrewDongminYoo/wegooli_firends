// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/data/custom/user.model.dart';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  // ignore: prefer_constructors_over_static_methods
  static AppStateNotifier get I {
    _instance ??= AppStateNotifier._();
    return _instance!;
  }

  User? initialUser;
  User? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// 로그인 또는 로그아웃 시 앱을 새로 고치고 다시 빌드할지 여부를 결정합니다.
  /// 앱을 시작하거나 예기치 않게 로그아웃할 때 유용합니다.
  /// 그러나 로그인/로그아웃한 후 탐색하거나 다른 작업을 수행하려는 경우에는 이 옵션을 꺼야 합니다.
  /// 그렇지 않으면 새로 고침이 트리거되어 작업이 중단됩니다.
  bool notifyOnAuthChange = true;

  bool get loading => showSplashImage;
  bool get loggedIn => user != null;
  bool get initiallyLoggedIn => initialUser != null;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  void update(User newUser) {
    final shouldUpdate = user?.id == null || user?.id != newUser.id;
    initialUser ??= newUser;
    user = newUser;

    /// 명시적으로 달리 표시하지 않는 한 인증 변경 시 앱을 새로 고칩니다.
    /// 사용자가 변경되지 않는 한 업데이트할 필요가 없습니다.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }

    /// 다시 한 번 알림에 인증 변경 시 업데이트가 필요한 것으로 표시합니다(로그인/아웃 이벤트를 포착하기 위해).
    notifyOnAuthChange = true;
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}
