// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the RegisteredCreditCardListScreen.
///
/// This class manages the state of the RegisteredCreditCardListScreen, including the
/// current registeredCreditCardListModelObj
class RegisteredCreditCardListController extends GetxController {
  Rx<RegisteredCreditCardListModel> registeredCreditCardListModelObj =
      RegisteredCreditCardListModel().obs;

  Rx<String> radioGroup = "".obs;
  Rx<String> radioGroup1 = "".obs;
}
