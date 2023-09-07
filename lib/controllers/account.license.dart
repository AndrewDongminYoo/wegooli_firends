// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dio/src/response.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseController extends GetxController {
  final wegooli = WegooliFriends.client;
  static LicenseController get to => Get.isRegistered<LicenseController>()
      ? Get.find<LicenseController>()
      : Get.put(LicenseController());

  /// 운전면허증 일련번호
  TextEditingController licenseNumbers = TextEditingController();

  /// 운전면허증 만료일자
  TextEditingController expirationDate = TextEditingController();

  /// 운전면허증 최초발급년도
  TextEditingController firstIssueYear = TextEditingController();

  Rx<List<SelectionPopupModel>> licenseTypes = Rx([
    SelectionPopupModel(id: 1, title: '1종 보통면허'),
    SelectionPopupModel(id: 2, title: '2종 보통면허'),
    SelectionPopupModel(id: 3, title: '1종 대형면허'),
    SelectionPopupModel(id: 4, title: '2종 오토면허')
  ]);
  Rx<List<SelectionPopupModel>> licenseRegions = Rx([
    SelectionPopupModel(id: 11, title: '서울', value: '서울지방경찰청:[강남,도봉,서부,강서]'),
    SelectionPopupModel(id: 12, title: '부산', value: '부산지방경찰청:[부산북부,부산남부]'),
    SelectionPopupModel(id: 13, title: '경기남부', value: '경기남부지방경찰청:[안산,용인]'),
    SelectionPopupModel(id: 14, title: '강원', value: '강원지방경찰청:[춘천,원주,태백,강릉]'),
    SelectionPopupModel(id: 15, title: '충북', value: '충북지방경찰청:[청주,충주]'),
    SelectionPopupModel(id: 16, title: '충남', value: '충남지방경찰청:[예산]'),
    SelectionPopupModel(id: 17, title: '전북', value: '전북지방경찰청:[전북]'),
    SelectionPopupModel(id: 18, title: '전남', value: '전남지방경찰청:[전남,광양]'),
    SelectionPopupModel(id: 19, title: '경북', value: '경북지방경찰청:[문경,포항]'),
    SelectionPopupModel(id: 20, title: '경남', value: '경남지방경찰청:[마산]'),
    SelectionPopupModel(id: 21, title: '제주', value: '제주지방경찰청:[제주]'),
    SelectionPopupModel(id: 22, title: '대구', value: '대구지방경찰청:[대구]'),
    SelectionPopupModel(id: 23, title: '인천', value: '인천지방경찰청:[인천]'),
    SelectionPopupModel(id: 24, title: '광주', value: '광주지방경찰청:[없음]'),
    SelectionPopupModel(id: 25, title: '대전', value: '대전지방경찰청:[대전]'),
    SelectionPopupModel(id: 26, title: '울산', value: '울산지방경찰청:[울산]'),
    SelectionPopupModel(id: 28, title: '경기북부', value: '경기북부지방경찰청:[의정부]'),
    SelectionPopupModel(id: null, title: '세종', value: '세종지방경찰청:[없음]'),
  ]);
  Rx<List<SelectionPopupModel>> yearOfLicenseIssuance = Rx([
    SelectionPopupModel(id: 11, title: '11'),
    SelectionPopupModel(id: 12, title: '12'),
    SelectionPopupModel(id: 13, title: '13'),
    SelectionPopupModel(id: 14, title: '14'),
    SelectionPopupModel(id: 15, title: '15'),
    SelectionPopupModel(id: 16, title: '16'),
    SelectionPopupModel(id: 17, title: '17'),
    SelectionPopupModel(id: 18, title: '18'),
    SelectionPopupModel(id: 19, title: '19'),
    SelectionPopupModel(id: 20, title: '20'),
    SelectionPopupModel(id: 21, title: '21'),
    SelectionPopupModel(id: 22, title: '22'),
    SelectionPopupModel(id: 23, title: '23'),
    SelectionPopupModel(id: 24, title: '24'),
    SelectionPopupModel(id: 25, title: '25'),
    SelectionPopupModel(id: 26, title: '26'),
    SelectionPopupModel(id: 27, title: '27'),
    SelectionPopupModel(id: 28, title: '28')
  ]);

  bool _licenseInputSucceed = true;
  bool get licenseInputSucceed => _licenseInputSucceed;
  Future<int> inputLicenseInput() async {
    final api = wegooli.getLicenseControllerApi();
    final licenseRequest = LicenseRequest();
    Response<bool> valid = await api.isValidLicense(licenseRequest: licenseRequest);
    if (!valid.data!) {
      _licenseInputSucceed = false;
      return 0;
    }
    Response<int> success = await api.insertLicense(licenseRequest: licenseRequest);
    if (success.data != null) {
      _licenseInputSucceed = true;
      return success.data!;
    } else {
      _licenseInputSucceed = false;
      print(success.data);
      return -1;
    }
  }

  // api.insertLicense
  // api.selectLicense
  // api.selectLicenseList
  // api.selectServiceStop

  @override
  void onClose() {
    super.onClose();
    licenseNumbers.dispose();
    expirationDate.dispose();
    firstIssueYear.dispose();
  }
}
