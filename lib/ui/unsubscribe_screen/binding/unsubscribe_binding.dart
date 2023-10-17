// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/unsubscribe_controller.dart';

class UnsubscribeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(UnsubscribeController.new);
  }
}
