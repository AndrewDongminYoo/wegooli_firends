// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/wegooli_friends.dart';

/// tests for LicenseControllerApi
void main() {
  final instance = WegooliFriends().getLicenseControllerApi();

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

    //Future<BuiltList<LicenseModel>> selectLicenseList(LicenseRequest request) async
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