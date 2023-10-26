// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class CardController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static CardController get to => GetIt.I.isRegistered<CardController>()
      ? GetIt.I.get<CardController>()
      : GetIt.I.registerSingleton(CardController());

  TextEditingController cardNum = TextEditingController();
  TextEditingController cardExp = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController cardPin = TextEditingController();
  Rx<String> radioGroup = ''.obs;
  Rx<String> radioGroup1 = ''.obs;
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    cardNum.dispose();
    cardExp.dispose();
    birthday.dispose();
    cardPin.dispose();
  }

  void printFormFields() {
    print('카드번호: $cardNum'
        '카드유효기간: $cardExp'
        '본인생년월일: $birthday'
        '카드비밀번호: $cardPin');
  }
}
