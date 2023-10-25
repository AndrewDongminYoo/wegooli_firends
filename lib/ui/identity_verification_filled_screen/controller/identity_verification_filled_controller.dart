// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class VerificationFilledController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static VerificationFilledController get to =>
      GetIt.I.isRegistered<VerificationFilledController>()
          ? GetIt.I.get<VerificationFilledController>()
          : GetIt.I.registerSingleton(VerificationFilledController());

  TextEditingController realname = TextEditingController();
  TextEditingController phonenum = TextEditingController();
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    realname.dispose();
    phonenum.dispose();
  }
}
