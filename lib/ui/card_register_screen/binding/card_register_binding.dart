// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/card_register_controller.dart';

class CardRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(CardRegisterController.new);
  }
}
