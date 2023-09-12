// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for PaymentCardControllerApi
void main() {
  final api = WegooliFriends().getPaymentCardControllerApi();

  group(PaymentCardControllerApi, () {
    //Future<String> deletePaymentCard(int seq) async
    test('test deletePaymentCard', () async {
      // TODO
    });

    //Future<String> insertPaymentCard(PaymentCardRequest paymentCardRequest) async
    test('test insertPaymentCard', () async {
      // TODO
    });

    //Future<PaymentCardModel> selectPaymentCard(int seq) async
    test('test selectPaymentCard', () async {
      // TODO
    });

    //Future<List<PaymentCardModel>> selectPaymentCardList({ int memberSeq, String cardNumber, String defaultYn, String delYn, String startCreatedAt, String endCreatedAt, String startUpdatedAt, String endUpdatedAt, String password, String rrn, String crn }) async
    test('test selectPaymentCardList', () async {
      // TODO
    });

    //Future<String> updatePaymentCard(int seq, PaymentCardRequest paymentCardRequest) async
    test('test updatePaymentCard', () async {
      // TODO
    });
  });
}
