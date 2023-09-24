// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

enum RegionType { STRING, NUMBER }

class LicenseController extends GetxController {
  final _service = LicenseCardService();
  // ignore: prefer_constructors_over_static_methods
  static LicenseController get to => Get.isRegistered<LicenseController>()
      ? Get.find<LicenseController>()
      : Get.put(LicenseController());

  // 운전면허증 일련번호
  String? licenseNumbers;
  // 운전면허증 만료일자
  String? expirationDate;
  // 운전면허증 발급일자
  String? firstIssueDate;

  // 운전면허증 최초발급년도
  DropdownData? issuedYear; // 올해의 연도보다 높은 숫자일 수 없다.
  DropdownData? licenseType; // '1종 보통면허'|'2종 보통면허'|'1종 대형면허'|'2종 오토면허'
  DropdownData? licenseRegion;

  bool licenseInputSucceed() {
    try {
      return licenseNumbers.isNotNullNorEmpty &&
          expirationDate.isNotNullNorEmpty &&
          firstIssueDate.isNotNullNorEmpty &&
          issuedYear != null &&
          licenseType != null &&
          isNumeric(licenseNumbers) &&
          isNumeric(expirationDate) &&
          isNumeric(firstIssueDate) &&
          isNumeric(issuedYear!.title) &&
          licenseTypes.contains(licenseType) &&
          issuedYears.contains(issuedYear) &&
          licenseRegions.contains(licenseRegion);
    } on Exception catch (e) {
      throw handleException('licenseInputSucceed', e);
    }
  }

  Future<dynamic> isValidLicense() async {
    final memberSeq = goolier.memberSeq;
    if (memberSeq == null || memberSeq == 0) {
      return false;
    }
    try {
      final words = licenseNumbers!.split('-');
      final licenseYear = words[0];
      final licenseNum = words[1];
      return _service.isValidLicense(memberSeq, licenseType!.value,
          licenseRegion!.value, licenseYear, licenseNum);
    } on Exception catch (e) {
      handleException('isValidLicense', e);
      return false;
    }
  }

  Future<int> registerDrivingLicense() async {
    return _service.registerDrivingLicense(
        goolier.memberSeq!,
        licenseType!.title,
        licenseRegion!.title,
        issuedYear!.title,
        licenseNumbers!,
        expirationDate!,
        firstIssueDate!);
  }
}

final licenseTypes = [
  DropdownData(id: 1, title: '1종보통'),
  DropdownData(id: 2, title: '2종보통'),
  DropdownData(id: 3, title: '1종대형'),
  DropdownData(id: 4, title: '2종오토'),
];

final issuedYears = [
  DropdownData(id: 11, title: '11', value: DateTime(2011)),
  DropdownData(id: 12, title: '12', value: DateTime(2012)),
  DropdownData(id: 13, title: '13', value: DateTime(2013)),
  DropdownData(id: 14, title: '14', value: DateTime(2014)),
  DropdownData(id: 15, title: '15', value: DateTime(2015)),
  DropdownData(id: 16, title: '16', value: DateTime(2016)),
  DropdownData(id: 17, title: '17', value: DateTime(2017)),
  DropdownData(id: 18, title: '18', value: DateTime(2018)),
  DropdownData(id: 19, title: '19', value: DateTime(2019)),
  DropdownData(id: 20, title: '20', value: DateTime(2020)),
  DropdownData(id: 21, title: '21', value: DateTime(2021)),
  DropdownData(id: 22, title: '22', value: DateTime(2022)),
  DropdownData(id: 23, title: '23', value: DateTime(2023)),
  DropdownData(id: 24, title: '24', value: DateTime(2024)),
];

final licenseRegions = [
  DropdownData(id: 11, title: '서울', value: '11'), // [강남,도봉,서부,강서]
  DropdownData(id: 12, title: '부산', value: '12'), // [부산북부,부산남부]
  DropdownData(id: 13, title: '경기남부', value: '13'), // [안산,용인]
  DropdownData(id: 14, title: '강원', value: '14'), // [춘천,원주,태백,강릉]
  DropdownData(id: 15, title: '충북', value: '15'), // [청주,충주]
  DropdownData(id: 16, title: '충남', value: '16'), // [예산]
  DropdownData(id: 17, title: '전북', value: '17'), // [전북]
  DropdownData(id: 18, title: '전남', value: '18'), // [전남,광양]
  DropdownData(id: 19, title: '경북', value: '19'), // [문경,포항]
  DropdownData(id: 20, title: '경남', value: '20'), // [마산]
  DropdownData(id: 21, title: '제주', value: '21'), // [제주]
  DropdownData(id: 22, title: '대구', value: '22'), // [대구]
  DropdownData(id: 23, title: '인천', value: '23'), // [인천]
  DropdownData(id: 24, title: '광주', value: '24'), // [없음]
  DropdownData(id: 25, title: '대전', value: '25'), // [대전]
  DropdownData(id: 26, title: '울산', value: '26'), // [울산]
  DropdownData(id: 27, title: '세종', value: '27'), // [없음]
  DropdownData(id: 28, title: '경기북부', value: '28'), // [의정부]
];
