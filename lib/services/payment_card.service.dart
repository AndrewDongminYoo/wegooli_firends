// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class PaymentCardService extends GetConnect {
  @override
  GetHttpClient get httpClient => wegooli;
  final client = wegooli.paymentCardApi;
  Future<List<PaymentCardModel>> loadCreditCardList(User currentUser) async {
    final response =
        await client.selectPaymentCardList(memberSeq: currentUser.memberSeq);
    print('load payment card list... ${response.data}');
    return response.data ?? <PaymentCardModel>[];
  }

  Future<String> registerCard(
    String creditCardId,
    String cardPassword,
    String birthDayNums,
    String expDateMonth,
    String expDateYears,
  ) async {
    final newCard = PaymentCardRequest(
      cardNumber: creditCardId,
      password: cardPassword,
      rrn: birthDayNums,
      expirationMonth: expDateMonth,
      expirationYear: expDateYears,
    );

    final response =
        await client.insertPaymentCard(paymentCardRequest: newCard);
    print('response.data : ${response.data}');
    return response.data ?? 'false';
  }
}
