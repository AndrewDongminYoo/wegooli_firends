// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the LoginRegisterCreditCardScreen.
///
/// This class ensures that the LoginRegisterCreditCardController is created when the
/// LoginRegisterCreditCardScreen is first loaded.
class RegisterCreditCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterCreditCardController());
  }
}
