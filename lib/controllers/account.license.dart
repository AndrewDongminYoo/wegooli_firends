// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

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
    SelectionPopupModel(id: 1, title: '강원'),
    SelectionPopupModel(id: 2, title: '경기'),
    SelectionPopupModel(id: 3, title: '경기남부'),
    SelectionPopupModel(id: 4, title: '경기북부'),
    SelectionPopupModel(id: 5, title: '경남'),
    SelectionPopupModel(id: 6, title: '경북'),
    SelectionPopupModel(id: 7, title: '광주'),
    SelectionPopupModel(id: 8, title: '대구'),
    SelectionPopupModel(id: 9, title: '대전'),
    SelectionPopupModel(id: 10, title: '부산'),
    SelectionPopupModel(id: 11, title: '서울'),
    SelectionPopupModel(id: 12, title: '울산'),
    SelectionPopupModel(id: 13, title: '인천'),
    SelectionPopupModel(id: 14, title: '전남'),
    SelectionPopupModel(id: 15, title: '전북'),
    SelectionPopupModel(id: 16, title: '제주'),
    SelectionPopupModel(id: 17, title: '충남'),
    SelectionPopupModel(id: 18, title: '충북')
  ]);
  Rx<List<SelectionPopupModel>> yearOfLicenseIssuance = Rx([
    SelectionPopupModel(id: 1, title: '11'),
    SelectionPopupModel(id: 2, title: '12'),
    SelectionPopupModel(id: 3, title: '13'),
    SelectionPopupModel(id: 4, title: '14'),
    SelectionPopupModel(id: 5, title: '15'),
    SelectionPopupModel(id: 6, title: '16'),
    SelectionPopupModel(id: 7, title: '17'),
    SelectionPopupModel(id: 8, title: '18'),
    SelectionPopupModel(id: 9, title: '19'),
    SelectionPopupModel(id: 10, title: '20'),
    SelectionPopupModel(id: 11, title: '21'),
    SelectionPopupModel(id: 12, title: '22'),
    SelectionPopupModel(id: 13, title: '23'),
    SelectionPopupModel(id: 14, title: '24'),
    SelectionPopupModel(id: 15, title: '25'),
    SelectionPopupModel(id: 16, title: '26'),
    SelectionPopupModel(id: 17, title: '27'),
    SelectionPopupModel(id: 18, title: '28')
  ]);

  bool _licenseInputSucceed = true;
  bool get licenseInputSucceed => _licenseInputSucceed;
  Future<int> inputLicenseInput() async {
    final api = wegooli.getLicenseControllerApi();
    final licenseRequest = (LicenseRequestBuilder()
          ..seq = 2
          ..delYn = 'N'
          ..memberSeq = 23
          ..koreanYn = 'Y'
          ..licenseClass = ''
          ..licenseArea = ''
          ..licenseYear = '21'
          ..licenseNum = ''
          ..expiredDate = ''
          ..issuedDate = ''
          ..signature = ''
          ..delYn = 'N'
          ..createdAt = ''
          ..updatedAt = ''
        )
        .build();
    var valid = await api.isValidLicense(licenseRequest: licenseRequest);
    if (!valid.data!) {
      _licenseInputSucceed = false;
      return 0;
    }
    var success = await api.insertLicense(licenseRequest: licenseRequest);
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
