// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for AccountAgreementControllerApi
void main() {
  final _dio = Dio();
  final api = WegooliFriends(dio: _dio).getAccountAgreementControllerApi();

  group(AccountAgreementControllerApi, () {
    //Future<String> deleteAccountAgreement(String classification, String accountId) async
    test('test deleteAccountAgreement', () async {
      // Arrange
      const classification = 'classification';
      const accountId = 'accountId';

      // Act
      await api.deleteAccountAgreement(
          classification: classification, accountId: accountId);

      // Assert
      expect(dio.requests.first.path,
          '/account/agreement/$classification/$accountId');
    });

    test('deleteAccountAgreement throws error', () async {
      // Arrange
      dio.response =
          Response(statusCode: 500, requestOptions: RequestOptions());

      // Act & Assert
      expect(
        api.deleteAccountAgreement(classification: '', accountId: ''),
        throwsA(isA<DioException>()),
      );
    });

    //Future<String> insertAccountAgreement(AccountAgreementRequest accountAgreementRequest) async
    test('test insertAccountAgreement', () async {
      // TODO
    });

    //Future<AccountAgreementModel> selectAccountAgreement(String classification, String accountId) async
    test('test selectAccountAgreement', () async {
      // TODO
    });

    //Future<BuiltList<AccountAgreementModel>> selectAccountAgreementList({ String classification, String accountId, String agreeYn, String startCreatedAt, String endCreatedAt, String startUpdatedAt, String endUpdatedAt }) async
    test('test selectAccountAgreementList', () async {
      // TODO
    });

    //Future<String> updateAccountAgreement(AccountAgreementRequest accountAgreementRequest) async
    test('test updateAccountAgreement', () async {
      // TODO
    });
  });
}
