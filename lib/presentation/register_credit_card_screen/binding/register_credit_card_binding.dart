import '../controller/register_credit_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterCreditCardScreen.
///
/// This class ensures that the RegisterCreditCardController is created when the
/// RegisterCreditCardScreen is first loaded.
class RegisterCreditCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterCreditCardController());
  }
}
