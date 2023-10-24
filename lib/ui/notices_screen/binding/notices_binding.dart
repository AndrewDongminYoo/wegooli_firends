// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/notices_controller.dart';

class NoticesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(NoticesController.new);
  }
}
