// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/subscribe_info_controller.dart';

class SubscribeInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SubscribeInfoController.new);
  }
}
