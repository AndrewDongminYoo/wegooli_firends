// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/smart_key_another_is_currently_using_controller.dart';

class SmartKeyAnotherIsCurrentlyUsingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SmartKeyAnotherIsCurrentlyUsingController.new);
  }
}
