// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class CardRegisterController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static CardRegisterController get to =>
      GetIt.I.isRegistered<CardRegisterController>()
          ? GetIt.I.get<CardRegisterController>()
          : GetIt.I.registerSingleton(CardRegisterController());

  TextEditingController cardNum = TextEditingController();
  TextEditingController cardExp = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController cardPin = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    cardNum.dispose();
    cardExp.dispose();
    birthday.dispose();
    cardPin.dispose();
  }
}
