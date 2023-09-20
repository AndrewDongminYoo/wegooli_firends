// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

enum RegionType { STRING, NUMBER }

class LicenseController extends GetxController {
  final _service = LicenseCardService();
  final userController = UserController.to;
  // ignore: prefer_constructors_over_static_methods
  static LicenseController get to => Get.isRegistered<LicenseController>()
      ? Get.find<LicenseController>()
      : Get.put(LicenseController());

  // 운전면허증 일련번호
  TextEditingController licenseNumbers = TextEditingController();
  // 운전면허증 만료일자
  TextEditingController expirationDate = TextEditingController();
  // 운전면허증 발급일자
  TextEditingController firstIssueDate = TextEditingController();

  // 운전면허증 최초발급년도
  SelectionPopupModel? issuedYear; // 올해의 연도보다 높은 숫자일 수 없다.
  SelectionPopupModel? licenseType; // '1종 보통면허'|'2종 보통면허'|'1종 대형면허'|'2종 오토면허'
  SelectionPopupModel? licenseRegion;

  bool get licenseInputSucceed =>
      licenseNumbers.text.isNotEmpty &&
      expirationDate.text.isNotEmpty &&
      firstIssueDate.text.isNotEmpty &&
      issuedYear != null &&
      licenseType != null &&
      isNumeric(licenseNumbers.text) &&
      isNumeric(expirationDate.text) &&
      isNumeric(firstIssueDate.text) &&
      isNumeric(issuedYear!.title) &&
      licenseTypes.contains(licenseType) &&
      issuedYears.contains(issuedYear) &&
      licenseRegions.contains(licenseRegion);

  @override
  void onClose() {
    super.onClose();
    licenseNumbers.dispose();
    expirationDate.dispose();
    firstIssueDate.dispose();
  }

  Future<dynamic> isValidLicense() async {
    final memberSeq = userController.currentUser.memberSeq;
    if (memberSeq == null || memberSeq == 0) {
      return false;
    }
    try {
      final words = licenseNumbers.text.split('-');
      final licenseYear = words[0];
      final licenseNum = words[1];
      return _service.isValidLicense(memberSeq, licenseType!.value,
          licenseRegion!.value, licenseYear, licenseNum);
    } on Exception catch (e) {
      printDioException('isValidLicense', e);
      return false;
    }
  }

  Future<int> registerDrivingLicense() async {
    return _service.registerDrivingLicense(
        userController.currentUser.memberSeq!,
        licenseType!.title,
        licenseRegion!.title,
        issuedYear!.title,
        licenseNumbers.text,
        expirationDate.text,
        firstIssueDate.text);
  }
}

final licenseTypes = [
  SelectionPopupModel(id: 1, title: '1종보통'),
  SelectionPopupModel(id: 2, title: '2종보통'),
  SelectionPopupModel(id: 3, title: '1종대형'),
  SelectionPopupModel(id: 4, title: '2종오토'),
];

final issuedYears = [
  SelectionPopupModel(id: 11, title: '11', value: DateTime(2011)),
  SelectionPopupModel(id: 12, title: '12', value: DateTime(2012)),
  SelectionPopupModel(id: 13, title: '13', value: DateTime(2013)),
  SelectionPopupModel(id: 14, title: '14', value: DateTime(2014)),
  SelectionPopupModel(id: 15, title: '15', value: DateTime(2015)),
  SelectionPopupModel(id: 16, title: '16', value: DateTime(2016)),
  SelectionPopupModel(id: 17, title: '17', value: DateTime(2017)),
  SelectionPopupModel(id: 18, title: '18', value: DateTime(2018)),
  SelectionPopupModel(id: 19, title: '19', value: DateTime(2019)),
  SelectionPopupModel(id: 20, title: '20', value: DateTime(2020)),
  SelectionPopupModel(id: 21, title: '21', value: DateTime(2021)),
  SelectionPopupModel(id: 22, title: '22', value: DateTime(2022)),
  SelectionPopupModel(id: 23, title: '23', value: DateTime(2023)),
  SelectionPopupModel(id: 24, title: '24', value: DateTime(2024)),
];

final licenseRegions = [
  SelectionPopupModel(
      id: 11, title: '서울', value: '11'), // '서울지방경찰청:[강남,도봉,서부,강서]'
  SelectionPopupModel(
      id: 12, title: '부산', value: '12'), // '부산지방경찰청:[부산북부,부산남부]'
  SelectionPopupModel(
      id: 13, title: '경기남부', value: '13'), // '경기남부지방경찰청:[안산,용인]'
  SelectionPopupModel(
      id: 14, title: '강원', value: '14'), // '강원지방경찰청:[춘천,원주,태백,강릉]'
  SelectionPopupModel(id: 15, title: '충북', value: '15'), // '충북지방경찰청:[청주,충주]'
  SelectionPopupModel(id: 16, title: '충남', value: '16'), // '충남지방경찰청:[예산]'
  SelectionPopupModel(id: 17, title: '전북', value: '17'), // '전북지방경찰청:[전북]'
  SelectionPopupModel(id: 18, title: '전남', value: '18'), // '전남지방경찰청:[전남,광양]'
  SelectionPopupModel(id: 19, title: '경북', value: '19'), // '경북지방경찰청:[문경,포항]'
  SelectionPopupModel(id: 20, title: '경남', value: '20'), // '경남지방경찰청:[마산]'
  SelectionPopupModel(id: 21, title: '제주', value: '21'), // '제주지방경찰청:[제주]'
  SelectionPopupModel(id: 22, title: '대구', value: '22'), // '대구지방경찰청:[대구]'
  SelectionPopupModel(id: 23, title: '인천', value: '23'), // '인천지방경찰청:[인천]'
  SelectionPopupModel(id: 24, title: '광주', value: '24'), // '광주지방경찰청:[없음]'
  SelectionPopupModel(id: 25, title: '대전', value: '25'), // '대전지방경찰청:[대전]'
  SelectionPopupModel(id: 26, title: '울산', value: '26'), // '울산지방경찰청:[울산]'
  SelectionPopupModel(id: 27, title: '세종', value: '27'), // '세종지방경찰청:[없음]'
  SelectionPopupModel(id: 28, title: '경기북부', value: '28'), // '경기북부지방경찰청:[의정부]'
];
