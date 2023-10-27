// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../model/phone.dart';
import '/core/utils/logger.dart';
import '/data/common/dropdown_data.dart';

class VerificationController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static VerificationController get to =>
      GetIt.I.isRegistered<VerificationController>()
          ? GetIt.I.get<VerificationController>()
          : GetIt.I.registerSingleton(VerificationController());

  final realname = TextEditingController();
  final birthday = TextEditingController();
  final socialId = TextEditingController();
  final phonenum = TextEditingController();
  DropdownData? telecom;
  final telecoms = Telecom().obs;
  final canSubmit = ValueNotifier(false);

  @override
  void onClose() {
    super.onClose();
    realname.dispose();
    birthday.dispose();
    phonenum.dispose();
  }

  void printFormFields() {
    logger.i('이메일: ${realname.text}\t'
        '비밀번호: ${phonenum.text.obscured}\t'
        '주민번호: ${socialId.text.obscured}\t'
        '법적성별: ${socialId.text.gender}\t'
        '생년월일: ${birthday.text}');
  }
}

extension on String? {
  String get gender => this!.startsWith(RegExp('[13]')) ? 'M' : 'F';

  /// 문자열을 마스킹 (password -> ********)
  String get obscured =>
      this == null ? '[empty]' : this!.replaceAll(RegExp('.'), '*');
}
