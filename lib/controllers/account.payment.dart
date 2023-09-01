// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:wegooli_friends/core/app_export.dart';
import 'package:wegooli_friends/data/models/models.dart';

class PaymentCardController extends GetxController {
  static PaymentCardController get to =>
      Get.isRegistered<PaymentCardController>()
          ? Get.find<PaymentCardController>()
          : Get.put(PaymentCardController());

  final userController = UserController.to;
  final paymentCardControllerApi =
      WegooliFriends.client.getPaymentCardControllerApi();
  final String token = PrefUtils.storage.getData('token');

  late Map<String, dynamic> extra = <String, dynamic>{
    'secure': <Map<String, String>>[
      {
        'type': 'http',
        'scheme': 'bearer',
        'name': token,
      },
    ],
  };

  TextEditingController cardNumController = TextEditingController();
  TextEditingController expDateController = TextEditingController();
  TextEditingController firstsixdigitsoController = TextEditingController();
  TextEditingController grouptwentynineController = TextEditingController();
  Rx<String> selected = "".obs;

  RxList<PaymentCardModel> paymentCards = RxList.of([]);

  // RxList<PaymentCardModel> paymentCards = RxList.of([
  //   (PaymentCardModelBuilder()
  //         ..seq = 2
  //         ..delYn = 'N'
  //         // ..createdAt='2023-08-16 10:45:09.000Z'
  //         // ..updatedAt='2023-08-31 13:51:37.000Z'
  //         ..memberSeq = 23
  //         ..cardNumber = '4028571329721815'
  //         ..defaultYn = 'Y'
  //         ..password = '80'
  //         ..rrn = '930607')
  //       .build(),
  // ]);
  // RxList<PaymentCardModel> get paymentCards => _paymentCards.obs;

  @override
  void onInit() {
    super.onInit();
    // await retrieveCards();
  }

  @override
  void onClose() {
    super.onClose();
    cardNumController.dispose();
    expDateController.dispose();
    firstsixdigitsoController.dispose();
    grouptwentynineController.dispose();
  }

  Future<void> retrieveCards() async {
    print('retrieveCards');
    if (userController.currentUser.value.memberSeq != null) {
      final response = await paymentCardControllerApi.selectPaymentCardList(
          memberSeq: userController.currentUser.value.memberSeq!, extra: extra);
      print('response => ${response.data}');
      if (response.data != null) {
        print('AAA : ');
        paymentCards.value  = response.data!.toList();
        print('AAA : $paymentCards');
      }
    }
    paymentCards.refresh();
  }
}
