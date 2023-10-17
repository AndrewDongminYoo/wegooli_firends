// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/subscribe_info_no_subscription_controller.dart';

class SubscribeInfoNoSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SubscribeInfoNoSubscriptionController.new);
  }
}
