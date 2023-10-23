// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/unsubscribe_controller.dart';

class UnsubscribeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(UnsubscribeController.new);
  }
}
