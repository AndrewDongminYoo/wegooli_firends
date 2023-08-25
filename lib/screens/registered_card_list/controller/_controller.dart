// 📦 Package imports:
import 'package:get/get.dart';

/// A controller class for the RegisteredCreditCardListScreen.
///
/// This class manages the state of the RegisteredCreditCardListScreen, including the
/// current registeredCreditCardListModelObj
class RegisteredCreditCardListController extends GetxController {
  static RegisteredCreditCardListController get to =>
      Get.isRegistered<RegisteredCreditCardListController>()
          ? Get.find<RegisteredCreditCardListController>()
          : Get.put(RegisteredCreditCardListController());
  Rx<String> radioGroup = "".obs;
  Rx<String> radioGroup1 = "".obs;
}
