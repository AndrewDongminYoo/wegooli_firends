// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class SigninPageController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static SigninPageController get to =>
      GetIt.I.isRegistered<SigninPageController>()
          ? GetIt.I.get<SigninPageController>()
          : GetIt.I.registerSingleton(SigninPageController());

  TextEditingController loginName = TextEditingController();
  TextEditingController loginPass = TextEditingController();
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    loginName.dispose();
    loginPass.dispose();
  }

  void printAll() {
    print('사용자 이메일: $loginName, 사용자 비밀번호: $loginPass');
  }
}
