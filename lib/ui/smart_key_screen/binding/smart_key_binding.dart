// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/smart_key_controller.dart';

class SmartKeyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SmartKeyController.new);
  }
}
