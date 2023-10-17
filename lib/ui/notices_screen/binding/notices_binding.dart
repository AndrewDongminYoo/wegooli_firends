// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_controller.dart';

class NoticesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(NoticesController.new);
  }
}
