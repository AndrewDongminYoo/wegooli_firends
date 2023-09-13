// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for LicenseControllerApi
void main() {
  final api = wegooli.licenseApi;

  group(LicenseControllerApi, () {
    //Future<bool> deleteLicense(int seq) async
    test('test deleteLicense', () async {
      // TODO
    });

    //Future<bool> deleteLicenseByMemberSeq(int memberSeq) async
    test('test deleteLicenseByMemberSeq', () async {
      // TODO
    });

    //Future<int> insertLicense(LicenseRequest licenseRequest) async
    test('test insertLicense', () async {
      // TODO
    });

    //Future<LicenseModel> selectLicense(int seq) async
    test('test selectLicense', () async {
      // TODO
    });

    //Future<List<LicenseModel>> selectLicenseList(LicenseRequest request) async
    test('test selectLicenseList', () async {
      // TODO
    });

    //Future<bool> selectServiceStop() async
    test('test selectServiceStop', () async {
      // TODO
    });

    //Future<bool> updateLicense(int seq, LicenseRequest licenseRequest) async
    test('test updateLicense', () async {
      // TODO
    });
  });
}
