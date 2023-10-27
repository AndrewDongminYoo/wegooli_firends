// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';

class CardController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static CardController get to => GetIt.I.isRegistered<CardController>()
      ? GetIt.I.get<CardController>()
      : GetIt.I.registerSingleton(CardController());

  final cardNum = TextEditingController();
  final cardExp = TextEditingController();
  final birthday = TextEditingController();
  final cardPin = TextEditingController();
  final radioGroup = ''.obs;
  final radioGroup1 = ''.obs;
  final canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    cardNum.dispose();
    cardExp.dispose();
    birthday.dispose();
    cardPin.dispose();
  }

  void printFormFields() {
    logger.i('카드번호: ${cardNum.text}'
        '카드유효기간: ${cardExp.text}'
        '본인생년월일: ${birthday.text}'
        '카드비밀번호: ${cardPin.text}');
  }
}
