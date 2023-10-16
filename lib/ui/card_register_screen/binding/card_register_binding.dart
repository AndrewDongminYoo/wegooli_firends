// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/card_register_controller.dart';

/// A binding class for the CardRegisterScreen.
///
/// This class ensures that the CardRegisterController is created when the
/// CardRegisterScreen is first loaded.
class CardRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardRegisterController());
  }
}
