// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the RegisteredCreditCardListScreen.
///
/// This class ensures that the RegisteredCreditCardListController is created when the
/// RegisteredCreditCardListScreen is first loaded.
class RegisteredCreditCardListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisteredCreditCardListController());
  }
}
