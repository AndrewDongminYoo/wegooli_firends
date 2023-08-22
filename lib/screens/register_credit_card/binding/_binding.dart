// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

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
