// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for AccountAgreementControllerApi
void main() {
  final instance = wegooli.accountAgreementApi;

  group(AccountAgreementControllerApi, () {
    //Future<String> deleteAccountAgreement(String classification, String accountId) async
    test('test deleteAccountAgreement', () async {
      // TODO
    });

    //Future<String> insertAccountAgreement(AccountAgreementRequest accountAgreementRequest) async
    test('test insertAccountAgreement', () async {
      // TODO
    });

    //Future<String> insertAccountAgreementList(List<AccountAgreementRequest> accountAgreementRequest) async
    test('test insertAccountAgreementList', () async {
      // TODO
    });

    //Future<AccountAgreementModel> selectAccountAgreement(String classification, String accountId) async
    test('test selectAccountAgreement', () async {
      // TODO
    });

    //Future<List<AccountAgreementModel>> selectAccountAgreementList({ String classification, String accountId, String agreeYn, String startCreatedAt, String endCreatedAt, String startUpdatedAt, String endUpdatedAt }) async
    test('test selectAccountAgreementList', () async {
      // TODO
    });

    //Future<String> updateAccountAgreement(AccountAgreementRequest accountAgreementRequest) async
    test('test updateAccountAgreement', () async {
      // TODO
    });
  });
}
