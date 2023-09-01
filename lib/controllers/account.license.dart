// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class LicenseController extends GetxController {
  static LicenseController get to => Get.isRegistered<LicenseController>()
      ? Get.find<LicenseController>()
      : Get.put(LicenseController());
  TextEditingController frontNumberController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController backNumberController = TextEditingController();

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: '1종 보통면허'),
    SelectionPopupModel(id: 2, title: '2종 보통면허'),
    SelectionPopupModel(id: 3, title: '1종 대형면허'),
    SelectionPopupModel(id: 4, title: '2종 오토면허')
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
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

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
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

  final api = WegooliFriends.client.getLicenseControllerApi();
  bool get licenseInputSucceed => true;
  // api.insertLicense
  // api.selectLicense
  // api.selectLicenseList
  // api.selectServiceStop

  @override
  void onClose() {
    super.onClose();
    frontNumberController.dispose();
    expDateController.dispose();
    backNumberController.dispose();
  }
}
