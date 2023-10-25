// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class VerificationEmptyController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static VerificationEmptyController get to =>
      GetIt.I.isRegistered<VerificationEmptyController>()
          ? GetIt.I.get<VerificationEmptyController>()
          : GetIt.I.registerSingleton(VerificationEmptyController());

  TextEditingController realname = TextEditingController();
  TextEditingController phonenum = TextEditingController();
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    realname.dispose();
    phonenum.dispose();
  }

  void printFormFields() {
    print('이메일: $realname'
        '비밀번호: $phonenum');
  }
}
