// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseCardService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.licenseApi;

  Future<int> registerDrivingLicense(
    String licenseClass,
    String licenseArea,
    String firstIssueYear,
    String licenseNumbers,
    String expirationDate,
    String issuedDate,
  ) async {
    final validReq = ValidLicenseRequest(
      memberSeq: 0,
      licenseClass: licenseClass,
      licenseArea: licenseArea,
      licenseYear: firstIssueYear,
      licenseNum: licenseNumbers,
    );
    final insetReq = InsertLicenseRequest(
      memberSeq: 0,
      koreanYn: 'Y',
      licenseClass: licenseClass,
      licenseArea: licenseArea,
      licenseYear: firstIssueYear,
      licenseNum: licenseNumbers,
      expiredDate: expirationDate,
      issuedDate: issuedDate,
    );
    final valid = await api.isValidLicense(validLicenseRequest: validReq);
    if (!valid.data!) {
      print('올바른 운전면허 번호가 아닙니다. 운전면허 번호를 확인하세요.');
      return 0;
    }
    final success = await api.insertLicense(insertLicenseRequest: insetReq);
    if (success.data != null) {
      print('운전면허 번호 등록에 성공했습니다. 회원가입 절차를 계속하세요.');
      return success.data!;
    } else {
      print('운전면허 번호 등록에 실패했습니다. 다시 시도해주세요.');
      return -1;
    }
  }
}
