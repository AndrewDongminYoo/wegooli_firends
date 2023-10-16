// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/subscribe_info_controller.dart';

class SubscribeInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscribeInfoController());
  }
}
