// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseController extends GetxController {
  final _service = LicenseCardService();
  // ignore: prefer_constructors_over_static_methods
  static LicenseController get to => Get.isRegistered<LicenseController>()
      ? Get.find<LicenseController>()
      : Get.put(LicenseController());

  // 운전면허증 일련번호
  TextEditingController licenseNumbers = TextEditingController();
  // 운전면허증 만료일자
  TextEditingController testExpiringDate = TextEditingController();
  // 운전면허증 발급일자
  TextEditingController licenseIssueDate = TextEditingController();

  // 운전면허증 최초발급년도
  String firstIssuedYear = ''; // 올해의 연도보다 높은 숫자일 수 없다.
  String licenseType = ''; // '1종 보통면허'|'2종 보통면허'|'1종 대형면허'|'2종 오토면허'
  String licenseRegion = '서울';

  bool get licenseInputSucceed =>
      licenseNumbers.text.isNotEmpty &&
      testExpiringDate.text.isNotEmpty &&
      licenseIssueDate.text.isNotEmpty &&
      firstIssuedYear.isNotEmpty &&
      licenseType.isNotEmpty &&
      isNumeric(licenseNumbers.text) &&
      isNumeric(testExpiringDate.text) &&
      isNumeric(licenseIssueDate.text) &&
      isNumeric(firstIssuedYear) &&
      licenseTypes.contains(licenseType) &&
      licenseRegionList.contains(licenseRegion);

  Future<int> registerDrivingLicense() async {
    return _service.registerDrivingLicense(
        licenseType,
        licenseRegion,
        firstIssuedYear,
        licenseNumbers.text,
        testExpiringDate.text,
        licenseIssueDate.text);
  }

  @override
  void onClose() {
    super.onClose();
    licenseNumbers.dispose();
    testExpiringDate.dispose();
    licenseIssueDate.dispose();
  }
}

List<String> licenseTypes = const [
  '1종 보통면허',
  '2종 보통면허',
  '1종 대형면허',
  '2종 오토면허',
];

List<String> licenseRegionList = const [
  '서울',
  '부산',
  '경기남부',
  '강원',
  '충북',
  '충남',
  '전북',
  '전남',
  '경북',
  '경남',
  '제주',
  '대구',
  '인천',
  '광주',
  '대전',
  '울산',
  '경기북부',
  '세종',
];
