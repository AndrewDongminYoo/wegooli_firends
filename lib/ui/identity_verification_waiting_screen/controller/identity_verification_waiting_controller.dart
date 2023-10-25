// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class VerificationWaitingController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static VerificationWaitingController get to =>
      GetIt.I.isRegistered<VerificationWaitingController>()
          ? GetIt.I.get<VerificationWaitingController>()
          : GetIt.I.registerSingleton(VerificationWaitingController());

  TextEditingController realname = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController socialId = TextEditingController();
  TextEditingController phonenum = TextEditingController();
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    realname.dispose();
    birthday.dispose();
    phonenum.dispose();
  }
}
