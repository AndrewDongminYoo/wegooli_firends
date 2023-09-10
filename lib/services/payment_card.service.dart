// 📦 Package imports:
import 'package:get/get_connect/connect.dart' show GetConnect;

// 🌎 Project imports:
import '/lib.dart';

class PaymentCardService extends GetConnect {
  final client = wegooli.getPaymentCardControllerApi();
  Future<List<PaymentCardModel>> loadCreditCardList(User currentUser) async {
    if (currentUser.memberSeq != null) {
      final response =
          await client.selectPaymentCardList(memberSeq: currentUser.memberSeq);
      print('load payment card list... ${response.data}');
      return response.data ?? <PaymentCardModel>[];
    } else {
      return <PaymentCardModel>[];
    }
  }

  Future<String> registerCard(
    creditCardId,
    cardPassword,
    birthNumber6,
    expDateMonth,
    expDateYears,
  ) async {
    final newCard = PaymentCardRequest(
      cardNumber: creditCardId,
      password: cardPassword,
      rrn: birthNumber6,
      expirationMonth: expDateMonth,
      expirationYear: expDateYears,
    );

    final response =
        await client.insertPaymentCard(paymentCardRequest: newCard);
    print('response.data : ${response.data}');
    return response.data ?? 'false';
  }
}
