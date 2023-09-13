// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/lib.dart';

/// tests for PaymentControllerApi
void main() {
  final api = wegooli.paymentApi;

  group(PaymentControllerApi, () {
    //Future<String> cancelPayment(String paymentKey, CancelRequestModel cancelRequestModel) async
    test('test cancelPayment', () async {
      // TODO
    });

    //Future<String> createBillingKey(String accountId, BillingKeyRequestModel billingKeyRequestModel) async
    test('test createBillingKey', () async {
      // TODO
    });

    //Future<PaymentModel> getPayment(String paymentKey) async
    test('test getPayment', () async {
      // TODO
    });

    //Future<List<PaymentModel>> getPaymentList({ String paymentKey, String status, String lastTransactionKey, String orderId, String orderName, String startRequestedAt, String endRequestedAt }) async
    test('test getPaymentList', () async {
      // TODO
    });

    //Future<String> payByBillingKey(String billingKey, PayBillingRequestModel payBillingRequestModel) async
    test('test payByBillingKey', () async {
      // TODO
    });

    //Future<String> start() async
    test('test start', () async {
      // TODO
    });
  });
}
