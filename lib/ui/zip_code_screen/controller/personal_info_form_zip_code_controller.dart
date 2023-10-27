// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:kpostal/kpostal.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';

class PersonalInfoFormZipCodeController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static PersonalInfoFormZipCodeController get to =>
      GetIt.I.isRegistered<PersonalInfoFormZipCodeController>()
          ? GetIt.I.get<PersonalInfoFormZipCodeController>()
          : GetIt.I.registerSingleton(PersonalInfoFormZipCodeController());

  final postCode = TextEditingController();
  final address1 = TextEditingController();
  final address2 = TextEditingController();
  final usermail = TextEditingController();
  final password = TextEditingController();
  final passpass = TextEditingController();
  final nickname = TextEditingController();
  Rx<Kpostal>? zipCodeResult;
  final canSubmit = ValueNotifier(false);

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

  Future<void> acceptZipCode(BuildContext context) async {
    if (kDebugMode && kIsWeb) {
      postCode.value = const TextEditingValue(text: '06044');
      address1.value = const TextEditingValue(text: '서울특별시 강남구 학동로3길 9');
    } else {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => KpostalView(
            useLocalServer: true,
            localPort: 1024,
            // kakaoKey: '{Add your KAKAO DEVELOPERS JS KEY}',
            callback: (Kpostal result) {
              zipCodeResult?.value = result;
              postCode.text = result.postCode;
              address1.text = result.address;
              printZipcode(result);
            },
          ),
        ),
      );
    }
  }

  void printZipcode(Kpostal zipcode) {
    logger.i('우편번호: ${zipcode.postCode}\n'
        '입력 쿼리: ${zipcode.query}\n'
        '도로명 주소: ${zipcode.roadAddress}\n'
        '지번 주소: ${zipcode.jibunAddress}\n'
        '도로 이름: ${zipcode.roadname}\n'
        '건물 이름: ${zipcode.buildingName}\n'
        '위도: ${zipcode.latitude}\n'
        '경도: ${zipcode.longitude}');
  }

  void printFormFields() {
    logger.i(zipCodeResult?.value.toString());
    logger.i('우편번호: ${postCode.text}\n'
        '기본주소: ${address1.text}\n'
        '상세주소: ${address2.text}\n'
        '이메일: ${usermail.text}\n'
        '닉네임: ${nickname.text}\n'
        '비밀번호: ${password.text.obscured}\n'
        '비번확인: ${passpass.text.obscured}');
  }
}

extension on String? {
  /// 문자열을 마스킹 (password -> ********)
  String get obscured =>
      this == null ? '[empty]' : this!.replaceAll(RegExp('.'), '*');
}
