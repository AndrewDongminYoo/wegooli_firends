// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class LicenseCardService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final api = wegooli.licenseApi;

  Future<int> registerDrivingLicense(
    int memberSeq,
    String licenseClass,
    String licenseArea,
    String licenseYear,
    String licenseNum,
    String expiredDate,
    String issuedDate,
  ) async {
    try {
      final insetReq = InsertLicenseRequest(
        memberSeq: memberSeq,
        koreanYn: 'Y',
        licenseClass: licenseClass,
        licenseArea: licenseArea,
        licenseYear: licenseYear,
        licenseNum: licenseNum,
        expiredDate: expiredDate,
        issuedDate: issuedDate,
      );
      final success = await api.insertLicense(insertLicenseRequest: insetReq);
      if (success.data != null) {
        return success.data!;
      } else {
        throw CustomException('운전면허 번호 등록에 실패했습니다. 다시 시도해주세요.');
      }
    } on Exception catch (e) {
      printDioException('isValidLicense', e);
      return -1;
    }
  }

  Future<bool> isValidLicense(
    int memberSeq,
    String licenseClass,
    String licenseArea,
    String licenseYear,
    String licenseNum,
  ) async {
    try {
      final validReq = ValidLicenseRequest(
        memberSeq: memberSeq,
        licenseClass: licenseClass,
        licenseArea: licenseArea,
        licenseYear: licenseYear,
        licenseNum: licenseNum,
      );
      final valid = await api.isValidLicense(validLicenseRequest: validReq);
      if (valid.data != null) {
        return valid.data!;
      } else {
        throw CustomException('운전면허 번호 유효성 검사에 실패했습니다. 다시 시도해주세요.');
      }
    } on Exception catch (e) {
      printDioException('isValidLicense', e);
      return false;
    }
  }
}
