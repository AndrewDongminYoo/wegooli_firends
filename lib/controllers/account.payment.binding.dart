// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// A binding class for the RegisterCreditCardScreen.
///
/// This class ensures that the PaymentCardController is created when the
/// RegisterCreditCardScreen is first loaded.
class RegisterCreditCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentCardController());
  }
}
