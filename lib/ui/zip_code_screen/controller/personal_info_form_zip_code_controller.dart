// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';

class PersonalInfoFormZipCodeController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static PersonalInfoFormZipCodeController get to =>
      GetIt.I.isRegistered<PersonalInfoFormZipCodeController>()
          ? GetIt.I.get<PersonalInfoFormZipCodeController>()
          : GetIt.I.registerSingleton(PersonalInfoFormZipCodeController());

  TextEditingController postCode = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController usermail = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passpass = TextEditingController();
  TextEditingController nickname = TextEditingController();
  final ValueNotifier<bool> canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    postCode.dispose();
    address1.dispose();
    address2.dispose();
    usermail.dispose();
    password.dispose();
    passpass.dispose();
    nickname.dispose();
  }

  void printFormFields() {
    logger.i('우편번호: ${postCode.text}'
        '기본주소: ${address1.text}'
        '상세주소: ${address2.text}'
        '이메일: ${usermail.text}'
        '닉네임: ${nickname.text}'
        '비밀번호: ${password.text.obscured}'
        '비번확인: ${passpass.text.obscured}');
  }
}

extension on String? {
  /// 문자열을 마스킹 (password -> ********)
  String get obscured =>
      this == null ? '[empty]' : this!.replaceAll(RegExp('.'), '*');
}
